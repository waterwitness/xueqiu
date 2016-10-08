package rx.h;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.c.a;
import rx.h;
import rx.j;
import rx.j.g;

final class c
  extends h
{
  static final AtomicIntegerFieldUpdater<c> b = AtomicIntegerFieldUpdater.newUpdater(c.class, "a");
  volatile int a;
  private final rx.j.b c = new rx.j.b();
  private final d d;
  
  c(d paramd)
  {
    this.d = paramd;
  }
  
  public final j a(a parama)
  {
    return a(parama, 0L, null);
  }
  
  public final j a(a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    if (this.c.c()) {
      return g.b();
    }
    parama = this.d.b(parama, paramLong, paramTimeUnit);
    this.c.a(parama);
    parama.a(this.c);
    return parama;
  }
  
  public final void b()
  {
    if (b.compareAndSet(this, 0, 1))
    {
      b localb = b.c();
      d locald = this.d;
      locald.b = (b.b() + localb.a);
      localb.b.offer(locald);
    }
    this.c.b();
  }
  
  public final boolean c()
  {
    return this.c.c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */