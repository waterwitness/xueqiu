package rx.d.c;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import rx.c.f;
import rx.j;

public final class i<T extends j>
  implements j
{
  private static final AtomicIntegerFieldUpdater<i> c = AtomicIntegerFieldUpdater.newUpdater(i.class, "b");
  private static final f<j, Boolean> d = new f() {};
  public volatile a<T> a = a.a();
  public volatile int b = 0;
  
  /* Error */
  public final int a(f<T, Boolean> paramf, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 47	rx/d/c/i:b	I
    //   6: iconst_1
    //   7: if_icmpeq +12 -> 19
    //   10: aload_0
    //   11: getfield 45	rx/d/c/i:a	Lrx/d/c/a;
    //   14: astore_3
    //   15: aload_3
    //   16: ifnonnull +9 -> 25
    //   19: iconst_0
    //   20: istore_2
    //   21: aload_0
    //   22: monitorexit
    //   23: iload_2
    //   24: ireturn
    //   25: aload_0
    //   26: getfield 45	rx/d/c/i:a	Lrx/d/c/a;
    //   29: aload_1
    //   30: iload_2
    //   31: invokevirtual 50	rx/d/c/a:a	(Lrx/c/f;I)I
    //   34: istore_2
    //   35: goto -14 -> 21
    //   38: astore_1
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_1
    //   42: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	43	0	this	i
    //   0	43	1	paramf	f<T, Boolean>
    //   0	43	2	paramInt	int
    //   14	2	3	locala	a
    // Exception table:
    //   from	to	target	type
    //   2	15	38	finally
    //   25	35	38	finally
  }
  
  public final int a(T paramT)
  {
    for (;;)
    {
      int i;
      a locala;
      int j;
      try
      {
        if ((this.b == 1) || (this.a == null))
        {
          paramT.b();
          i = -1;
          return i;
        }
        locala = this.a;
        j = locala.d();
        if (j < a.e)
        {
          locala.a.a.set(j, paramT);
          i = j;
          if (this.b != 1) {
            continue;
          }
          paramT.b();
          i = j;
          continue;
        }
        i = a.e;
      }
      finally {}
      locala.a(j).a.set(j % i, paramT);
    }
  }
  
  public final void b()
  {
    if ((c.compareAndSet(this, 0, 1)) && (this.a != null))
    {
      a locala = this.a;
      if (locala != null) {
        locala.a(d, 0);
      }
      locala = this.a;
      this.a = null;
      locala.b();
    }
  }
  
  public final boolean c()
  {
    return this.b == 1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */