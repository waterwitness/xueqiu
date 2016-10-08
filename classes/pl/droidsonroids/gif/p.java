package pl.droidsonroids.gif;

abstract class p
  implements Runnable
{
  final b c;
  
  p(b paramb)
  {
    this.c = paramb;
  }
  
  abstract void a();
  
  public final void run()
  {
    try
    {
      if (!this.c.f.k()) {
        a();
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
      if (localUncaughtExceptionHandler != null) {
        localUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), localThrowable);
      }
      throw localThrowable;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */