package com.sleepycat.b.p;

import com.sleepycat.b.c.ad;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;

public abstract class aj
  extends Thread
{
  public final ad D;
  public final AtomicBoolean E = new AtomicBoolean(false);
  public Exception F = null;
  private long a = -1L;
  private long b = -1L;
  
  public aj(ad paramad, String paramString)
  {
    this(paramad, null, null, paramString);
  }
  
  protected aj(ad paramad, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, Runnable paramRunnable, String paramString)
  {
    super(null, paramRunnable, paramString);
    this.D = paramad;
    setDaemon(true);
    paramad = paramUncaughtExceptionHandler;
    if (paramUncaughtExceptionHandler == null) {
      paramad = new ak(this, (byte)0);
    }
    setUncaughtExceptionHandler(paramad);
  }
  
  public aj(ad paramad, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, String paramString)
  {
    this(paramad, paramUncaughtExceptionHandler, null, paramString);
  }
  
  public aj(String paramString)
  {
    this(null, null, null, paramString);
  }
  
  public abstract Logger a();
  
  public final void a(Logger paramLogger)
  {
    if (Thread.currentThread() == this) {
      return;
    }
    try
    {
      int i = c();
      if (i >= 0) {
        join(i);
      }
      if (isAlive())
      {
        w.b(paramLogger, this.D, "Soft shutdown failed for thread:" + this + " resorting to interrupt.");
        interrupt();
        join();
        w.b(paramLogger, this.D, this + " shutdown via interrupt.");
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      w.b(paramLogger, this.D, "Interrupted while waiting to join thread:" + this);
      return;
    }
    w.d(paramLogger, this.D, this + " has exited.");
  }
  
  public int c()
  {
    return -1;
  }
  
  public final boolean n()
  {
    return !this.E.compareAndSet(false, true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */