package com.flurry.sdk;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class mc
{
  private static mc a;
  private final Thread.UncaughtExceptionHandler b = Thread.getDefaultUncaughtExceptionHandler();
  private final Map<Thread.UncaughtExceptionHandler, Void> c = new WeakHashMap();
  
  private mc()
  {
    Thread.setDefaultUncaughtExceptionHandler(new mc.a(this, null));
  }
  
  public static mc a()
  {
    try
    {
      if (a == null) {
        a = new mc();
      }
      mc localmc = a;
      return localmc;
    }
    finally {}
  }
  
  private void a(Thread paramThread, Throwable paramThrowable)
  {
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext())
    {
      Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = (Thread.UncaughtExceptionHandler)localIterator.next();
      try
      {
        localUncaughtExceptionHandler.uncaughtException(paramThread, paramThrowable);
      }
      catch (Throwable localThrowable) {}
    }
  }
  
  public static void b()
  {
    try
    {
      if (a != null) {
        a.d();
      }
      a = null;
      return;
    }
    finally {}
  }
  
  private void b(Thread paramThread, Throwable paramThrowable)
  {
    if (this.b != null) {}
    try
    {
      this.b.uncaughtException(paramThread, paramThrowable);
      return;
    }
    catch (Throwable paramThread) {}
  }
  
  private Set<Thread.UncaughtExceptionHandler> c()
  {
    synchronized (this.c)
    {
      Set localSet = this.c.keySet();
      return localSet;
    }
  }
  
  private void d()
  {
    Thread.setDefaultUncaughtExceptionHandler(this.b);
  }
  
  public final void a(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    synchronized (this.c)
    {
      this.c.put(paramUncaughtExceptionHandler, null);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\mc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */