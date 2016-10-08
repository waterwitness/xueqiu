package rx.i;

import rx.c.f;
import rx.d.a.a;

final class e<T>
  implements j<T, i<Object>>
{
  final h<Object> a = new h();
  final g b;
  final f<Object, Object> c;
  final f<Object, Object> d;
  final a<T> e = a.a();
  volatile boolean f;
  volatile i<Object> g = this.a.b;
  
  public e(g paramg, f<Object, Object> paramf1, f<Object, Object> paramf2)
  {
    this.b = paramg;
    this.c = paramf1;
    this.d = paramf2;
  }
  
  public final i<Object> a(i<Object> parami, o<? super T> paramo)
  {
    while (parami != this.g)
    {
      i locali = parami.b;
      a.a(paramo, this.d.a(locali.a));
      parami = parami.b;
    }
    return parami;
  }
  
  public final void a()
  {
    if (!this.f)
    {
      this.f = true;
      this.b.a(this.a);
      this.a.a(this.c.a(a.b()));
      this.g = this.a.b;
    }
  }
  
  public final void a(T paramT)
  {
    if (!this.f)
    {
      this.a.a(this.c.a(a.a(paramT)));
      this.b.a(this.a);
      this.g = this.a.b;
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    if (!this.f)
    {
      this.f = true;
      this.b.a(this.a);
      this.a.a(this.c.a(a.a(paramThrowable)));
      this.g = this.a.b;
    }
  }
  
  public final boolean a(o<? super T> paramo)
  {
    try
    {
      paramo.b = false;
      if (paramo.c) {
        return false;
      }
      paramo.g = a((i)paramo.g, paramo);
      return true;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\i\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */