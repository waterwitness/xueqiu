package com.sleepycat.b.i.c.a;

import com.sleepycat.b.aa;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

final class b
  extends TimerTask
{
  private final int c;
  private com.sleepycat.b.o.b d;
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public b(a parama, int paramInt, long paramLong, com.sleepycat.b.o.b paramb)
  {
    this.d = paramb;
    this.c = paramInt;
    if ((b)parama.b.put(Integer.valueOf(paramInt), this) != null) {
      throw aa.c("Found an old lease for node: " + paramInt);
    }
    parama.d.schedule(this, paramLong);
  }
  
  public final com.sleepycat.b.o.b a()
  {
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        com.sleepycat.b.o.b localb2 = this.d;
        if (localb2 == null) {
          return (com.sleepycat.b.o.b)localObject1;
        }
        cancel();
        localObject1 = (b)this.b.b.remove(Integer.valueOf(this.c));
        if ((!a) && (localObject1 != this)) {
          throw new AssertionError();
        }
      }
      finally {}
      com.sleepycat.b.o.b localb1 = this.d;
      this.d = null;
    }
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 33	com/sleepycat/b/i/c/a/b:d	Lcom/sleepycat/b/o/b;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 33	com/sleepycat/b/i/c/a/b:d	Lcom/sleepycat/b/o/b;
    //   18: invokevirtual 95	com/sleepycat/b/o/b:b	()V
    //   21: aload_0
    //   22: invokevirtual 97	com/sleepycat/b/i/c/a/b:a	()Lcom/sleepycat/b/o/b;
    //   25: pop
    //   26: goto -15 -> 11
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	b
    //   6	2	1	localb	com.sleepycat.b.o.b
    //   29	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	29	finally
    //   14	26	29	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */