package rx.h;

import rx.c.a;
import rx.h;

final class q
  implements a
{
  private final a a;
  private final h b;
  private final long c;
  
  public q(a parama, h paramh, long paramLong)
  {
    this.a = parama;
    this.b = paramh;
    this.c = paramLong;
  }
  
  public final void a()
  {
    if (this.b.c()) {}
    for (;;)
    {
      return;
      long l;
      if (this.c > System.currentTimeMillis())
      {
        l = this.c - System.currentTimeMillis();
        if (l <= 0L) {}
      }
      try
      {
        Thread.sleep(l);
        if (this.b.c()) {
          continue;
        }
        this.a.a();
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
        throw new RuntimeException(localInterruptedException);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */