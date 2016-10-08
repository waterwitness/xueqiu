package rx.d.a;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.i;

class h<T>
  extends i<T>
{
  private static final AtomicIntegerFieldUpdater<h> d = AtomicIntegerFieldUpdater.newUpdater(h.class, "c");
  private final i<T> a;
  private final j<T> b;
  private volatile int c = 0;
  
  public h(j<T> paramj, i<T> parami, long paramLong)
  {
    this.b = paramj;
    this.a = parami;
    a(paramLong);
  }
  
  public final void a()
  {
    if (d.compareAndSet(this, 0, 1))
    {
      j localj = this.b;
      localj.a(1L);
      localj.c = null;
      if (j.f.decrementAndGet(localj) > 0) {
        localj.e();
      }
    }
  }
  
  public final void a(T paramT)
  {
    j.a(this.b);
    this.a.a(paramT);
  }
  
  public final void a(Throwable paramThrowable)
  {
    if (d.compareAndSet(this, 0, 1)) {
      this.b.a(paramThrowable);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */