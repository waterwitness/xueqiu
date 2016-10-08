package org.apache.http.impl.conn.tsccm;

import java.io.IOException;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.Queue;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.LangUtils;

@Deprecated
public class RouteSpecificPool
{
  protected final ConnPerRoute connPerRoute;
  protected final LinkedList<BasicPoolEntry> freeEntries;
  private final Log log = LogFactory.getLog(getClass());
  protected final int maxEntries;
  protected int numEntries;
  protected final HttpRoute route;
  protected final Queue<WaitingThread> waitingThreads;
  
  @Deprecated
  public RouteSpecificPool(HttpRoute paramHttpRoute, int paramInt)
  {
    this.route = paramHttpRoute;
    this.maxEntries = paramInt;
    this.connPerRoute = new ConnPerRoute()
    {
      public int getMaxForRoute(HttpRoute paramAnonymousHttpRoute)
      {
        return RouteSpecificPool.this.maxEntries;
      }
    };
    this.freeEntries = new LinkedList();
    this.waitingThreads = new LinkedList();
    this.numEntries = 0;
  }
  
  public RouteSpecificPool(HttpRoute paramHttpRoute, ConnPerRoute paramConnPerRoute)
  {
    this.route = paramHttpRoute;
    this.connPerRoute = paramConnPerRoute;
    this.maxEntries = paramConnPerRoute.getMaxForRoute(paramHttpRoute);
    this.freeEntries = new LinkedList();
    this.waitingThreads = new LinkedList();
    this.numEntries = 0;
  }
  
  public BasicPoolEntry allocEntry(Object paramObject)
  {
    Object localObject;
    if (!this.freeEntries.isEmpty())
    {
      localObject = this.freeEntries.listIterator(this.freeEntries.size());
      while (((ListIterator)localObject).hasPrevious())
      {
        BasicPoolEntry localBasicPoolEntry = (BasicPoolEntry)((ListIterator)localObject).previous();
        if ((localBasicPoolEntry.getState() == null) || (LangUtils.equals(paramObject, localBasicPoolEntry.getState())))
        {
          ((ListIterator)localObject).remove();
          return localBasicPoolEntry;
        }
      }
    }
    if ((getCapacity() == 0) && (!this.freeEntries.isEmpty()))
    {
      paramObject = (BasicPoolEntry)this.freeEntries.remove();
      ((BasicPoolEntry)paramObject).shutdownEntry();
      localObject = ((BasicPoolEntry)paramObject).getConnection();
      try
      {
        ((OperatedClientConnection)localObject).close();
        return (BasicPoolEntry)paramObject;
      }
      catch (IOException localIOException)
      {
        this.log.debug("I/O error closing connection", localIOException);
        return (BasicPoolEntry)paramObject;
      }
    }
    return null;
  }
  
  public void createdEntry(BasicPoolEntry paramBasicPoolEntry)
  {
    Args.check(this.route.equals(paramBasicPoolEntry.getPlannedRoute()), "Entry not planned for this pool");
    this.numEntries += 1;
  }
  
  public boolean deleteEntry(BasicPoolEntry paramBasicPoolEntry)
  {
    boolean bool = this.freeEntries.remove(paramBasicPoolEntry);
    if (bool) {
      this.numEntries -= 1;
    }
    return bool;
  }
  
  public void dropEntry()
  {
    if (this.numEntries > 0) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "There is no entry that could be dropped");
      this.numEntries -= 1;
      return;
    }
  }
  
  public void freeEntry(BasicPoolEntry paramBasicPoolEntry)
  {
    if (this.numEntries <= 0) {
      throw new IllegalStateException("No entry created for this pool. " + this.route);
    }
    if (this.numEntries <= this.freeEntries.size()) {
      throw new IllegalStateException("No entry allocated from this pool. " + this.route);
    }
    this.freeEntries.add(paramBasicPoolEntry);
  }
  
  public int getCapacity()
  {
    return this.connPerRoute.getMaxForRoute(this.route) - this.numEntries;
  }
  
  public final int getEntryCount()
  {
    return this.numEntries;
  }
  
  public final int getMaxEntries()
  {
    return this.maxEntries;
  }
  
  public final HttpRoute getRoute()
  {
    return this.route;
  }
  
  public boolean hasThread()
  {
    return !this.waitingThreads.isEmpty();
  }
  
  public boolean isUnused()
  {
    return (this.numEntries <= 0) && (this.waitingThreads.isEmpty());
  }
  
  public WaitingThread nextThread()
  {
    return (WaitingThread)this.waitingThreads.peek();
  }
  
  public void queueThread(WaitingThread paramWaitingThread)
  {
    Args.notNull(paramWaitingThread, "Waiting thread");
    this.waitingThreads.add(paramWaitingThread);
  }
  
  public void removeThread(WaitingThread paramWaitingThread)
  {
    if (paramWaitingThread == null) {
      return;
    }
    this.waitingThreads.remove(paramWaitingThread);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\tsccm\RouteSpecificPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */