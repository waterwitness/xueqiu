package org.apache.http.impl.conn.tsccm;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
public class ConnPoolByRoute
  extends AbstractConnPool
{
  protected final ConnPerRoute connPerRoute;
  private final long connTTL;
  private final TimeUnit connTTLTimeUnit;
  protected final Queue<BasicPoolEntry> freeConnections;
  protected final Set<BasicPoolEntry> leasedConnections;
  private final Log log = LogFactory.getLog(getClass());
  protected volatile int maxTotalConnections;
  protected volatile int numConnections;
  protected final ClientConnectionOperator operator;
  private final Lock poolLock;
  protected final Map<HttpRoute, RouteSpecificPool> routeToPool;
  protected volatile boolean shutdown;
  protected final Queue<WaitingThread> waitingThreads;
  
  public ConnPoolByRoute(ClientConnectionOperator paramClientConnectionOperator, ConnPerRoute paramConnPerRoute, int paramInt)
  {
    this(paramClientConnectionOperator, paramConnPerRoute, paramInt, -1L, TimeUnit.MILLISECONDS);
  }
  
  public ConnPoolByRoute(ClientConnectionOperator paramClientConnectionOperator, ConnPerRoute paramConnPerRoute, int paramInt, long paramLong, TimeUnit paramTimeUnit)
  {
    Args.notNull(paramClientConnectionOperator, "Connection operator");
    Args.notNull(paramConnPerRoute, "Connections per route");
    this.poolLock = this.poolLock;
    this.leasedConnections = this.leasedConnections;
    this.operator = paramClientConnectionOperator;
    this.connPerRoute = paramConnPerRoute;
    this.maxTotalConnections = paramInt;
    this.freeConnections = createFreeConnQueue();
    this.waitingThreads = createWaitingThreadQueue();
    this.routeToPool = createRouteToPoolMap();
    this.connTTL = paramLong;
    this.connTTLTimeUnit = paramTimeUnit;
  }
  
  @Deprecated
  public ConnPoolByRoute(ClientConnectionOperator paramClientConnectionOperator, HttpParams paramHttpParams)
  {
    this(paramClientConnectionOperator, ConnManagerParams.getMaxConnectionsPerRoute(paramHttpParams), ConnManagerParams.getMaxTotalConnections(paramHttpParams));
  }
  
  private void closeConnection(BasicPoolEntry paramBasicPoolEntry)
  {
    paramBasicPoolEntry = paramBasicPoolEntry.getConnection();
    if (paramBasicPoolEntry != null) {}
    try
    {
      paramBasicPoolEntry.close();
      return;
    }
    catch (IOException paramBasicPoolEntry)
    {
      this.log.debug("I/O error closing connection", paramBasicPoolEntry);
    }
  }
  
  public void closeExpiredConnections()
  {
    this.log.debug("Closing expired connections");
    long l = System.currentTimeMillis();
    this.poolLock.lock();
    try
    {
      Iterator localIterator = this.freeConnections.iterator();
      while (localIterator.hasNext())
      {
        BasicPoolEntry localBasicPoolEntry = (BasicPoolEntry)localIterator.next();
        if (localBasicPoolEntry.isExpired(l))
        {
          if (this.log.isDebugEnabled()) {
            this.log.debug("Closing connection expired @ " + new Date(localBasicPoolEntry.getExpiry()));
          }
          localIterator.remove();
          deleteEntry(localBasicPoolEntry);
        }
      }
    }
    finally
    {
      this.poolLock.unlock();
    }
  }
  
  public void closeIdleConnections(long paramLong, TimeUnit paramTimeUnit)
  {
    Args.notNull(paramTimeUnit, "Time unit");
    if (paramLong > 0L) {}
    for (;;)
    {
      if (this.log.isDebugEnabled()) {
        this.log.debug("Closing connections idle longer than " + paramLong + " " + paramTimeUnit);
      }
      long l = System.currentTimeMillis();
      paramLong = paramTimeUnit.toMillis(paramLong);
      this.poolLock.lock();
      try
      {
        paramTimeUnit = this.freeConnections.iterator();
        while (paramTimeUnit.hasNext())
        {
          BasicPoolEntry localBasicPoolEntry = (BasicPoolEntry)paramTimeUnit.next();
          if (localBasicPoolEntry.getUpdated() <= l - paramLong)
          {
            if (this.log.isDebugEnabled()) {
              this.log.debug("Closing connection last used @ " + new Date(localBasicPoolEntry.getUpdated()));
            }
            paramTimeUnit.remove();
            deleteEntry(localBasicPoolEntry);
          }
        }
        paramLong = 0L;
      }
      finally
      {
        this.poolLock.unlock();
      }
    }
    this.poolLock.unlock();
  }
  
  protected BasicPoolEntry createEntry(RouteSpecificPool paramRouteSpecificPool, ClientConnectionOperator paramClientConnectionOperator)
  {
    if (this.log.isDebugEnabled()) {
      this.log.debug("Creating new connection [" + paramRouteSpecificPool.getRoute() + "]");
    }
    paramClientConnectionOperator = new BasicPoolEntry(paramClientConnectionOperator, paramRouteSpecificPool.getRoute(), this.connTTL, this.connTTLTimeUnit);
    this.poolLock.lock();
    try
    {
      paramRouteSpecificPool.createdEntry(paramClientConnectionOperator);
      this.numConnections += 1;
      this.leasedConnections.add(paramClientConnectionOperator);
      return paramClientConnectionOperator;
    }
    finally
    {
      this.poolLock.unlock();
    }
  }
  
  protected Queue<BasicPoolEntry> createFreeConnQueue()
  {
    return new LinkedList();
  }
  
  protected Map<HttpRoute, RouteSpecificPool> createRouteToPoolMap()
  {
    return new HashMap();
  }
  
  protected Queue<WaitingThread> createWaitingThreadQueue()
  {
    return new LinkedList();
  }
  
  public void deleteClosedConnections()
  {
    this.poolLock.lock();
    try
    {
      Iterator localIterator = this.freeConnections.iterator();
      while (localIterator.hasNext())
      {
        BasicPoolEntry localBasicPoolEntry = (BasicPoolEntry)localIterator.next();
        if (!localBasicPoolEntry.getConnection().isOpen())
        {
          localIterator.remove();
          deleteEntry(localBasicPoolEntry);
        }
      }
    }
    finally
    {
      this.poolLock.unlock();
    }
  }
  
  protected void deleteEntry(BasicPoolEntry paramBasicPoolEntry)
  {
    HttpRoute localHttpRoute = paramBasicPoolEntry.getPlannedRoute();
    if (this.log.isDebugEnabled()) {
      this.log.debug("Deleting connection [" + localHttpRoute + "][" + paramBasicPoolEntry.getState() + "]");
    }
    this.poolLock.lock();
    try
    {
      closeConnection(paramBasicPoolEntry);
      RouteSpecificPool localRouteSpecificPool = getRoutePool(localHttpRoute, true);
      localRouteSpecificPool.deleteEntry(paramBasicPoolEntry);
      this.numConnections -= 1;
      if (localRouteSpecificPool.isUnused()) {
        this.routeToPool.remove(localHttpRoute);
      }
      return;
    }
    finally
    {
      this.poolLock.unlock();
    }
  }
  
  /* Error */
  protected void deleteLeastUsedEntry()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 78	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:poolLock	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 164 1 0
    //   9: aload_0
    //   10: getfield 93	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:freeConnections	Ljava/util/Queue;
    //   13: invokeinterface 312 1 0
    //   18: checkcast 130	org/apache/http/impl/conn/tsccm/BasicPoolEntry
    //   21: astore_1
    //   22: aload_1
    //   23: ifnull +18 -> 41
    //   26: aload_0
    //   27: aload_1
    //   28: invokevirtual 216	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:deleteEntry	(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    //   31: aload_0
    //   32: getfield 78	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:poolLock	Ljava/util/concurrent/locks/Lock;
    //   35: invokeinterface 219 1 0
    //   40: return
    //   41: aload_0
    //   42: getfield 65	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:log	Lorg/apache/commons/logging/Log;
    //   45: invokeinterface 187 1 0
    //   50: ifeq -19 -> 31
    //   53: aload_0
    //   54: getfield 65	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:log	Lorg/apache/commons/logging/Log;
    //   57: ldc_w 314
    //   60: invokeinterface 153 2 0
    //   65: goto -34 -> 31
    //   68: astore_1
    //   69: aload_0
    //   70: getfield 78	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:poolLock	Ljava/util/concurrent/locks/Lock;
    //   73: invokeinterface 219 1 0
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	ConnPoolByRoute
    //   21	7	1	localBasicPoolEntry	BasicPoolEntry
    //   68	11	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   9	22	68	finally
    //   26	31	68	finally
    //   41	65	68	finally
  }
  
  /* Error */
  public void freeEntry(BasicPoolEntry paramBasicPoolEntry, boolean paramBoolean, long paramLong, TimeUnit paramTimeUnit)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 285	org/apache/http/impl/conn/tsccm/BasicPoolEntry:getPlannedRoute	()Lorg/apache/http/conn/routing/HttpRoute;
    //   4: astore 7
    //   6: aload_0
    //   7: getfield 65	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:log	Lorg/apache/commons/logging/Log;
    //   10: invokeinterface 187 1 0
    //   15: ifeq +48 -> 63
    //   18: aload_0
    //   19: getfield 65	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:log	Lorg/apache/commons/logging/Log;
    //   22: new 189	java/lang/StringBuilder
    //   25: dup
    //   26: ldc_w 318
    //   29: invokespecial 194	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   32: aload 7
    //   34: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   37: ldc_w 289
    //   40: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload_1
    //   44: invokevirtual 292	org/apache/http/impl/conn/tsccm/BasicPoolEntry:getState	()Ljava/lang/Object;
    //   47: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   50: ldc -2
    //   52: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokeinterface 153 2 0
    //   63: aload_0
    //   64: getfield 78	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:poolLock	Ljava/util/concurrent/locks/Lock;
    //   67: invokeinterface 164 1 0
    //   72: aload_0
    //   73: getfield 320	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:shutdown	Z
    //   76: ifeq +18 -> 94
    //   79: aload_0
    //   80: aload_1
    //   81: invokespecial 294	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:closeConnection	(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    //   84: aload_0
    //   85: getfield 78	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:poolLock	Ljava/util/concurrent/locks/Lock;
    //   88: invokeinterface 219 1 0
    //   93: return
    //   94: aload_0
    //   95: getfield 81	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:leasedConnections	Ljava/util/Set;
    //   98: aload_1
    //   99: invokeinterface 322 2 0
    //   104: pop
    //   105: aload_0
    //   106: aload 7
    //   108: iconst_1
    //   109: invokevirtual 298	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:getRoutePool	(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    //   112: astore 8
    //   114: iload_2
    //   115: ifeq +157 -> 272
    //   118: aload 8
    //   120: invokevirtual 326	org/apache/http/impl/conn/tsccm/RouteSpecificPool:getCapacity	()I
    //   123: iflt +149 -> 272
    //   126: aload_0
    //   127: getfield 65	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:log	Lorg/apache/commons/logging/Log;
    //   130: invokeinterface 187 1 0
    //   135: ifeq +89 -> 224
    //   138: lload_3
    //   139: lconst_0
    //   140: lcmp
    //   141: ifle +123 -> 264
    //   144: new 189	java/lang/StringBuilder
    //   147: dup
    //   148: ldc_w 328
    //   151: invokespecial 194	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   154: lload_3
    //   155: invokevirtual 228	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   158: ldc -26
    //   160: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: aload 5
    //   165: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   168: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   171: astore 6
    //   173: aload_0
    //   174: getfield 65	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:log	Lorg/apache/commons/logging/Log;
    //   177: new 189	java/lang/StringBuilder
    //   180: dup
    //   181: ldc_w 330
    //   184: invokespecial 194	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   187: aload 7
    //   189: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   192: ldc_w 289
    //   195: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: aload_1
    //   199: invokevirtual 292	org/apache/http/impl/conn/tsccm/BasicPoolEntry:getState	()Ljava/lang/Object;
    //   202: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   205: ldc_w 332
    //   208: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: aload 6
    //   213: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   219: invokeinterface 153 2 0
    //   224: aload 8
    //   226: aload_1
    //   227: invokevirtual 334	org/apache/http/impl/conn/tsccm/RouteSpecificPool:freeEntry	(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    //   230: aload_1
    //   231: lload_3
    //   232: aload 5
    //   234: invokevirtual 337	org/apache/http/impl/conn/tsccm/BasicPoolEntry:updateExpiry	(JLjava/util/concurrent/TimeUnit;)V
    //   237: aload_0
    //   238: getfield 93	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:freeConnections	Ljava/util/Queue;
    //   241: aload_1
    //   242: invokeinterface 338 2 0
    //   247: pop
    //   248: aload_0
    //   249: aload 8
    //   251: invokevirtual 342	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:notifyWaitingThread	(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    //   254: aload_0
    //   255: getfield 78	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:poolLock	Ljava/util/concurrent/locks/Lock;
    //   258: invokeinterface 219 1 0
    //   263: return
    //   264: ldc_w 344
    //   267: astore 6
    //   269: goto -96 -> 173
    //   272: aload_0
    //   273: aload_1
    //   274: invokespecial 294	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:closeConnection	(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    //   277: aload 8
    //   279: invokevirtual 347	org/apache/http/impl/conn/tsccm/RouteSpecificPool:dropEntry	()V
    //   282: aload_0
    //   283: aload_0
    //   284: getfield 262	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:numConnections	I
    //   287: iconst_1
    //   288: isub
    //   289: putfield 262	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:numConnections	I
    //   292: goto -44 -> 248
    //   295: astore_1
    //   296: aload_0
    //   297: getfield 78	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:poolLock	Ljava/util/concurrent/locks/Lock;
    //   300: invokeinterface 219 1 0
    //   305: aload_1
    //   306: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	307	0	this	ConnPoolByRoute
    //   0	307	1	paramBasicPoolEntry	BasicPoolEntry
    //   0	307	2	paramBoolean	boolean
    //   0	307	3	paramLong	long
    //   0	307	5	paramTimeUnit	TimeUnit
    //   171	97	6	str	String
    //   4	184	7	localHttpRoute	HttpRoute
    //   112	166	8	localRouteSpecificPool	RouteSpecificPool
    // Exception table:
    //   from	to	target	type
    //   72	84	295	finally
    //   94	114	295	finally
    //   118	138	295	finally
    //   144	173	295	finally
    //   173	224	295	finally
    //   224	248	295	finally
    //   248	254	295	finally
    //   272	292	295	finally
  }
  
  public int getConnectionsInPool()
  {
    this.poolLock.lock();
    try
    {
      int i = this.numConnections;
      return i;
    }
    finally
    {
      this.poolLock.unlock();
    }
  }
  
  public int getConnectionsInPool(HttpRoute paramHttpRoute)
  {
    int i = 0;
    this.poolLock.lock();
    try
    {
      paramHttpRoute = getRoutePool(paramHttpRoute, false);
      if (paramHttpRoute != null) {
        i = paramHttpRoute.getEntryCount();
      }
      return i;
    }
    finally
    {
      this.poolLock.unlock();
    }
  }
  
  protected BasicPoolEntry getEntryBlocking(HttpRoute paramHttpRoute, Object paramObject, long paramLong, TimeUnit paramTimeUnit, WaitingThreadAborter paramWaitingThreadAborter)
  {
    Date localDate = null;
    if (paramLong > 0L) {
      localDate = new Date(System.currentTimeMillis() + paramTimeUnit.toMillis(paramLong));
    }
    this.poolLock.lock();
    for (;;)
    {
      TimeUnit localTimeUnit;
      Object localObject;
      BasicPoolEntry localBasicPoolEntry;
      try
      {
        RouteSpecificPool localRouteSpecificPool = getRoutePool(paramHttpRoute, true);
        paramTimeUnit = null;
        localTimeUnit = null;
        localObject = paramTimeUnit;
        if (paramTimeUnit != null) {
          break label570;
        }
        if (this.shutdown) {
          break label589;
        }
        bool = true;
        Asserts.check(bool, "Connection pool shut down");
        if (this.log.isDebugEnabled()) {
          this.log.debug("[" + paramHttpRoute + "] total kept alive: " + this.freeConnections.size() + ", total issued: " + this.leasedConnections.size() + ", total allocated: " + this.numConnections + " out of " + this.maxTotalConnections);
        }
        localBasicPoolEntry = getFreeEntry(localRouteSpecificPool, paramObject);
        localObject = localBasicPoolEntry;
        if (localBasicPoolEntry != null) {
          break label570;
        }
        if (localRouteSpecificPool.getCapacity() <= 0) {
          break label595;
        }
        i = 1;
        if (this.log.isDebugEnabled()) {
          this.log.debug("Available capacity: " + localRouteSpecificPool.getCapacity() + " out of " + localRouteSpecificPool.getMaxEntries() + " [" + paramHttpRoute + "][" + paramObject + "]");
        }
        if ((i != 0) && (this.numConnections < this.maxTotalConnections))
        {
          paramTimeUnit = createEntry(localRouteSpecificPool, this.operator);
          continue;
        }
        if ((i != 0) && (!this.freeConnections.isEmpty()))
        {
          deleteLeastUsedEntry();
          localRouteSpecificPool = getRoutePool(paramHttpRoute, true);
          paramTimeUnit = createEntry(localRouteSpecificPool, this.operator);
          continue;
        }
        if (this.log.isDebugEnabled()) {
          this.log.debug("Need to wait for connection [" + paramHttpRoute + "][" + paramObject + "]");
        }
        if (localTimeUnit != null) {
          break label582;
        }
        paramTimeUnit = newWaitingThread(this.poolLock.newCondition(), localRouteSpecificPool);
        paramWaitingThreadAborter.setWaitingThread(paramTimeUnit);
        localTimeUnit = paramTimeUnit;
      }
      finally
      {
        try
        {
          localRouteSpecificPool.queueThread(paramTimeUnit);
          this.waitingThreads.add(paramTimeUnit);
          bool = paramTimeUnit.await(localDate);
          localRouteSpecificPool.removeThread(paramTimeUnit);
          this.waitingThreads.remove(paramTimeUnit);
          if ((bool) || (localDate == null) || (localDate.getTime() > System.currentTimeMillis())) {
            break label559;
          }
          throw new ConnectionPoolTimeoutException("Timeout waiting for connection from pool");
        }
        finally
        {
          localRouteSpecificPool.removeThread(paramTimeUnit);
          this.waitingThreads.remove(paramTimeUnit);
        }
        paramHttpRoute = finally;
        this.poolLock.unlock();
      }
      label559:
      paramTimeUnit = localBasicPoolEntry;
      continue;
      label570:
      this.poolLock.unlock();
      return (BasicPoolEntry)localObject;
      label582:
      paramTimeUnit = localTimeUnit;
      continue;
      label589:
      boolean bool = false;
      continue;
      label595:
      int i = 0;
    }
  }
  
  protected BasicPoolEntry getFreeEntry(RouteSpecificPool paramRouteSpecificPool, Object paramObject)
  {
    BasicPoolEntry localBasicPoolEntry = null;
    this.poolLock.lock();
    int i = 0;
    for (;;)
    {
      if (i == 0)
      {
        try
        {
          localBasicPoolEntry = paramRouteSpecificPool.allocEntry(paramObject);
          if (localBasicPoolEntry == null) {
            break label213;
          }
          if (this.log.isDebugEnabled()) {
            this.log.debug("Getting free connection [" + paramRouteSpecificPool.getRoute() + "][" + paramObject + "]");
          }
          this.freeConnections.remove(localBasicPoolEntry);
          if (localBasicPoolEntry.isExpired(System.currentTimeMillis()))
          {
            if (this.log.isDebugEnabled()) {
              this.log.debug("Closing expired free connection [" + paramRouteSpecificPool.getRoute() + "][" + paramObject + "]");
            }
            closeConnection(localBasicPoolEntry);
            paramRouteSpecificPool.dropEntry();
            this.numConnections -= 1;
            continue;
          }
        }
        finally
        {
          this.poolLock.unlock();
        }
        this.leasedConnections.add(localBasicPoolEntry);
        i = 1;
        continue;
        label213:
        if (this.log.isDebugEnabled())
        {
          this.log.debug("No free connections [" + paramRouteSpecificPool.getRoute() + "][" + paramObject + "]");
          i = 1;
        }
      }
      else
      {
        this.poolLock.unlock();
        return localBasicPoolEntry;
      }
      i = 1;
    }
  }
  
  protected Lock getLock()
  {
    return this.poolLock;
  }
  
  public int getMaxTotalConnections()
  {
    return this.maxTotalConnections;
  }
  
  protected RouteSpecificPool getRoutePool(HttpRoute paramHttpRoute, boolean paramBoolean)
  {
    this.poolLock.lock();
    try
    {
      RouteSpecificPool localRouteSpecificPool2 = (RouteSpecificPool)this.routeToPool.get(paramHttpRoute);
      RouteSpecificPool localRouteSpecificPool1 = localRouteSpecificPool2;
      if (localRouteSpecificPool2 == null)
      {
        localRouteSpecificPool1 = localRouteSpecificPool2;
        if (paramBoolean)
        {
          localRouteSpecificPool1 = newRouteSpecificPool(paramHttpRoute);
          this.routeToPool.put(paramHttpRoute, localRouteSpecificPool1);
        }
      }
      return localRouteSpecificPool1;
    }
    finally
    {
      this.poolLock.unlock();
    }
  }
  
  protected void handleLostEntry(HttpRoute paramHttpRoute)
  {
    this.poolLock.lock();
    try
    {
      RouteSpecificPool localRouteSpecificPool = getRoutePool(paramHttpRoute, true);
      localRouteSpecificPool.dropEntry();
      if (localRouteSpecificPool.isUnused()) {
        this.routeToPool.remove(paramHttpRoute);
      }
      this.numConnections -= 1;
      notifyWaitingThread(localRouteSpecificPool);
      return;
    }
    finally
    {
      this.poolLock.unlock();
    }
  }
  
  protected RouteSpecificPool newRouteSpecificPool(HttpRoute paramHttpRoute)
  {
    return new RouteSpecificPool(paramHttpRoute, this.connPerRoute);
  }
  
  protected WaitingThread newWaitingThread(Condition paramCondition, RouteSpecificPool paramRouteSpecificPool)
  {
    return new WaitingThread(paramCondition, paramRouteSpecificPool);
  }
  
  /* Error */
  protected void notifyWaitingThread(RouteSpecificPool paramRouteSpecificPool)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 78	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:poolLock	Ljava/util/concurrent/locks/Lock;
    //   6: invokeinterface 164 1 0
    //   11: aload_1
    //   12: ifnull +79 -> 91
    //   15: aload_1
    //   16: invokevirtual 468	org/apache/http/impl/conn/tsccm/RouteSpecificPool:hasThread	()Z
    //   19: ifeq +72 -> 91
    //   22: aload_0
    //   23: getfield 65	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:log	Lorg/apache/commons/logging/Log;
    //   26: invokeinterface 187 1 0
    //   31: ifeq +37 -> 68
    //   34: aload_0
    //   35: getfield 65	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:log	Lorg/apache/commons/logging/Log;
    //   38: new 189	java/lang/StringBuilder
    //   41: dup
    //   42: ldc_w 470
    //   45: invokespecial 194	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   48: aload_1
    //   49: invokevirtual 252	org/apache/http/impl/conn/tsccm/RouteSpecificPool:getRoute	()Lorg/apache/http/conn/routing/HttpRoute;
    //   52: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   55: ldc -2
    //   57: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokeinterface 153 2 0
    //   68: aload_1
    //   69: invokevirtual 474	org/apache/http/impl/conn/tsccm/RouteSpecificPool:nextThread	()Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    //   72: astore_1
    //   73: aload_1
    //   74: ifnull +7 -> 81
    //   77: aload_1
    //   78: invokevirtual 477	org/apache/http/impl/conn/tsccm/WaitingThread:wakeup	()V
    //   81: aload_0
    //   82: getfield 78	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:poolLock	Ljava/util/concurrent/locks/Lock;
    //   85: invokeinterface 219 1 0
    //   90: return
    //   91: aload_0
    //   92: getfield 98	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:waitingThreads	Ljava/util/Queue;
    //   95: invokeinterface 395 1 0
    //   100: ifne +43 -> 143
    //   103: aload_0
    //   104: getfield 65	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:log	Lorg/apache/commons/logging/Log;
    //   107: invokeinterface 187 1 0
    //   112: ifeq +15 -> 127
    //   115: aload_0
    //   116: getfield 65	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:log	Lorg/apache/commons/logging/Log;
    //   119: ldc_w 479
    //   122: invokeinterface 153 2 0
    //   127: aload_0
    //   128: getfield 98	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:waitingThreads	Ljava/util/Queue;
    //   131: invokeinterface 312 1 0
    //   136: checkcast 418	org/apache/http/impl/conn/tsccm/WaitingThread
    //   139: astore_1
    //   140: goto -67 -> 73
    //   143: aload_2
    //   144: astore_1
    //   145: aload_0
    //   146: getfield 65	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:log	Lorg/apache/commons/logging/Log;
    //   149: invokeinterface 187 1 0
    //   154: ifeq -81 -> 73
    //   157: aload_0
    //   158: getfield 65	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:log	Lorg/apache/commons/logging/Log;
    //   161: ldc_w 481
    //   164: invokeinterface 153 2 0
    //   169: aload_2
    //   170: astore_1
    //   171: goto -98 -> 73
    //   174: astore_1
    //   175: aload_0
    //   176: getfield 78	org/apache/http/impl/conn/tsccm/ConnPoolByRoute:poolLock	Ljava/util/concurrent/locks/Lock;
    //   179: invokeinterface 219 1 0
    //   184: aload_1
    //   185: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	186	0	this	ConnPoolByRoute
    //   0	186	1	paramRouteSpecificPool	RouteSpecificPool
    //   1	169	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   15	68	174	finally
    //   68	73	174	finally
    //   77	81	174	finally
    //   91	127	174	finally
    //   127	140	174	finally
    //   145	169	174	finally
  }
  
  public PoolEntryRequest requestPoolEntry(final HttpRoute paramHttpRoute, final Object paramObject)
  {
    new PoolEntryRequest()
    {
      public void abortRequest()
      {
        ConnPoolByRoute.this.poolLock.lock();
        try
        {
          this.val$aborter.abort();
          return;
        }
        finally
        {
          ConnPoolByRoute.this.poolLock.unlock();
        }
      }
      
      public BasicPoolEntry getPoolEntry(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
      {
        return ConnPoolByRoute.this.getEntryBlocking(paramHttpRoute, paramObject, paramAnonymousLong, paramAnonymousTimeUnit, this.val$aborter);
      }
    };
  }
  
  public void setMaxTotalConnections(int paramInt)
  {
    this.poolLock.lock();
    try
    {
      this.maxTotalConnections = paramInt;
      return;
    }
    finally
    {
      this.poolLock.unlock();
    }
  }
  
  public void shutdown()
  {
    this.poolLock.lock();
    Object localObject2;
    try
    {
      boolean bool = this.shutdown;
      if (bool) {
        return;
      }
      this.shutdown = true;
      Iterator localIterator1 = this.leasedConnections.iterator();
      while (localIterator1.hasNext())
      {
        localObject2 = (BasicPoolEntry)localIterator1.next();
        localIterator1.remove();
        closeConnection((BasicPoolEntry)localObject2);
      }
      localIterator2 = this.freeConnections.iterator();
    }
    finally
    {
      this.poolLock.unlock();
    }
    while (localIterator2.hasNext())
    {
      localObject2 = (BasicPoolEntry)localIterator2.next();
      localIterator2.remove();
      if (this.log.isDebugEnabled()) {
        this.log.debug("Closing connection [" + ((BasicPoolEntry)localObject2).getPlannedRoute() + "][" + ((BasicPoolEntry)localObject2).getState() + "]");
      }
      closeConnection((BasicPoolEntry)localObject2);
    }
    Iterator localIterator2 = this.waitingThreads.iterator();
    while (localIterator2.hasNext())
    {
      localObject2 = (WaitingThread)localIterator2.next();
      localIterator2.remove();
      ((WaitingThread)localObject2).wakeup();
    }
    this.routeToPool.clear();
    this.poolLock.unlock();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\tsccm\ConnPoolByRoute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */