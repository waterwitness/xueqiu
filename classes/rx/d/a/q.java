package rx.d.a;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;

final class q<T>
  implements rx.f
{
  static final AtomicLongFieldUpdater<q> a = AtomicLongFieldUpdater.newUpdater(q.class, "c");
  private final r<T> b;
  private volatile long c = 0L;
  
  public q(r<T> paramr)
  {
    this.b = paramr;
  }
  
  public final void a(long paramLong)
  {
    if (this.c == Long.MAX_VALUE) {}
    for (;;)
    {
      return;
      if (paramLong == Long.MAX_VALUE)
      {
        this.c = Long.MAX_VALUE;
        return;
      }
      a.getAndAdd(this, paramLong);
      if (!this.b.g()) {
        continue;
      }
      int j = 0;
      r localr = this.b;
      int i = j;
      try
      {
        if (this.b.d == 0)
        {
          i = j;
          if (this.b.f != null)
          {
            i = j;
            if (this.b.f.f()) {
              i = 1;
            }
          }
        }
        if (i == 0) {
          continue;
        }
        this.b.h();
        return;
      }
      finally {}
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */