package rx.d.a;

import rx.c;
import rx.f;
import rx.g;
import rx.h;
import rx.i;

public final class ab<T>
  implements c<T, rx.a<T>>
{
  private final g a;
  
  public ab(g paramg)
  {
    this.a = paramg;
  }
  
  private i<? super rx.a<T>> a(final i<? super T> parami)
  {
    final h localh = this.a.a();
    parami.a(localh);
    new i(parami)
    {
      public final void a() {}
      
      public final void a(Throwable paramAnonymousThrowable)
      {
        parami.a(paramAnonymousThrowable);
      }
    };
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */