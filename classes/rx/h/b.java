package rx.h;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

final class b
{
  private static b d = new b(TimeUnit.SECONDS);
  final long a;
  final ConcurrentLinkedQueue<d> b;
  private final ScheduledExecutorService c;
  
  private b(TimeUnit paramTimeUnit)
  {
    this.a = paramTimeUnit.toNanos(60L);
    this.b = new ConcurrentLinkedQueue();
    this.c = Executors.newScheduledThreadPool(1, a.b());
    this.c.scheduleWithFixedDelay(new Runnable()
    {
      public final void run()
      {
        b localb = b.this;
        if (!localb.b.isEmpty())
        {
          long l = b.b();
          Iterator localIterator = localb.b.iterator();
          while (localIterator.hasNext())
          {
            d locald = (d)localIterator.next();
            if (locald.b > l) {
              break;
            }
            if (localb.b.remove(locald)) {
              locald.b();
            }
          }
        }
      }
    }, this.a, this.a, TimeUnit.NANOSECONDS);
  }
  
  static long b()
  {
    return System.nanoTime();
  }
  
  final d a()
  {
    while (!this.b.isEmpty())
    {
      d locald = (d)this.b.poll();
      if (locald != null) {
        return locald;
      }
    }
    return new d(a.c());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */