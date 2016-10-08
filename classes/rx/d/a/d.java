package rx.d.a;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.d.c.j;
import rx.f;
import rx.i;

final class d<T>
  implements f
{
  private static final AtomicLongFieldUpdater<d> d = AtomicLongFieldUpdater.newUpdater(d.class, "c");
  private final i<? super T> a;
  private final Iterator<? extends T> b;
  private volatile long c = 0L;
  
  private d(i<? super T> parami, Iterator<? extends T> paramIterator)
  {
    this.a = parami;
    this.b = paramIterator;
  }
  
  public final void a(long paramLong)
  {
    if (d.get(this) == Long.MAX_VALUE) {}
    label75:
    do
    {
      do
      {
        return;
        if (paramLong != Long.MAX_VALUE) {
          break;
        }
        d.set(this, paramLong);
        for (;;)
        {
          if (!this.b.hasNext()) {
            break label75;
          }
          if (this.a.e.c()) {
            break;
          }
          this.a.a(this.b.next());
        }
      } while (this.a.e.c());
      this.a.a();
      return;
    } while ((paramLong <= 0L) || (d.getAndAdd(this, paramLong) != 0L));
    long l;
    label176:
    do
    {
      l = this.c;
      paramLong = l;
      for (;;)
      {
        if (!this.b.hasNext()) {
          break label176;
        }
        paramLong -= 1L;
        if (paramLong < 0L) {
          break label176;
        }
        if (this.a.e.c()) {
          break;
        }
        this.a.a(this.b.next());
      }
      if (!this.b.hasNext())
      {
        if (this.a.e.c()) {
          break;
        }
        this.a.a();
        return;
      }
    } while (d.addAndGet(this, -l) != 0L);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */