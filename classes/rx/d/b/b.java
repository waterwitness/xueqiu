package rx.d.b;

import java.util.concurrent.atomic.AtomicReference;
import rx.b.i;
import rx.c.a;
import rx.j;

public final class b
  extends AtomicReference<Thread>
  implements Runnable, j
{
  public final rx.j.b a;
  final a b;
  
  public b(a parama)
  {
    this.b = parama;
    this.a = new rx.j.b();
  }
  
  public final void a(rx.j.b paramb)
  {
    this.a.a(new d(this, paramb));
  }
  
  public final void b()
  {
    if (!this.a.c()) {
      this.a.b();
    }
  }
  
  public final boolean c()
  {
    return this.a.c();
  }
  
  public final void run()
  {
    try
    {
      lazySet(Thread.currentThread());
      this.b.a();
      return;
    }
    catch (Throwable localThrowable)
    {
      if ((localThrowable instanceof i)) {}
      for (IllegalStateException localIllegalStateException = new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", localThrowable);; localIllegalStateException = new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", localIllegalStateException))
      {
        rx.g.d.a().b();
        Thread localThread = Thread.currentThread();
        localThread.getUncaughtExceptionHandler().uncaughtException(localThread, localIllegalStateException);
        return;
      }
    }
    finally
    {
      b();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */