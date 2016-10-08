package com.flurry.sdk;

final class mc$a
  implements Thread.UncaughtExceptionHandler
{
  private mc$a(mc parammc) {}
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    mc.a(this.a, paramThread, paramThrowable);
    mc.b(this.a, paramThread, paramThrowable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\mc$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */