package rx.d.a;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.i;
import rx.j.e;
import rx.j.g;

final class j<T>
  extends i<rx.a<? extends T>>
{
  static final AtomicIntegerFieldUpdater<j> f = AtomicIntegerFieldUpdater.newUpdater(j.class, "d");
  private static final AtomicLongFieldUpdater<j> j = AtomicLongFieldUpdater.newUpdater(j.class, "i");
  final a<rx.a<? extends T>> a = a.a();
  final ConcurrentLinkedQueue<Object> b;
  volatile h<T> c;
  volatile int d;
  private final i<T> g;
  private final e h;
  private volatile long i;
  
  public j(i<T> parami, e parame)
  {
    super(parami);
    this.g = parami;
    this.h = parame;
    this.b = new ConcurrentLinkedQueue();
    a(g.a(new rx.c.a()
    {
      public final void a()
      {
        j.this.b.clear();
      }
    }));
  }
  
  public final void a()
  {
    this.b.add(a.b());
    if (f.getAndIncrement(this) == 0) {
      e();
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    this.g.a(paramThrowable);
    this.e.b();
  }
  
  public final void d()
  {
    a(2L);
  }
  
  final void e()
  {
    if (this.i > 0L)
    {
      localObject = this.b.poll();
      if (a.b(localObject)) {
        this.g.a();
      }
    }
    while (!a.b(this.b.peek()))
    {
      do
      {
        return;
      } while (localObject == null);
      Object localObject = (rx.a)a.d(localObject);
      this.c = new h(this, this.g, this.i);
      this.h.a(this.c);
      ((rx.a)localObject).a(this.c);
      return;
    }
    this.g.a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */