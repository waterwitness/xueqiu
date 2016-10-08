package rx.d.a;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.b.j;
import rx.c.l;
import rx.d.c.f;
import rx.e;
import rx.i;
import rx.j.b;

final class an<R>
{
  static final AtomicLongFieldUpdater<an> c = AtomicLongFieldUpdater.newUpdater(an.class, "b");
  static final int d = (int)(f.e * 0.7D);
  final b a = new b();
  volatile long b;
  int e = 0;
  Object[] f;
  AtomicLong g;
  private final e<? super R> h;
  private final l<? extends R> i;
  
  public an(i<? super R> parami, l<? extends R> paraml)
  {
    this.h = parami;
    this.i = paraml;
    parami.a(this.a);
  }
  
  final void a()
  {
    if (this.f == null) {}
    while (c.getAndIncrement(this) != 0L) {
      return;
    }
    do
    {
      while (this.g.get() > 0L)
      {
        Object[] arrayOfObject = new Object[this.f.length];
        int j = 0;
        int k = 1;
        Object localObject;
        if (j < this.f.length)
        {
          localObject = ((ao)this.f[j]).a.h();
          if (localObject == null) {
            k = 0;
          }
          for (;;)
          {
            j += 1;
            break;
            if (f.b(localObject))
            {
              this.h.a();
              this.a.b();
              return;
            }
            arrayOfObject[j] = f.c(localObject);
          }
        }
        if (k == 0) {
          break;
        }
        for (;;)
        {
          try
          {
            this.h.a(this.i.a(arrayOfObject));
            this.g.decrementAndGet();
            this.e += 1;
            arrayOfObject = this.f;
            k = arrayOfObject.length;
            j = 0;
            if (j >= k) {
              break;
            }
            localObject = ((ao)arrayOfObject[j]).a;
            ((f)localObject).g();
            if (f.b(((f)localObject).h()))
            {
              this.h.a();
              this.a.b();
              return;
            }
          }
          catch (Throwable localThrowable)
          {
            this.h.a(j.a(localThrowable, arrayOfObject));
            return;
          }
          j += 1;
        }
        if (this.e > d)
        {
          arrayOfObject = this.f;
          k = arrayOfObject.length;
          j = 0;
          while (j < k)
          {
            ((ao)arrayOfObject[j]).a(this.e);
            j += 1;
          }
          this.e = 0;
        }
      }
    } while (c.decrementAndGet(this) > 0L);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */