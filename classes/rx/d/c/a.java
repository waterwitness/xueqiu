package rx.d.c;

import java.io.PrintStream;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import rx.c.f;
import rx.j;

public final class a<E>
  implements j
{
  static int d;
  public static final int e;
  private static final d<a> f = new d() {};
  public final b<E> a = new b((byte)0);
  final AtomicInteger b = new AtomicInteger();
  final AtomicInteger c = new AtomicInteger();
  private final c g = new c((byte)0);
  
  static
  {
    d = 256;
    if (e.a()) {
      d = 8;
    }
    String str = System.getProperty("rx.indexed-ring-buffer.size");
    if (str != null) {}
    try
    {
      d = Integer.parseInt(str);
      e = d;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        System.err.println("Failed to set 'rx.indexed-ring-buffer.size' with value " + str + " => " + localException.getMessage());
      }
    }
  }
  
  private int a(f<? super E, Boolean> paramf, int paramInt1, int paramInt2)
  {
    int k = this.b.get();
    b localb = this.a;
    int i;
    int j;
    if (paramInt1 >= e)
    {
      localb = a(paramInt1);
      i = e;
      j = paramInt1 % i;
      i = paramInt1;
      paramInt1 = j;
    }
    for (;;)
    {
      if (localb != null)
      {
        j = paramInt1;
        paramInt1 = i;
        while (j < e)
        {
          if ((paramInt1 >= k) || (paramInt1 >= paramInt2)) {}
          Object localObject;
          do
          {
            return paramInt1;
            localObject = localb.a.get(j);
          } while ((localObject != null) && (!((Boolean)paramf.a(localObject)).booleanValue()));
          paramInt1 += 1;
          j += 1;
        }
        localb = (b)localb.b.get();
        i = paramInt1;
        paramInt1 = 0;
      }
      else
      {
        return i;
        i = paramInt1;
      }
    }
  }
  
  public static final a a()
  {
    return (a)f.b();
  }
  
  private c c(int paramInt)
  {
    if (paramInt < e) {
      return this.g;
    }
    int i = paramInt / e;
    Object localObject = this.g;
    paramInt = 0;
    if (paramInt < i)
    {
      c localc;
      if (((c)localObject).a.get() == null)
      {
        localc = new c();
        if (!((c)localObject).a.compareAndSet(null, localc)) {}
      }
      for (localObject = localc;; localObject = (c)((c)localObject).a.get())
      {
        paramInt += 1;
        break;
      }
    }
    return (c)localObject;
  }
  
  /* Error */
  private int e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 105	rx/d/c/a:c	Ljava/util/concurrent/atomic/AtomicInteger;
    //   6: invokevirtual 111	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   9: istore_2
    //   10: iload_2
    //   11: ifle +27 -> 38
    //   14: aload_0
    //   15: getfield 105	rx/d/c/a:c	Ljava/util/concurrent/atomic/AtomicInteger;
    //   18: iload_2
    //   19: iload_2
    //   20: iconst_1
    //   21: isub
    //   22: invokevirtual 158	java/util/concurrent/atomic/AtomicInteger:compareAndSet	(II)Z
    //   25: istore_3
    //   26: iload_3
    //   27: ifeq -25 -> 2
    //   30: iload_2
    //   31: iconst_1
    //   32: isub
    //   33: istore_2
    //   34: aload_0
    //   35: monitorexit
    //   36: iload_2
    //   37: ireturn
    //   38: iconst_m1
    //   39: istore_2
    //   40: goto -6 -> 34
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	a
    //   43	4	1	localObject	Object
    //   9	31	2	i	int
    //   25	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	10	43	finally
    //   14	26	43	finally
  }
  
  public final int a(f<? super E, Boolean> paramf, int paramInt)
  {
    int i = 0;
    int j = a(paramf, paramInt, this.b.get());
    if ((paramInt > 0) && (j == this.b.get())) {
      paramInt = a(paramf, 0, paramInt);
    }
    do
    {
      return paramInt;
      paramInt = i;
    } while (j == this.b.get());
    return j;
  }
  
  public final b<E> a(int paramInt)
  {
    if (paramInt < e) {
      return this.a;
    }
    int i = paramInt / e;
    Object localObject = this.a;
    paramInt = 0;
    if (paramInt < i)
    {
      b localb;
      if (((b)localObject).b.get() == null)
      {
        localb = new b();
        if (!((b)localObject).b.compareAndSet(null, localb)) {}
      }
      for (localObject = localb;; localObject = (b)((b)localObject).b.get())
      {
        paramInt += 1;
        break;
      }
    }
    return (b<E>)localObject;
  }
  
  public final void b()
  {
    int k = this.b.get();
    b localb = this.a;
    int i = 0;
    while (localb != null)
    {
      int j = 0;
      while (j < e)
      {
        if (i >= k) {
          break label69;
        }
        localb.a.set(j, null);
        j += 1;
        i += 1;
      }
      localb = (b)localb.b.get();
    }
    label69:
    this.b.set(0);
    this.c.set(0);
    f.a(this);
  }
  
  /* Error */
  public final void b(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 105	rx/d/c/a:c	Ljava/util/concurrent/atomic/AtomicInteger;
    //   6: invokevirtual 177	java/util/concurrent/atomic/AtomicInteger:getAndIncrement	()I
    //   9: istore_3
    //   10: iload_3
    //   11: getstatic 55	rx/d/c/a:e	I
    //   14: if_icmpge +15 -> 29
    //   17: aload_0
    //   18: getfield 98	rx/d/c/a:g	Lrx/d/c/c;
    //   21: iload_3
    //   22: iload_1
    //   23: invokevirtual 180	rx/d/c/c:a	(II)V
    //   26: aload_0
    //   27: monitorexit
    //   28: return
    //   29: getstatic 55	rx/d/c/a:e	I
    //   32: istore 4
    //   34: aload_0
    //   35: iload_3
    //   36: invokespecial 182	rx/d/c/a:c	(I)Lrx/d/c/c;
    //   39: iload_3
    //   40: iload 4
    //   42: irem
    //   43: iload_1
    //   44: invokevirtual 180	rx/d/c/c:a	(II)V
    //   47: goto -21 -> 26
    //   50: astore_2
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_2
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	a
    //   0	55	1	paramInt	int
    //   50	4	2	localObject	Object
    //   9	34	3	i	int
    //   32	11	4	j	int
    // Exception table:
    //   from	to	target	type
    //   2	26	50	finally
    //   29	47	50	finally
  }
  
  public final boolean c()
  {
    return false;
  }
  
  /* Error */
  final int d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 184	rx/d/c/a:e	()I
    //   6: istore_2
    //   7: iload_2
    //   8: iflt +65 -> 73
    //   11: iload_2
    //   12: getstatic 55	rx/d/c/a:e	I
    //   15: if_icmpge +39 -> 54
    //   18: aload_0
    //   19: getfield 98	rx/d/c/a:g	Lrx/d/c/c;
    //   22: iload_2
    //   23: invokevirtual 187	rx/d/c/c:a	(I)I
    //   26: istore_2
    //   27: iload_2
    //   28: istore_3
    //   29: iload_2
    //   30: aload_0
    //   31: getfield 103	rx/d/c/a:b	Ljava/util/concurrent/atomic/AtomicInteger;
    //   34: invokevirtual 111	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   37: if_icmpne +13 -> 50
    //   40: aload_0
    //   41: getfield 103	rx/d/c/a:b	Ljava/util/concurrent/atomic/AtomicInteger;
    //   44: invokevirtual 177	java/util/concurrent/atomic/AtomicInteger:getAndIncrement	()I
    //   47: pop
    //   48: iload_2
    //   49: istore_3
    //   50: aload_0
    //   51: monitorexit
    //   52: iload_3
    //   53: ireturn
    //   54: getstatic 55	rx/d/c/a:e	I
    //   57: istore_3
    //   58: aload_0
    //   59: iload_2
    //   60: invokespecial 182	rx/d/c/a:c	(I)Lrx/d/c/c;
    //   63: iload_2
    //   64: iload_3
    //   65: irem
    //   66: invokevirtual 187	rx/d/c/c:a	(I)I
    //   69: istore_2
    //   70: goto -43 -> 27
    //   73: aload_0
    //   74: getfield 103	rx/d/c/a:b	Ljava/util/concurrent/atomic/AtomicInteger;
    //   77: invokevirtual 177	java/util/concurrent/atomic/AtomicInteger:getAndIncrement	()I
    //   80: istore_3
    //   81: goto -31 -> 50
    //   84: astore_1
    //   85: aload_0
    //   86: monitorexit
    //   87: aload_1
    //   88: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	89	0	this	a
    //   84	4	1	localObject	Object
    //   6	64	2	i	int
    //   28	53	3	j	int
    // Exception table:
    //   from	to	target	type
    //   2	7	84	finally
    //   11	27	84	finally
    //   29	48	84	finally
    //   54	70	84	finally
    //   73	81	84	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */