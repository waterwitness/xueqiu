package rx.d.a;

import rx.a;
import rx.c;
import rx.d.c.j;
import rx.g.d;
import rx.i;

public final class x<T>
  implements c<T, T>
{
  final rx.c.f<Throwable, ? extends a<? extends T>> a;
  
  public x(rx.c.f<Throwable, ? extends a<? extends T>> paramf)
  {
    this.a = paramf;
  }
  
  private i<? super T> a(final i<? super T> parami)
  {
    i local1 = new i()
    {
      private boolean c = false;
      
      public final void a()
      {
        if (this.c) {
          return;
        }
        this.c = true;
        parami.a();
      }
      
      public final void a(T paramAnonymousT)
      {
        if (this.c) {
          return;
        }
        parami.a(paramAnonymousT);
      }
      
      public final void a(Throwable paramAnonymousThrowable)
      {
        if (this.c)
        {
          rx.b.f.b(paramAnonymousThrowable);
          return;
        }
        this.c = true;
        try
        {
          d.a().b();
          this.e.b();
          ((a)x.this.a.a(paramAnonymousThrowable)).a(parami);
          return;
        }
        catch (Throwable paramAnonymousThrowable)
        {
          parami.a(paramAnonymousThrowable);
        }
      }
      
      public final void a(final rx.f paramAnonymousf)
      {
        parami.a(new rx.f()
        {
          public final void a(long paramAnonymous2Long)
          {
            paramAnonymousf.a(paramAnonymous2Long);
          }
        });
      }
    };
    parami.a(local1);
    return local1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */