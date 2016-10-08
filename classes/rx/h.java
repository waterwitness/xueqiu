package rx;

import java.util.concurrent.TimeUnit;
import rx.c.a;
import rx.j.c;
import rx.j.d;

public abstract class h
  implements j
{
  public abstract j a(a parama);
  
  public final j a(final a parama, long paramLong1, long paramLong2, TimeUnit paramTimeUnit)
  {
    paramLong2 = paramTimeUnit.toNanos(paramLong2);
    long l1 = TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    long l2 = paramTimeUnit.toNanos(paramLong1);
    final c localc = new c();
    localc.a(a(new a()
    {
      long a = 0L;
      
      public final void a()
      {
        if (!localc.a.a)
        {
          parama.a();
          long l1 = this.d;
          long l2 = this.a + 1L;
          this.a = l2;
          long l3 = this.e;
          localc.a(h.this.a(this, l1 + l2 * l3 - TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis()), TimeUnit.NANOSECONDS));
        }
      }
    }, paramLong1, paramTimeUnit));
    return localc;
  }
  
  public abstract j a(a parama, long paramLong, TimeUnit paramTimeUnit);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */