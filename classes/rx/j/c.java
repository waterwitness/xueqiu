package rx.j;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rx.j;

public final class c
  implements j
{
  static final AtomicReferenceFieldUpdater<c, d> b = AtomicReferenceFieldUpdater.newUpdater(c.class, d.class, "a");
  public volatile d a = new d(false, g.a());
  
  public final void a(j paramj)
  {
    if (paramj == null) {
      throw new IllegalArgumentException("Subscription can not be null");
    }
    d locald1;
    d locald2;
    do
    {
      locald1 = this.a;
      if (locald1.a)
      {
        paramj.b();
        return;
      }
      locald2 = new d(locald1.a, paramj);
    } while (!b.compareAndSet(this, locald1, locald2));
  }
  
  public final void b()
  {
    d locald1;
    d locald2;
    do
    {
      locald1 = this.a;
      if (locald1.a) {
        return;
      }
      locald2 = new d(true, locald1.b);
    } while (!b.compareAndSet(this, locald1, locald2));
    locald1.b.b();
  }
  
  public final boolean c()
  {
    return this.a.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\j\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */