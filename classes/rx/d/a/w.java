package rx.d.a;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import rx.b.g;
import rx.c;
import rx.f;
import rx.i;

public final class w<T>
  implements c<T, T>
{
  final Long a = null;
  final rx.c.a b = null;
  private final a<T> c = a.a();
  
  private i<? super T> a(final i<? super T> parami)
  {
    final ConcurrentLinkedQueue localConcurrentLinkedQueue = new ConcurrentLinkedQueue();
    if (this.a == null) {}
    for (final Object localObject = null;; localObject = new AtomicLong(this.a.longValue()))
    {
      final AtomicLong localAtomicLong1 = new AtomicLong();
      final AtomicLong localAtomicLong2 = new AtomicLong();
      parami.a(new f()
      {
        public final void a(long paramAnonymousLong)
        {
          if (localAtomicLong2.getAndAdd(paramAnonymousLong) == 0L) {
            w.a(localAtomicLong1, localAtomicLong2, localObject, localConcurrentLinkedQueue, parami);
          }
        }
      });
      localObject = new i()
      {
        private AtomicBoolean h = new AtomicBoolean(false);
        
        public final void a()
        {
          if (!this.h.get())
          {
            localConcurrentLinkedQueue.offer(a.b());
            w.a(localAtomicLong1, localAtomicLong2, localObject, localConcurrentLinkedQueue, parami);
          }
        }
        
        public final void a(T paramAnonymousT)
        {
          int i = 1;
          if (localObject == null) {}
          while (i == 0)
          {
            return;
            long l;
            do
            {
              l = localObject.get();
              if (l <= 0L)
              {
                if (this.h.compareAndSet(false, true))
                {
                  this.e.b();
                  parami.a(new g("Overflowed buffer of " + w.this.a));
                  if (w.this.b != null) {
                    w.this.b.a();
                  }
                }
                i = 0;
                break;
              }
            } while (!localObject.compareAndSet(l, l - 1L));
          }
          localConcurrentLinkedQueue.offer(a.a(paramAnonymousT));
          w.a(localAtomicLong1, localAtomicLong2, localObject, localConcurrentLinkedQueue, parami);
        }
        
        public final void a(Throwable paramAnonymousThrowable)
        {
          if (!this.h.get())
          {
            localConcurrentLinkedQueue.offer(a.a(paramAnonymousThrowable));
            w.a(localAtomicLong1, localAtomicLong2, localObject, localConcurrentLinkedQueue, parami);
          }
        }
        
        public final void d()
        {
          a(Long.MAX_VALUE);
        }
      };
      parami.a((rx.j)localObject);
      return (i<? super T>)localObject;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */