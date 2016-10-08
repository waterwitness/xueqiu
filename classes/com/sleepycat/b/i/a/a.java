package com.sleepycat.b.i.a;

import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.p.w;
import java.util.logging.Logger;

public final class a
{
  public volatile boolean a;
  public final b b;
  public final aj c;
  public final Logger d;
  
  public a(aj paramaj)
  {
    this.c = paramaj;
    this.b = new c(paramaj);
    this.d = w.a(getClass());
  }
  
  /* Error */
  public final boolean a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 25	com/sleepycat/b/i/a/a:b	Lcom/sleepycat/b/i/a/b;
    //   6: invokeinterface 42 1 0
    //   11: ifeq +17 -> 28
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 44	com/sleepycat/b/i/a/a:a	Z
    //   19: aload_0
    //   20: getfield 44	com/sleepycat/b/i/a/a:a	Z
    //   23: istore_2
    //   24: aload_0
    //   25: monitorexit
    //   26: iload_2
    //   27: ireturn
    //   28: aload_0
    //   29: iconst_0
    //   30: putfield 44	com/sleepycat/b/i/a/a:a	Z
    //   33: goto -14 -> 19
    //   36: astore_1
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_1
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	a
    //   36	4	1	localObject	Object
    //   23	4	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	19	36	finally
    //   19	24	36	finally
    //   28	33	36	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */