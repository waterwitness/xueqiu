package rx.j;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.j;

public final class a
  implements j
{
  static final AtomicIntegerFieldUpdater<a> b = AtomicIntegerFieldUpdater.newUpdater(a.class, "a");
  volatile int a;
  private final rx.c.a c;
  
  public a()
  {
    this.c = null;
  }
  
  private a(rx.c.a parama)
  {
    this.c = parama;
  }
  
  public static a a()
  {
    return new a();
  }
  
  public static a a(rx.c.a parama)
  {
    return new a(parama);
  }
  
  public final void b()
  {
    if ((b.compareAndSet(this, 0, 1)) && (this.c != null)) {
      this.c.a();
    }
  }
  
  public final boolean c()
  {
    return this.a != 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\j\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */