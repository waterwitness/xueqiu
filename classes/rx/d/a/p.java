package rx.d.a;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.b.g;
import rx.b.j;
import rx.d.c.f;
import rx.i;

final class p<T>
  extends i<T>
{
  static final AtomicIntegerFieldUpdater<p> f = AtomicIntegerFieldUpdater.newUpdater(p.class, "d");
  public int a;
  final r<T> b;
  final q<T> c;
  volatile int d;
  private final f g = f.d();
  
  public p(r<T> paramr, q<T> paramq)
  {
    this.b = paramr;
    this.c = paramq;
    a(this.g);
    a(this.g.b);
  }
  
  private void a(T paramT, boolean paramBoolean)
  {
    boolean bool2 = true;
    int j = 0;
    if (this.b.f()) {}
    for (;;)
    {
      long l;
      try
      {
        l = g() + 0L;
        if (this.c == null) {
          if (paramBoolean)
          {
            this.b.a(this);
            i = j;
            bool1 = this.b.e();
            if (l > 0L) {
              a(l);
            }
            if (i == 0) {
              break label295;
            }
            if (!paramBoolean) {
              break label269;
            }
          }
        }
      }
      finally
      {
        this.b.e();
      }
      try
      {
        this.g.e();
        paramBoolean = bool2;
      }
      catch (g paramT)
      {
        f localf;
        a(paramT);
        paramBoolean = bool2;
        continue;
      }
      if (paramBoolean) {
        this.b.g();
      }
      return;
      try
      {
        this.b.b.a(paramT);
        l += 1L;
        i = j;
      }
      catch (Throwable localThrowable1)
      {
        a(j.a(localThrowable1, paramT));
        continue;
      }
      if (q.a(this.c) > 0L)
      {
        localf = this.g;
        if (localf.a == null) {
          i = 0;
        }
        for (;;)
        {
          if (i == 0)
          {
            if (paramBoolean)
            {
              this.b.a(this);
              i = j;
              break;
              i = localf.a.size();
              continue;
            }
            try
            {
              this.b.b.a(paramT);
              l += 1L;
              q.a.decrementAndGet(this.c);
              i = j;
            }
            catch (Throwable localThrowable2)
            {
              for (;;)
              {
                a(j.a(localThrowable2, paramT));
              }
            }
          }
        }
      }
      int i = 1;
      continue;
      label269:
      this.g.a(paramT);
      paramBoolean = bool2;
      continue;
      label295:
      paramBoolean = bool1;
      continue;
      boolean bool1 = false;
      i = 1;
    }
  }
  
  private int e()
  {
    int j = 0;
    long l = q.a(this.c);
    int i = 0;
    if (i < l)
    {
      Object localObject = this.g.g();
      if (localObject != null)
      {
        int k;
        if (f.b(localObject))
        {
          this.b.a(this);
          k = j;
        }
        for (;;)
        {
          i += 1;
          j = k;
          break;
          try
          {
            boolean bool = f.a(localObject, this.b.b);
            k = j;
            if (!bool) {
              k = j + 1;
            }
          }
          catch (Throwable localThrowable)
          {
            a(j.a(localThrowable, localObject));
            k = j;
          }
        }
      }
    }
    q.a.getAndAdd(this.c, -j);
    return j;
  }
  
  private int f()
  {
    int i = 0;
    for (;;)
    {
      Object localObject = this.g.g();
      if (localObject == null) {
        break;
      }
      if (f.b(localObject)) {
        this.b.a(this);
      } else {
        try
        {
          boolean bool = f.a(localObject, this.b.b);
          if (!bool) {
            i += 1;
          }
        }
        catch (Throwable localThrowable)
        {
          a(j.a(localThrowable, localObject));
        }
      }
    }
    return i;
  }
  
  private int g()
  {
    if (this.c != null) {
      return e();
    }
    return f();
  }
  
  public final void a()
  {
    if (f.compareAndSet(this, 0, 1)) {
      a(null, true);
    }
  }
  
  public final void a(T paramT)
  {
    a(paramT, false);
  }
  
  public final void a(Throwable paramThrowable)
  {
    if (f.compareAndSet(this, 0, 1)) {
      this.b.a(paramThrowable, false);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */