package org.apache.http.pool;

import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@ThreadSafe
public abstract class AbstractConnPool<T, C, E extends PoolEntry<T, C>>
  implements ConnPool<T, E>, ConnPoolControl<T>
{
  private final LinkedList<E> available;
  private final ConnFactory<T, C> connFactory;
  private volatile int defaultMaxPerRoute;
  private volatile boolean isShutDown;
  private final Set<E> leased;
  private final Lock lock;
  private final Map<T, Integer> maxPerRoute;
  private volatile int maxTotal;
  private final LinkedList<PoolEntryFuture<E>> pending;
  private final Map<T, RouteSpecificPool<T, C, E>> routeToPool;
  private volatile int validateAfterInactivity;
  
  public AbstractConnPool(ConnFactory<T, C> paramConnFactory, int paramInt1, int paramInt2)
  {
    this.connFactory = ((ConnFactory)Args.notNull(paramConnFactory, "Connection factory"));
    this.defaultMaxPerRoute = Args.positive(paramInt1, "Max per route value");
    this.maxTotal = Args.positive(paramInt2, "Max total value");
    this.lock = new ReentrantLock();
    this.routeToPool = new HashMap();
    this.leased = new HashSet();
    this.available = new LinkedList();
    this.pending = new LinkedList();
    this.maxPerRoute = new HashMap();
  }
  
  private int getMax(T paramT)
  {
    paramT = (Integer)this.maxPerRoute.get(paramT);
    if (paramT != null) {
      return paramT.intValue();
    }
    return this.defaultMaxPerRoute;
  }
  
  private RouteSpecificPool<T, C, E> getPool(final T paramT)
  {
    RouteSpecificPool localRouteSpecificPool = (RouteSpecificPool)this.routeToPool.get(paramT);
    Object localObject = localRouteSpecificPool;
    if (localRouteSpecificPool == null)
    {
      localObject = new RouteSpecificPool(paramT)
      {
        protected E createEntry(C paramAnonymousC)
        {
          return AbstractConnPool.this.createEntry(paramT, paramAnonymousC);
        }
      };
      this.routeToPool.put(paramT, localObject);
    }
    return (RouteSpecificPool<T, C, E>)localObject;
  }
  
  private E getPoolEntryBlocking(T paramT, Object paramObject, long paramLong, TimeUnit paramTimeUnit, PoolEntryFuture<E> paramPoolEntryFuture)
  {
    Date localDate = null;
    if (paramLong > 0L) {
      localDate = new Date(System.currentTimeMillis() + paramTimeUnit.toMillis(paramLong));
    }
    this.lock.lock();
    for (;;)
    {
      RouteSpecificPool localRouteSpecificPool;
      boolean bool;
      PoolEntry localPoolEntry;
      try
      {
        localRouteSpecificPool = getPool(paramT);
        paramTimeUnit = null;
        if (paramTimeUnit != null) {
          break label520;
        }
        if (!this.isShutDown)
        {
          bool = true;
          Asserts.check(bool, "Connection pool shut down");
          localPoolEntry = localRouteSpecificPool.getFree(paramObject);
          if (localPoolEntry == null) {
            break label187;
          }
          if (!localPoolEntry.isExpired(System.currentTimeMillis())) {
            break label145;
          }
          localPoolEntry.close();
          if (!localPoolEntry.isClosed()) {
            break label187;
          }
          this.available.remove(localPoolEntry);
          localRouteSpecificPool.free(localPoolEntry, false);
          continue;
        }
        bool = false;
      }
      finally
      {
        this.lock.unlock();
      }
      continue;
      label145:
      if ((this.validateAfterInactivity <= 0) || (localPoolEntry.getUpdated() + this.validateAfterInactivity > System.currentTimeMillis()) || (validate(localPoolEntry))) {
        continue;
      }
      localPoolEntry.close();
      continue;
      label187:
      if (localPoolEntry != null)
      {
        this.available.remove(localPoolEntry);
        this.leased.add(localPoolEntry);
        onReuse(localPoolEntry);
        this.lock.unlock();
        return localPoolEntry;
      }
      int j = getMax(paramT);
      int k = Math.max(0, localRouteSpecificPool.getAllocatedCount() + 1 - j);
      int i;
      if (k > 0)
      {
        i = 0;
        while (i < k)
        {
          paramTimeUnit = localRouteSpecificPool.getLastUsed();
          if (paramTimeUnit == null) {
            break;
          }
          paramTimeUnit.close();
          this.available.remove(paramTimeUnit);
          localRouteSpecificPool.remove(paramTimeUnit);
          i += 1;
        }
      }
      if (localRouteSpecificPool.getAllocatedCount() < j)
      {
        i = this.leased.size();
        i = Math.max(this.maxTotal - i, 0);
        if (i > 0)
        {
          if ((this.available.size() > i - 1) && (!this.available.isEmpty()))
          {
            paramObject = (PoolEntry)this.available.removeLast();
            ((PoolEntry)paramObject).close();
            getPool(((PoolEntry)paramObject).getRoute()).remove((PoolEntry)paramObject);
          }
          paramT = localRouteSpecificPool.add(this.connFactory.create(paramT));
          this.leased.add(paramT);
          this.lock.unlock();
          return paramT;
        }
      }
      try
      {
        localRouteSpecificPool.queue(paramPoolEntryFuture);
        this.pending.add(paramPoolEntryFuture);
        bool = paramPoolEntryFuture.await(localDate);
        localRouteSpecificPool.unqueue(paramPoolEntryFuture);
        this.pending.remove(paramPoolEntryFuture);
        paramTimeUnit = localPoolEntry;
        if (bool) {
          continue;
        }
        paramTimeUnit = localPoolEntry;
        if (localDate == null) {
          continue;
        }
        paramTimeUnit = localPoolEntry;
        if (localDate.getTime() > System.currentTimeMillis()) {
          continue;
        }
        label520:
        throw new TimeoutException("Timeout waiting for connection");
      }
      finally
      {
        localRouteSpecificPool.unqueue(paramPoolEntryFuture);
        this.pending.remove(paramPoolEntryFuture);
      }
    }
  }
  
  private void purgePoolMap()
  {
    Iterator localIterator = this.routeToPool.entrySet().iterator();
    while (localIterator.hasNext())
    {
      RouteSpecificPool localRouteSpecificPool = (RouteSpecificPool)((Map.Entry)localIterator.next()).getValue();
      int i = localRouteSpecificPool.getPendingCount();
      if (localRouteSpecificPool.getAllocatedCount() + i == 0) {
        localIterator.remove();
      }
    }
  }
  
  public void closeExpired()
  {
    enumAvailable(new PoolEntryCallback()
    {
      public void process(PoolEntry<T, C> paramAnonymousPoolEntry)
      {
        if (paramAnonymousPoolEntry.isExpired(this.val$now)) {
          paramAnonymousPoolEntry.close();
        }
      }
    });
  }
  
  public void closeIdle(long paramLong, TimeUnit paramTimeUnit)
  {
    long l = 0L;
    Args.notNull(paramTimeUnit, "Time unit");
    paramLong = paramTimeUnit.toMillis(paramLong);
    if (paramLong < 0L) {
      paramLong = l;
    }
    for (;;)
    {
      enumAvailable(new PoolEntryCallback()
      {
        public void process(PoolEntry<T, C> paramAnonymousPoolEntry)
        {
          if (paramAnonymousPoolEntry.getUpdated() <= this.val$deadline) {
            paramAnonymousPoolEntry.close();
          }
        }
      });
      return;
    }
  }
  
  public abstract E createEntry(T paramT, C paramC);
  
  protected void enumAvailable(PoolEntryCallback<T, C> paramPoolEntryCallback)
  {
    this.lock.lock();
    try
    {
      Iterator localIterator = this.available.iterator();
      while (localIterator.hasNext())
      {
        PoolEntry localPoolEntry = (PoolEntry)localIterator.next();
        paramPoolEntryCallback.process(localPoolEntry);
        if (localPoolEntry.isClosed())
        {
          getPool(localPoolEntry.getRoute()).remove(localPoolEntry);
          localIterator.remove();
        }
      }
      purgePoolMap();
    }
    finally
    {
      this.lock.unlock();
    }
    this.lock.unlock();
  }
  
  protected void enumLeased(PoolEntryCallback<T, C> paramPoolEntryCallback)
  {
    this.lock.lock();
    try
    {
      Iterator localIterator = this.leased.iterator();
      while (localIterator.hasNext()) {
        paramPoolEntryCallback.process((PoolEntry)localIterator.next());
      }
    }
    finally
    {
      this.lock.unlock();
    }
  }
  
  public int getDefaultMaxPerRoute()
  {
    this.lock.lock();
    try
    {
      int i = this.defaultMaxPerRoute;
      return i;
    }
    finally
    {
      this.lock.unlock();
    }
  }
  
  public int getMaxPerRoute(T paramT)
  {
    Args.notNull(paramT, "Route");
    this.lock.lock();
    try
    {
      int i = getMax(paramT);
      return i;
    }
    finally
    {
      this.lock.unlock();
    }
  }
  
  public int getMaxTotal()
  {
    this.lock.lock();
    try
    {
      int i = this.maxTotal;
      return i;
    }
    finally
    {
      this.lock.unlock();
    }
  }
  
  public Set<T> getRoutes()
  {
    this.lock.lock();
    try
    {
      HashSet localHashSet = new HashSet(this.routeToPool.keySet());
      return localHashSet;
    }
    finally
    {
      this.lock.unlock();
    }
  }
  
  public PoolStats getStats(T paramT)
  {
    Args.notNull(paramT, "Route");
    this.lock.lock();
    try
    {
      RouteSpecificPool localRouteSpecificPool = getPool(paramT);
      paramT = new PoolStats(localRouteSpecificPool.getLeasedCount(), localRouteSpecificPool.getPendingCount(), localRouteSpecificPool.getAvailableCount(), getMax(paramT));
      return paramT;
    }
    finally
    {
      this.lock.unlock();
    }
  }
  
  public PoolStats getTotalStats()
  {
    this.lock.lock();
    try
    {
      PoolStats localPoolStats = new PoolStats(this.leased.size(), this.pending.size(), this.available.size(), this.maxTotal);
      return localPoolStats;
    }
    finally
    {
      this.lock.unlock();
    }
  }
  
  public int getValidateAfterInactivity()
  {
    return this.validateAfterInactivity;
  }
  
  public boolean isShutdown()
  {
    return this.isShutDown;
  }
  
  public Future<E> lease(T paramT, Object paramObject)
  {
    return lease(paramT, paramObject, null);
  }
  
  public Future<E> lease(final T paramT, final Object paramObject, FutureCallback<E> paramFutureCallback)
  {
    Args.notNull(paramT, "Route");
    if (!this.isShutDown) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Connection pool shut down");
      new PoolEntryFuture(this.lock, paramFutureCallback)
      {
        public E getPoolEntry(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
        {
          paramAnonymousTimeUnit = AbstractConnPool.this.getPoolEntryBlocking(paramT, paramObject, paramAnonymousLong, paramAnonymousTimeUnit, this);
          AbstractConnPool.this.onLease(paramAnonymousTimeUnit);
          return paramAnonymousTimeUnit;
        }
      };
    }
  }
  
  protected void onLease(E paramE) {}
  
  protected void onRelease(E paramE) {}
  
  protected void onReuse(E paramE) {}
  
  public void release(E paramE, boolean paramBoolean)
  {
    this.lock.lock();
    label116:
    for (;;)
    {
      try
      {
        if (this.leased.remove(paramE))
        {
          RouteSpecificPool localRouteSpecificPool = getPool(paramE.getRoute());
          localRouteSpecificPool.free(paramE, paramBoolean);
          if ((!paramBoolean) || (this.isShutDown)) {
            continue;
          }
          this.available.addFirst(paramE);
          onRelease(paramE);
          paramE = localRouteSpecificPool.nextPending();
          if (paramE == null) {
            break label116;
          }
          this.pending.remove(paramE);
          if (paramE != null) {
            paramE.wakeup();
          }
        }
        return;
        paramE.close();
        continue;
        paramE = (PoolEntryFuture)this.pending.poll();
      }
      finally
      {
        this.lock.unlock();
      }
    }
  }
  
  public void setDefaultMaxPerRoute(int paramInt)
  {
    Args.positive(paramInt, "Max per route value");
    this.lock.lock();
    try
    {
      this.defaultMaxPerRoute = paramInt;
      return;
    }
    finally
    {
      this.lock.unlock();
    }
  }
  
  public void setMaxPerRoute(T paramT, int paramInt)
  {
    Args.notNull(paramT, "Route");
    Args.positive(paramInt, "Max per route value");
    this.lock.lock();
    try
    {
      this.maxPerRoute.put(paramT, Integer.valueOf(paramInt));
      return;
    }
    finally
    {
      this.lock.unlock();
    }
  }
  
  public void setMaxTotal(int paramInt)
  {
    Args.positive(paramInt, "Max value");
    this.lock.lock();
    try
    {
      this.maxTotal = paramInt;
      return;
    }
    finally
    {
      this.lock.unlock();
    }
  }
  
  public void setValidateAfterInactivity(int paramInt)
  {
    this.validateAfterInactivity = paramInt;
  }
  
  public void shutdown()
  {
    if (this.isShutDown) {
      return;
    }
    this.isShutDown = true;
    this.lock.lock();
    try
    {
      Iterator localIterator1 = this.available.iterator();
      while (localIterator1.hasNext()) {
        ((PoolEntry)localIterator1.next()).close();
      }
      localIterator2 = this.leased.iterator();
    }
    finally
    {
      this.lock.unlock();
    }
    while (localIterator2.hasNext()) {
      ((PoolEntry)localIterator2.next()).close();
    }
    Iterator localIterator2 = this.routeToPool.values().iterator();
    while (localIterator2.hasNext()) {
      ((RouteSpecificPool)localIterator2.next()).shutdown();
    }
    this.routeToPool.clear();
    this.leased.clear();
    this.available.clear();
    this.lock.unlock();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[leased: ");
    localStringBuilder.append(this.leased);
    localStringBuilder.append("][available: ");
    localStringBuilder.append(this.available);
    localStringBuilder.append("][pending: ");
    localStringBuilder.append(this.pending);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public boolean validate(E paramE)
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\pool\AbstractConnPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */