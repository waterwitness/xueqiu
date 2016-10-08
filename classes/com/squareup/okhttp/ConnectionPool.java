package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class ConnectionPool
{
  private static final long DEFAULT_KEEP_ALIVE_DURATION_MS = 300000L;
  private static final ConnectionPool systemDefault;
  private final LinkedList<Connection> connections = new LinkedList();
  private final Runnable connectionsCleanupRunnable = new Runnable()
  {
    public void run()
    {
      ConnectionPool.this.runCleanupUntilPoolIsEmpty();
    }
  };
  private Executor executor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory("OkHttp ConnectionPool", true));
  private final long keepAliveDurationNs;
  private final int maxIdleConnections;
  
  static
  {
    String str1 = System.getProperty("http.keepAlive");
    String str2 = System.getProperty("http.keepAliveDuration");
    String str3 = System.getProperty("http.maxConnections");
    if (str2 != null) {}
    for (long l = Long.parseLong(str2); (str1 != null) && (!Boolean.parseBoolean(str1)); l = 300000L)
    {
      systemDefault = new ConnectionPool(0, l);
      return;
    }
    if (str3 != null)
    {
      systemDefault = new ConnectionPool(Integer.parseInt(str3), l);
      return;
    }
    systemDefault = new ConnectionPool(5, l);
  }
  
  public ConnectionPool(int paramInt, long paramLong)
  {
    this.maxIdleConnections = paramInt;
    this.keepAliveDurationNs = (paramLong * 1000L * 1000L);
  }
  
  private void addConnection(Connection paramConnection)
  {
    boolean bool = this.connections.isEmpty();
    this.connections.addFirst(paramConnection);
    if (bool)
    {
      this.executor.execute(this.connectionsCleanupRunnable);
      return;
    }
    notifyAll();
  }
  
  public static ConnectionPool getDefault()
  {
    return systemDefault;
  }
  
  private void runCleanupUntilPoolIsEmpty()
  {
    while (performCleanup()) {}
  }
  
  public final void evictAll()
  {
    try
    {
      ArrayList localArrayList = new ArrayList(this.connections);
      this.connections.clear();
      notifyAll();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        Util.closeQuietly(((Connection)localArrayList.get(i)).getSocket());
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public final Connection get(Address paramAddress)
  {
    for (;;)
    {
      try
      {
        ListIterator localListIterator = this.connections.listIterator(this.connections.size());
        if (localListIterator.hasPrevious())
        {
          Connection localConnection2 = (Connection)localListIterator.previous();
          if ((localConnection2.getRoute().getAddress().equals(paramAddress)) && (localConnection2.isAlive()) && (System.nanoTime() - localConnection2.getIdleStartTimeNs() < this.keepAliveDurationNs))
          {
            localListIterator.remove();
            boolean bool = localConnection2.isSpdy();
            Connection localConnection1 = localConnection2;
            if (!bool) {}
            try
            {
              Platform.get().tagSocket(localConnection2.getSocket());
              localConnection1 = localConnection2;
              if ((localConnection1 != null) && (localConnection1.isSpdy())) {
                this.connections.addFirst(localConnection1);
              }
              return localConnection1;
            }
            catch (SocketException localSocketException)
            {
              Util.closeQuietly(localConnection2.getSocket());
              Platform.get().logW("Unable to tagSocket(): " + localSocketException);
            }
          }
        }
        else
        {
          Object localObject = null;
        }
      }
      finally {}
    }
  }
  
  public final int getConnectionCount()
  {
    try
    {
      int i = this.connections.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final List<Connection> getConnections()
  {
    try
    {
      ArrayList localArrayList = new ArrayList(this.connections);
      return localArrayList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int getHttpConnectionCount()
  {
    try
    {
      int i = this.connections.size();
      int j = getMultiplexedConnectionCount();
      return i - j;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int getMultiplexedConnectionCount()
  {
    int i = 0;
    for (;;)
    {
      try
      {
        Iterator localIterator = this.connections.iterator();
        if (localIterator.hasNext())
        {
          boolean bool = ((Connection)localIterator.next()).isSpdy();
          if (bool) {
            i += 1;
          }
        }
        else
        {
          return i;
        }
      }
      finally {}
    }
  }
  
  @Deprecated
  public final int getSpdyConnectionCount()
  {
    try
    {
      int i = getMultiplexedConnectionCount();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final boolean performCleanup()
  {
    int i;
    long l2;
    Connection localConnection;
    long l3;
    try
    {
      if (this.connections.isEmpty()) {
        return false;
      }
      ArrayList localArrayList = new ArrayList();
      i = 0;
      l2 = System.nanoTime();
      l1 = this.keepAliveDurationNs;
      localListIterator = this.connections.listIterator(this.connections.size());
      for (;;)
      {
        if (!localListIterator.hasPrevious()) {
          break label147;
        }
        localConnection = (Connection)localListIterator.previous();
        l3 = localConnection.getIdleStartTimeNs() + this.keepAliveDurationNs - l2;
        if ((l3 > 0L) && (localConnection.isAlive())) {
          break;
        }
        localListIterator.remove();
        localArrayList.add(localConnection);
      }
      if (!localConnection.isIdle()) {
        break label312;
      }
    }
    finally {}
    long l1 = Math.min(l1, l3);
    i += 1;
    break label315;
    label147:
    ListIterator localListIterator = this.connections.listIterator(this.connections.size());
    label312:
    label315:
    label318:
    for (;;)
    {
      if ((localListIterator.hasPrevious()) && (i > this.maxIdleConnections))
      {
        localConnection = (Connection)localListIterator.previous();
        if (localConnection.isIdle())
        {
          ((List)localObject).add(localConnection);
          localListIterator.remove();
          i -= 1;
          break label318;
        }
      }
      else
      {
        boolean bool = ((List)localObject).isEmpty();
        if (!bool) {}
      }
      try
      {
        l2 = l1 / 1000000L;
        wait(l2, (int)(l1 - 1000000L * l2));
        return true;
      }
      catch (InterruptedException localInterruptedException)
      {
        int j;
        for (;;) {}
      }
      j = ((List)localObject).size();
      i = 0;
      while (i < j)
      {
        Util.closeQuietly(((Connection)((List)localObject).get(i)).getSocket());
        i += 1;
      }
      return true;
      break label318;
      break;
    }
  }
  
  final void recycle(Connection paramConnection)
  {
    if (paramConnection.isSpdy()) {}
    while (!paramConnection.clearOwner()) {
      return;
    }
    if (!paramConnection.isAlive())
    {
      Util.closeQuietly(paramConnection.getSocket());
      return;
    }
    try
    {
      Platform.get().untagSocket(paramConnection.getSocket());
      try
      {
        addConnection(paramConnection);
        paramConnection.incrementRecycleCount();
        paramConnection.resetIdleStartTime();
        return;
      }
      finally {}
      return;
    }
    catch (SocketException localSocketException)
    {
      Platform.get().logW("Unable to untagSocket(): " + localSocketException);
      Util.closeQuietly(paramConnection.getSocket());
    }
  }
  
  final void replaceCleanupExecutorForTests(Executor paramExecutor)
  {
    this.executor = paramExecutor;
  }
  
  final void share(Connection paramConnection)
  {
    if (!paramConnection.isSpdy()) {
      throw new IllegalArgumentException();
    }
    if (!paramConnection.isAlive()) {
      return;
    }
    try
    {
      addConnection(paramConnection);
      return;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\ConnectionPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */