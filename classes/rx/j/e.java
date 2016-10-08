package rx.j;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rx.j;

public final class e
  implements j
{
  static final AtomicReferenceFieldUpdater<e, f> b = AtomicReferenceFieldUpdater.newUpdater(e.class, f.class, "a");
  volatile f a = new f(false, g.a());
  
  public final void a(j paramj)
  {
    if (paramj == null) {
      throw new IllegalArgumentException("Subscription can not be null");
    }
    f localf1;
    f localf2;
    do
    {
      localf1 = this.a;
      if (localf1.a)
      {
        paramj.b();
        return;
      }
      localf2 = new f(localf1.a, paramj);
    } while (!b.compareAndSet(this, localf1, localf2));
    localf1.b.b();
  }
  
  public final void b()
  {
    f localf1;
    f localf2;
    do
    {
      localf1 = this.a;
      if (localf1.a) {
        return;
      }
      localf2 = new f(true, localf1.b);
    } while (!b.compareAndSet(this, localf1, localf2));
    localf1.b.b();
  }
  
  public final boolean c()
  {
    return this.a.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\j\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */