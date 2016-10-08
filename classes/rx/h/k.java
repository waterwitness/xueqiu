package rx.h;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.c.a;
import rx.h;
import rx.j.b;
import rx.j.c;
import rx.j.g;

final class k
  extends h
  implements Runnable
{
  final Executor a;
  final b b;
  final ConcurrentLinkedQueue<j> c;
  final AtomicInteger d;
  
  public k(Executor paramExecutor)
  {
    this.a = paramExecutor;
    this.c = new ConcurrentLinkedQueue();
    this.d = new AtomicInteger();
    this.b = new b();
  }
  
  public final rx.j a(a parama)
  {
    if (this.b.c()) {
      parama = g.b();
    }
    j localj;
    do
    {
      return parama;
      localj = new j(parama, this.b);
      this.b.a(localj);
      this.c.offer(localj);
      parama = localj;
    } while (this.d.getAndIncrement() != 0);
    try
    {
      this.a.execute(this);
      return localj;
    }
    catch (RejectedExecutionException parama)
    {
      this.b.b(localj);
      this.d.decrementAndGet();
      rx.g.d.a().b();
      throw parama;
    }
  }
  
  public final rx.j a(final a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong <= 0L) {
      return a(parama);
    }
    if (this.b.c()) {
      return g.b();
    }
    if ((this.a instanceof ScheduledExecutorService)) {}
    for (ScheduledExecutorService localScheduledExecutorService = (ScheduledExecutorService)this.a;; localScheduledExecutorService = l.a())
    {
      final c localc = new c();
      try
      {
        localc.a(g.a(localScheduledExecutorService.schedule(new Runnable()
        {
          public final void run()
          {
            if (localc.a.a) {
              return;
            }
            localc.a(k.this.a(parama));
          }
        }, paramLong, paramTimeUnit)));
        return localc;
      }
      catch (RejectedExecutionException parama)
      {
        rx.g.d.a().b();
        throw parama;
      }
    }
  }
  
  public final void b()
  {
    this.b.b();
  }
  
  public final boolean c()
  {
    return this.b.c();
  }
  
  public final void run()
  {
    do
    {
      ((j)this.c.poll()).run();
    } while (this.d.decrementAndGet() > 0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */