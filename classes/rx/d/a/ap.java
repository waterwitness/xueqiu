package rx.d.a;

import java.util.concurrent.atomic.AtomicLong;
import rx.f;

final class ap<R>
  extends AtomicLong
  implements f
{
  private an<R> a;
  
  public ap(an<R> paraman)
  {
    this.a = paraman;
  }
  
  public final void a(long paramLong)
  {
    addAndGet(paramLong);
    this.a.a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */