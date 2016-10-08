package rx.d.a;

import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.a;
import rx.h;
import rx.i;
import rx.j;

final class ai<T>
  extends i<T>
{
  static final AtomicIntegerFieldUpdater<ai> c = AtomicIntegerFieldUpdater.newUpdater(ai.class, "a");
  static final AtomicLongFieldUpdater<ai> d = AtomicLongFieldUpdater.newUpdater(ai.class, "b");
  volatile int a;
  volatile long b;
  private final rx.j.e f;
  private final Object g = new Object();
  private final rx.f.e<T> h;
  private final ah<T> i;
  private final a<? extends T> j;
  private final h k;
  
  private ai(rx.f.e<T> parame, ah<T> paramah, rx.j.e parame1, a<? extends T> parama, h paramh)
  {
    super(parame);
    this.h = parame;
    this.i = paramah;
    this.f = parame1;
    this.j = parama;
    this.k = paramh;
  }
  
  public final void a()
  {
    for (int m = 1;; m = 0) {
      synchronized (this.g)
      {
        if (c.getAndSet(this, 1) == 0)
        {
          if (m != 0)
          {
            this.f.b();
            this.h.a();
          }
          return;
        }
      }
    }
  }
  
  public final void a(T paramT)
  {
    int m = 0;
    synchronized (this.g)
    {
      if (this.a == 0)
      {
        d.incrementAndGet(this);
        m = 1;
      }
      if (m != 0)
      {
        this.h.a(paramT);
        this.f.a((j)this.i.b(this, Long.valueOf(this.b), this.k));
      }
      return;
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    for (int m = 1;; m = 0) {
      synchronized (this.g)
      {
        if (c.getAndSet(this, 1) == 0)
        {
          if (m != 0)
          {
            this.f.b();
            this.h.a(paramThrowable);
          }
          return;
        }
      }
    }
  }
  
  public final void b(long paramLong)
  {
    for (int m = 1;; m = 0)
    {
      synchronized (this.g)
      {
        if ((paramLong != this.b) || (c.getAndSet(this, 1) != 0)) {
          continue;
        }
        if (m != 0)
        {
          if (this.j == null) {
            this.h.a(new TimeoutException());
          }
        }
        else {
          return;
        }
      }
      this.j.a(this.h);
      this.f.a(this.h);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */