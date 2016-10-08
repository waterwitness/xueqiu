package rx.h;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.c.a;
import rx.g.d;
import rx.j.b;

final class j
  implements Runnable, rx.j
{
  static final AtomicIntegerFieldUpdater<j> d = AtomicIntegerFieldUpdater.newUpdater(j.class, "c");
  final a a;
  final b b;
  volatile int c;
  
  public j(a parama, b paramb)
  {
    this.a = parama;
    this.b = paramb;
  }
  
  public final void b()
  {
    if (d.compareAndSet(this, 0, 1)) {
      this.b.b(this);
    }
  }
  
  public final boolean c()
  {
    return this.c != 0;
  }
  
  public final void run()
  {
    if (c()) {
      return;
    }
    try
    {
      this.a.a();
      return;
    }
    catch (Throwable localThrowable)
    {
      d.a().b();
      Thread localThread = Thread.currentThread();
      localThread.getUncaughtExceptionHandler().uncaughtException(localThread, localThrowable);
      return;
    }
    finally
    {
      b();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */