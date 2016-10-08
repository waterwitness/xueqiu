package rx.d.a;

import rx.c;
import rx.d.c.j;
import rx.f;
import rx.i;

public final class ac<T>
  implements c<T, T>
{
  final int a;
  
  public ac(int paramInt)
  {
    this.a = paramInt;
  }
  
  private i<? super T> a(final i<? super T> parami)
  {
    i local1 = new i()
    {
      int a = 0;
      boolean b = false;
      
      public final void a()
      {
        if (!this.b) {
          parami.a();
        }
      }
      
      public final void a(T paramAnonymousT)
      {
        if (!this.e.c())
        {
          int i = this.a + 1;
          this.a = i;
          if (i >= ac.this.a) {
            this.b = true;
          }
          parami.a(paramAnonymousT);
          if (this.b)
          {
            parami.a();
            this.e.b();
          }
        }
      }
      
      public final void a(Throwable paramAnonymousThrowable)
      {
        if (!this.b) {
          parami.a(paramAnonymousThrowable);
        }
      }
      
      public final void a(final f paramAnonymousf)
      {
        parami.a(new f()
        {
          public final void a(long paramAnonymous2Long)
          {
            long l;
            if (!ac.1.this.b)
            {
              l = ac.this.a - ac.1.this.a;
              if (paramAnonymous2Long < l) {
                paramAnonymousf.a(paramAnonymous2Long);
              }
            }
            else
            {
              return;
            }
            paramAnonymousf.a(l);
          }
        });
      }
    };
    if (this.a == 0)
    {
      parami.a();
      local1.e.b();
    }
    parami.a(local1);
    return local1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */