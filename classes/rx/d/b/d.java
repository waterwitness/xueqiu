package rx.d.b;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.j;
import rx.j.b;

final class d
  extends AtomicBoolean
  implements j
{
  final j a;
  final b b;
  
  public d(j paramj, b paramb)
  {
    this.a = paramj;
    this.b = paramb;
  }
  
  public final void b()
  {
    if (compareAndSet(false, true)) {
      this.b.b(this.a);
    }
  }
  
  public final boolean c()
  {
    return this.a.c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */