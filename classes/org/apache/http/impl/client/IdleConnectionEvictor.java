package org.apache.http.impl.client;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.util.Args;

public final class IdleConnectionEvictor
{
  private final HttpClientConnectionManager connectionManager;
  private volatile Exception exception;
  private final long maxIdleTimeMs;
  private final long sleepTimeMs;
  private final Thread thread;
  private final ThreadFactory threadFactory;
  
  public IdleConnectionEvictor(HttpClientConnectionManager paramHttpClientConnectionManager, long paramLong, TimeUnit paramTimeUnit) {}
  
  public IdleConnectionEvictor(HttpClientConnectionManager paramHttpClientConnectionManager, long paramLong1, TimeUnit paramTimeUnit1, long paramLong2, TimeUnit paramTimeUnit2)
  {
    this(paramHttpClientConnectionManager, null, paramLong1, paramTimeUnit1, paramLong2, paramTimeUnit2);
  }
  
  public IdleConnectionEvictor(final HttpClientConnectionManager paramHttpClientConnectionManager, ThreadFactory paramThreadFactory, long paramLong1, TimeUnit paramTimeUnit1, long paramLong2, TimeUnit paramTimeUnit2)
  {
    this.connectionManager = ((HttpClientConnectionManager)Args.notNull(paramHttpClientConnectionManager, "Connection manager"));
    if (paramThreadFactory != null) {}
    for (;;)
    {
      this.threadFactory = paramThreadFactory;
      long l = paramLong1;
      if (paramTimeUnit1 != null) {
        l = paramTimeUnit1.toMillis(paramLong1);
      }
      this.sleepTimeMs = l;
      paramLong1 = paramLong2;
      if (paramTimeUnit2 != null) {
        paramLong1 = paramTimeUnit2.toMillis(paramLong2);
      }
      this.maxIdleTimeMs = paramLong1;
      this.thread = this.threadFactory.newThread(new Runnable()
      {
        public void run()
        {
          try
          {
            while (!Thread.currentThread().isInterrupted())
            {
              Thread.sleep(IdleConnectionEvictor.this.sleepTimeMs);
              paramHttpClientConnectionManager.closeExpiredConnections();
              if (IdleConnectionEvictor.this.maxIdleTimeMs > 0L) {
                paramHttpClientConnectionManager.closeIdleConnections(IdleConnectionEvictor.this.maxIdleTimeMs, TimeUnit.MILLISECONDS);
              }
            }
            return;
          }
          catch (Exception localException)
          {
            IdleConnectionEvictor.access$202(IdleConnectionEvictor.this, localException);
          }
        }
      });
      return;
      paramThreadFactory = new IdleConnectionEvictor.DefaultThreadFactory();
    }
  }
  
  public final void awaitTermination(long paramLong, TimeUnit paramTimeUnit)
  {
    Thread localThread = this.thread;
    if (paramTimeUnit != null) {}
    for (;;)
    {
      localThread.join(paramTimeUnit.toMillis(paramLong));
      return;
      paramTimeUnit = TimeUnit.MILLISECONDS;
    }
  }
  
  public final boolean isRunning()
  {
    return this.thread.isAlive();
  }
  
  public final void shutdown()
  {
    this.thread.interrupt();
  }
  
  public final void start()
  {
    this.thread.start();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\IdleConnectionEvictor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */