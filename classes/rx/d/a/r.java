package rx.d.a;

import java.util.Collection;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import rx.d.c.b;
import rx.j;

final class r<T>
  extends rx.i<rx.a<? extends T>>
{
  final a<T> a = a.a();
  final rx.i<? super T> b;
  final q<T> c;
  int d;
  rx.d.c.f f = null;
  int g = 0;
  final rx.c.f<p<T>, Boolean> h = new rx.c.f() {};
  private boolean i;
  private final boolean j;
  private ConcurrentLinkedQueue<Throwable> k;
  private volatile rx.d.c.i<p<T>> l;
  private int m = 0;
  private boolean n = false;
  
  public r(rx.i<? super T> parami, boolean paramBoolean)
  {
    super(parami);
    this.b = parami;
    this.c = new q(this);
    this.j = paramBoolean;
    parami.a(this);
    parami.a(this.c);
  }
  
  private void i()
  {
    if (this.f == null)
    {
      this.f = rx.d.c.f.d();
      a(this.f);
    }
  }
  
  public final void a()
  {
    int i2 = 0;
    for (;;)
    {
      try
      {
        this.i = true;
        i1 = i2;
        if (this.d == 0)
        {
          if (this.f != null)
          {
            i1 = i2;
            if (this.f.f()) {}
          }
        }
        else
        {
          if (i1 != 0) {
            h();
          }
          return;
        }
      }
      finally {}
      int i1 = 1;
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    if (!this.i)
    {
      this.i = true;
      a(paramThrowable, true);
    }
  }
  
  final void a(Throwable paramThrowable, boolean paramBoolean)
  {
    if (this.j) {}
    for (;;)
    {
      try
      {
        if (this.k == null) {
          this.k = new ConcurrentLinkedQueue();
        }
        this.k.add(paramThrowable);
        i1 = 0;
        if (!paramBoolean) {}
        this.b.a(paramThrowable);
      }
      finally
      {
        try
        {
          this.d -= 1;
          if (((this.d == 0) && (this.i)) || (this.d < 0)) {
            break label110;
          }
          if (i1 != 0) {
            h();
          }
          return;
        }
        finally {}
        paramThrowable = finally;
      }
      return;
      label110:
      int i1 = 1;
    }
  }
  
  final void a(p<T> paramp)
  {
    int i2 = 0;
    try
    {
      this.d -= 1;
      int i1 = i2;
      if (this.d == 0)
      {
        i1 = i2;
        if (this.i) {
          i1 = 1;
        }
      }
      localObject = this.l;
      i2 = paramp.a;
      if ((((rx.d.c.i)localObject).b == 1) || (((rx.d.c.i)localObject).a == null) || (i2 < 0))
      {
        if (i1 != 0) {
          h();
        }
        return;
      }
    }
    finally {}
    Object localObject = ((rx.d.c.i)localObject).a;
    if (i2 < rx.d.c.a.e) {}
    int i3;
    for (paramp = ((rx.d.c.a)localObject).a.a.getAndSet(i2, null);; paramp = ((rx.d.c.a)localObject).a(i2).a.getAndSet(i2 % i3, null))
    {
      ((rx.d.c.a)localObject).b(i2);
      paramp = (j)paramp;
      if ((paramp == null) || (paramp == null)) {
        break;
      }
      paramp.b();
      break;
      i3 = rx.d.c.a.e;
    }
  }
  
  public final void d()
  {
    a(rx.d.c.f.e);
  }
  
  /* Error */
  final boolean e()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: iconst_0
    //   6: putfield 53	rx/d/a/r:n	Z
    //   9: aload_0
    //   10: getfield 51	rx/d/a/r:m	I
    //   13: istore_2
    //   14: iload_2
    //   15: ifne +7 -> 22
    //   18: aload_0
    //   19: monitorexit
    //   20: iload_3
    //   21: ireturn
    //   22: iconst_1
    //   23: istore_3
    //   24: goto -6 -> 18
    //   27: astore_1
    //   28: aload_0
    //   29: monitorexit
    //   30: aload_1
    //   31: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	32	0	this	r
    //   27	4	1	localObject	Object
    //   13	2	2	i1	int
    //   1	23	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   4	14	27	finally
  }
  
  /* Error */
  final boolean f()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 53	rx/d/a/r:n	Z
    //   8: ifeq +17 -> 25
    //   11: aload_0
    //   12: aload_0
    //   13: getfield 51	rx/d/a/r:m	I
    //   16: iconst_1
    //   17: iadd
    //   18: putfield 51	rx/d/a/r:m	I
    //   21: aload_0
    //   22: monitorexit
    //   23: iload_2
    //   24: ireturn
    //   25: aload_0
    //   26: iconst_1
    //   27: putfield 53	rx/d/a/r:n	Z
    //   30: aload_0
    //   31: iconst_0
    //   32: putfield 51	rx/d/a/r:m	I
    //   35: iconst_1
    //   36: istore_2
    //   37: goto -16 -> 21
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	r
    //   40	4	1	localObject	Object
    //   1	36	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   4	21	40	finally
    //   25	35	40	finally
  }
  
  final boolean g()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (f()) {}
    for (;;)
    {
      long l1;
      try
      {
        if (this.f != null)
        {
          l1 = q.a(this.c);
          if (l1 >= 0L) {
            break label194;
          }
          i2 = 0;
          Object localObject1 = this.f.g();
          i1 = i2;
          if (localObject1 != null)
          {
            a.a(this.b, localObject1);
            i2 += 1;
            continue;
            if (i2 < l1)
            {
              localObject1 = this.f.g();
              if (localObject1 != null)
              {
                a.a(this.b, localObject1);
                i2 += 1;
                i1 += 1;
                continue;
              }
            }
            q.a.getAndAdd(this.c, -i1);
          }
          if (this.l != null) {
            this.g = this.l.a(this.h, this.g);
          }
          bool1 = e();
          if (i1 > 0) {
            a(i1);
          }
          if (bool1) {
            break;
          }
          bool1 = true;
          return bool1;
        }
        i1 = 0;
        continue;
        i1 = 0;
      }
      finally
      {
        e();
      }
      label194:
      do
      {
        break;
      } while (l1 <= 0L);
      int i2 = 0;
      int i1 = 0;
    }
  }
  
  final void h()
  {
    g();
    if (this.j)
    {
      try
      {
        ConcurrentLinkedQueue localConcurrentLinkedQueue = this.k;
        if ((localConcurrentLinkedQueue == null) || (localConcurrentLinkedQueue.isEmpty())) {
          break label83;
        }
        if (localConcurrentLinkedQueue.size() == 1)
        {
          this.b.a((Throwable)localConcurrentLinkedQueue.poll());
          return;
        }
      }
      finally {}
      this.b.a(new rx.b.a(localCollection, (byte)0));
      return;
      label83:
      this.b.a();
      return;
    }
    this.b.a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */