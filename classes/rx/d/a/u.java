package rx.d.a;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.d.c.j;
import rx.h;
import rx.i;

final class u<T>
  extends i<T>
{
  static final AtomicLongFieldUpdater<u> c = AtomicLongFieldUpdater.newUpdater(u.class, "l");
  static final AtomicLongFieldUpdater<u> f = AtomicLongFieldUpdater.newUpdater(u.class, "d");
  final i<? super T> a;
  final a<T> b = a.a();
  volatile long d;
  private final h g;
  private final v h;
  private final rx.d.c.f i = rx.d.c.f.a();
  private boolean j = false;
  private boolean k = false;
  private volatile long l = 0L;
  
  public u(rx.g paramg, i<? super T> parami)
  {
    this.a = parami;
    this.g = paramg.a();
    this.h = new v(this.g, this.i);
    parami.a(this.h);
    parami.a(new rx.f()
    {
      public final void a(long paramAnonymousLong)
      {
        u.c.getAndAdd(u.this, paramAnonymousLong);
        u.this.e();
      }
    });
    parami.a(this.g);
    parami.a(this);
  }
  
  public final void a()
  {
    if ((this.e.c()) || (this.j)) {
      return;
    }
    this.j = true;
    this.i.e();
    e();
  }
  
  public final void a(T paramT)
  {
    if ((this.e.c()) || (this.j)) {
      return;
    }
    try
    {
      this.i.a(paramT);
      e();
      return;
    }
    catch (rx.b.g paramT)
    {
      a(paramT);
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    if ((this.e.c()) || (this.j)) {
      return;
    }
    this.e.b();
    this.j = true;
    this.k = true;
    rx.d.c.f localf = this.i;
    if (localf.c == null) {
      localf.c = a.a(paramThrowable);
    }
    e();
  }
  
  public final void d()
  {
    a(rx.d.c.f.e);
  }
  
  protected final void e()
  {
    if (f.getAndIncrement(this) == 0L) {
      this.g.a(new rx.c.a()
      {
        public final void a()
        {
          u.a(u.this);
        }
      });
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */