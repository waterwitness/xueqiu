package com.sleepycat.b.i.c.b;

import com.sleepycat.b.i.b.s;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class b
{
  private static long h = 5000L;
  private s a = null;
  private int b = 0;
  private int c = 0;
  private int d = 0;
  private CountDownLatch e = null;
  private long f = 0L;
  private long g = h;
  
  public final void a()
  {
    try
    {
      if (this.e != null) {
        this.e.countDown();
      }
      this.e = null;
      this.a = null;
      this.f = 0L;
      return;
    }
    finally {}
  }
  
  /* Error */
  public final void a(s params)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 28	com/sleepycat/b/i/c/b/b:a	Lcom/sleepycat/b/i/b/s;
    //   6: ifnull +21 -> 27
    //   9: aload_1
    //   10: aload_0
    //   11: getfield 28	com/sleepycat/b/i/c/b/b:a	Lcom/sleepycat/b/i/b/s;
    //   14: invokeinterface 52 2 0
    //   19: istore_2
    //   20: iload_2
    //   21: ifgt +6 -> 27
    //   24: aload_0
    //   25: monitorexit
    //   26: return
    //   27: aload_0
    //   28: getfield 36	com/sleepycat/b/i/c/b/b:e	Ljava/util/concurrent/CountDownLatch;
    //   31: ifnull +10 -> 41
    //   34: aload_0
    //   35: getfield 36	com/sleepycat/b/i/c/b/b:e	Ljava/util/concurrent/CountDownLatch;
    //   38: invokevirtual 45	java/util/concurrent/CountDownLatch:countDown	()V
    //   41: aload_0
    //   42: new 42	java/util/concurrent/CountDownLatch
    //   45: dup
    //   46: iconst_1
    //   47: invokespecial 55	java/util/concurrent/CountDownLatch:<init>	(I)V
    //   50: putfield 36	com/sleepycat/b/i/c/b/b:e	Ljava/util/concurrent/CountDownLatch;
    //   53: aload_0
    //   54: aload_1
    //   55: putfield 28	com/sleepycat/b/i/c/b/b:a	Lcom/sleepycat/b/i/b/s;
    //   58: aload_0
    //   59: invokestatic 61	java/lang/System:currentTimeMillis	()J
    //   62: aload_0
    //   63: getfield 40	com/sleepycat/b/i/c/b/b:g	J
    //   66: ladd
    //   67: putfield 38	com/sleepycat/b/i/c/b/b:f	J
    //   70: goto -46 -> 24
    //   73: astore_1
    //   74: aload_0
    //   75: monitorexit
    //   76: aload_1
    //   77: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	78	0	this	b
    //   0	78	1	params	s
    //   19	2	2	i	int
    // Exception table:
    //   from	to	target	type
    //   2	20	73	finally
    //   27	41	73	finally
    //   41	70	73	finally
  }
  
  /* Error */
  public final void b(s params)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 28	com/sleepycat/b/i/c/b/b:a	Lcom/sleepycat/b/i/b/s;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnonnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_1
    //   15: aload_0
    //   16: getfield 28	com/sleepycat/b/i/c/b/b:a	Lcom/sleepycat/b/i/b/s;
    //   19: invokeinterface 52 2 0
    //   24: iflt -13 -> 11
    //   27: aload_0
    //   28: getfield 36	com/sleepycat/b/i/c/b/b:e	Ljava/util/concurrent/CountDownLatch;
    //   31: invokevirtual 45	java/util/concurrent/CountDownLatch:countDown	()V
    //   34: goto -23 -> 11
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	b
    //   0	42	1	params	s
    //   6	2	2	locals	s
    // Exception table:
    //   from	to	target	type
    //   2	7	37	finally
    //   14	34	37	finally
  }
  
  public final boolean b()
  {
    label116:
    for (;;)
    {
      try
      {
        CountDownLatch localCountDownLatch = this.e;
        if (localCountDownLatch == null) {
          return false;
        }
        long l1 = this.f;
        long l2 = System.currentTimeMillis();
        this.b += 1;
        boolean bool = localCountDownLatch.await(l1 - l2, TimeUnit.MILLISECONDS);
        if (bool) {
          try
          {
            this.d += 1;
            a();
            return true;
          }
          finally {}
        }
        if (this.f - System.currentTimeMillis() > 0L) {
          break label116;
        }
      }
      finally {}
      this.c += 1;
      a();
      return false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */