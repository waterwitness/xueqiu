package rx.h;

import java.util.concurrent.TimeUnit;
import rx.h;
import rx.j;
import rx.j.g;

final class n
  extends h
  implements j
{
  final rx.j.a a = new rx.j.a();
  
  private n(m paramm) {}
  
  public final j a(rx.c.a parama)
  {
    parama.a();
    return g.b();
  }
  
  public final j a(rx.c.a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    return a(new q(parama, this, System.currentTimeMillis() + paramTimeUnit.toMillis(paramLong)));
  }
  
  public final void b()
  {
    this.a.b();
  }
  
  public final boolean c()
  {
    return this.a.c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */