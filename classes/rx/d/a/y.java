package rx.d.a;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.b.j;
import rx.c;
import rx.c.e;
import rx.c.g;
import rx.f;
import rx.i;

public final class y<R, T>
  implements c<R, T>
{
  private static final Object c = new Object();
  private final e<R> a;
  private final g<R, ? super T, R> b;
  
  public y(R paramR, g<R, ? super T, R> paramg)
  {
    this(new e()
    {
      public final R call()
      {
        return y.this;
      }
    }, paramg);
  }
  
  private y(e<R> parame, g<R, ? super T, R> paramg)
  {
    this.a = parame;
    this.b = paramg;
  }
  
  public y(g<R, ? super T, R> paramg)
  {
    this(c, paramg);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */