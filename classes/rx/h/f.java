package rx.h;

import java.util.concurrent.TimeUnit;
import rx.c.a;
import rx.j;
import rx.j.g;

final class f
  extends rx.h
{
  private final rx.j.b a = new rx.j.b();
  private final h b;
  
  f(h paramh)
  {
    this.b = paramh;
  }
  
  public final j a(a parama)
  {
    return a(parama, 0L, null);
  }
  
  public final j a(a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    if (this.a.c()) {
      return g.b();
    }
    parama = this.b.b(parama, paramLong, paramTimeUnit);
    this.a.a(parama);
    parama.a(this.a);
    return parama;
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */