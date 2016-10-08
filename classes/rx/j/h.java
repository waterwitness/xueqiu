package rx.j;

import java.util.concurrent.Future;
import rx.j;

final class h
  implements j
{
  final Future<?> a;
  
  public h(Future<?> paramFuture)
  {
    this.a = paramFuture;
  }
  
  public final void b()
  {
    this.a.cancel(true);
  }
  
  public final boolean c()
  {
    return this.a.isCancelled();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\j\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */