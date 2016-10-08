package rx.h;

import java.util.PriorityQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.h;
import rx.j;
import rx.j.g;

final class s
  extends h
  implements j
{
  final PriorityQueue<t> a = new PriorityQueue();
  private final rx.j.a c = new rx.j.a();
  private final AtomicInteger d = new AtomicInteger();
  
  private s(r paramr) {}
  
  private j a(final rx.c.a parama, long paramLong)
  {
    if (this.c.c()) {
      return g.b();
    }
    parama = new t(parama, Long.valueOf(paramLong), r.b.incrementAndGet(this.b), (byte)0);
    this.a.add(parama);
    if (this.d.getAndIncrement() == 0)
    {
      do
      {
        parama = (t)this.a.poll();
        if (parama != null) {
          parama.a.a();
        }
      } while (this.d.decrementAndGet() > 0);
      return g.b();
    }
    g.a(new rx.c.a()
    {
      public final void a()
      {
        PriorityQueue localPriorityQueue = s.this.a;
        if (localPriorityQueue != null) {
          localPriorityQueue.remove(parama);
        }
      }
    });
  }
  
  public final j a(rx.c.a parama)
  {
    return a(parama, System.currentTimeMillis());
  }
  
  public final j a(rx.c.a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    paramLong = System.currentTimeMillis() + paramTimeUnit.toMillis(paramLong);
    return a(new q(parama, this, paramLong), paramLong);
  }
  
  public final void b()
  {
    this.c.b();
  }
  
  public final boolean c()
  {
    return this.c.c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */