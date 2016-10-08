package com.sleepycat.b.i.c.b;

import com.sleepycat.b.c.ac;
import com.sleepycat.b.p.w;

final class j
  implements Thread.UncaughtExceptionHandler
{
  private j(h paramh) {}
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    w.a(h.k(this.a), h.l(this.a), "Uncaught exception in feeder thread " + paramThread + paramThrowable.getMessage() + w.a(paramThrowable));
    h.j(this.a).g = com.sleepycat.b.aa.a(h.a(this.a).i, ac.y, "Uncaught exception in feeder thread:" + paramThread, paramThrowable);
    h.a(this.a).interrupt();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */