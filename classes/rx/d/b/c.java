package rx.d.b;

import java.util.concurrent.Future;
import rx.j;

final class c
  implements j
{
  private final Future<?> b;
  
  private c(Future<?> paramFuture)
  {
    Future localFuture;
    this.b = localFuture;
  }
  
  public final void b()
  {
    if (this.a.get() != Thread.currentThread())
    {
      this.b.cancel(true);
      return;
    }
    this.b.cancel(false);
  }
  
  public final boolean c()
  {
    return this.b.isCancelled();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */