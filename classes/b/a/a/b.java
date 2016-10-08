package b.a.a;

import android.util.Log;

final class b
  implements Runnable
{
  final i a;
  volatile boolean b;
  private final c c;
  
  b(c paramc)
  {
    this.c = paramc;
    this.a = new i();
  }
  
  public final void run()
  {
    try
    {
      h localh2 = this.a.b();
      localh1 = localh2;
      if (localh2 != null) {}
    }
    catch (InterruptedException localInterruptedException)
    {
      h localh1;
      localInterruptedException = localInterruptedException;
      Log.w("Event", Thread.currentThread().getName() + " was interruppted", localInterruptedException);
      return;
    }
    finally
    {
      this.b = false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\b\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */