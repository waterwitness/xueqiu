package com.sleepycat.b.i.c;

import com.sleepycat.b.i.i.f;
import com.sleepycat.b.i.i.m;
import com.sleepycat.b.i.i.p;

public final class al
{
  private m b;
  
  /* Error */
  public final com.sleepycat.b.p.au a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 11	com/sleepycat/b/i/c/al:a	Lcom/sleepycat/b/i/c/aj;
    //   6: invokestatic 16	com/sleepycat/b/i/c/aj:a	(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;
    //   9: ifnull +24 -> 33
    //   12: aload_0
    //   13: getfield 11	com/sleepycat/b/i/c/al:a	Lcom/sleepycat/b/i/c/aj;
    //   16: invokestatic 16	com/sleepycat/b/i/c/aj:a	(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;
    //   19: getfield 22	com/sleepycat/b/i/i/f:h	Lcom/sleepycat/b/i/i/p;
    //   22: invokevirtual 27	com/sleepycat/b/i/i/p:b	()Lcom/sleepycat/b/i/i/m;
    //   25: getfield 33	com/sleepycat/b/i/i/m:g	Lcom/sleepycat/b/p/au;
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: areturn
    //   33: aload_0
    //   34: getfield 35	com/sleepycat/b/i/c/al:b	Lcom/sleepycat/b/i/i/m;
    //   37: getfield 33	com/sleepycat/b/i/i/m:g	Lcom/sleepycat/b/p/au;
    //   40: astore_1
    //   41: goto -12 -> 29
    //   44: astore_1
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_1
    //   48: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	al
    //   28	13	1	localau	com.sleepycat.b.p.au
    //   44	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	29	44	finally
    //   33	41	44	finally
  }
  
  final void a(boolean paramBoolean)
  {
    try
    {
      if (aj.a(this.a) != null)
      {
        aj.a(this.a).a(paramBoolean);
        this.b = aj.a(this.a).h.b();
        aj.b(this.a);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void b()
  {
    try
    {
      if (aj.a(this.a) != null)
      {
        aj.a(this.a).c();
        this.b = aj.a(this.a).h.b();
        aj.b(this.a);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */