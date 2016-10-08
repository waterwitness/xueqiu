package rx.d.a;

import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.d.c.j;
import rx.f;
import rx.i;

final class ar<T>
  implements f
{
  private static final AtomicLongFieldUpdater<ar> f = AtomicLongFieldUpdater.newUpdater(ar.class, "e");
  volatile boolean a = false;
  private final a<T> b;
  private final Deque<Object> c;
  private final i<? super T> d;
  private volatile long e = 0L;
  
  public ar(a<T> parama, Deque<Object> paramDeque, i<? super T> parami)
  {
    this.b = parama;
    this.c = paramDeque;
    this.d = parami;
  }
  
  public final void a(long paramLong)
  {
    if (this.e == Long.MAX_VALUE) {}
    for (;;)
    {
      return;
      if (paramLong == Long.MAX_VALUE) {}
      for (paramLong = f.getAndSet(this, Long.MAX_VALUE); this.a; paramLong = f.getAndAdd(this, paramLong))
      {
        b(paramLong);
        return;
      }
    }
  }
  
  final void b(long paramLong)
  {
    if (this.e == Long.MAX_VALUE)
    {
      if (paramLong == 0L) {}
      try
      {
        Iterator localIterator = this.c.iterator();
        while (localIterator.hasNext())
        {
          Object localObject3 = localIterator.next();
          a.a(this.d, localObject3);
        }
        while (paramLong != 0L) {}
      }
      catch (Throwable localThrowable)
      {
        this.d.a(localThrowable);
        return;
        return;
      }
      finally
      {
        this.c.clear();
      }
    }
    label169:
    long l;
    do
    {
      paramLong = this.e;
      int i = 0;
      for (;;)
      {
        paramLong -= 1L;
        if (paramLong < 0L) {
          break label169;
        }
        Object localObject2 = this.c.poll();
        if (localObject2 == null) {
          break label169;
        }
        if ((this.d.e.c()) || (a.a(this.d, localObject2))) {
          break;
        }
        i += 1;
      }
      do
      {
        paramLong = this.e;
        l = paramLong - i;
        if (paramLong == Long.MAX_VALUE) {
          break;
        }
      } while (!f.compareAndSet(this, paramLong, l));
    } while (l != 0L);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */