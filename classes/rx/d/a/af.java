package rx.d.a;

import rx.a;
import rx.c;
import rx.g;
import rx.h;
import rx.i;
import rx.j;

class af<T>
  implements c<T, T>
{
  private final ag<T> a;
  private final ah<T> b;
  private final a<? extends T> c;
  private final g d;
  
  af(ag<T> paramag, ah<T> paramah, g paramg)
  {
    this.a = paramag;
    this.b = paramah;
    this.c = null;
    this.d = paramg;
  }
  
  public i<? super T> a(i<? super T> parami)
  {
    h localh = this.d.a();
    parami.a(localh);
    rx.j.e locale = new rx.j.e();
    parami.a(locale);
    parami = new ai(new rx.f.e(parami), this.b, locale, this.c, localh, (byte)0);
    locale.a((j)this.a.a(parami, Long.valueOf(0L), localh));
    return parami;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */