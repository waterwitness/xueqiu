package com.sleepycat.b.i.e;

import com.sleepycat.b.i.c.b.x;
import java.net.InetSocketAddress;

public class n
  implements Cloneable
{
  private final x b;
  private InetSocketAddress c = null;
  private x d = x.c;
  private InetSocketAddress e = null;
  private x f = x.c;
  
  static
  {
    if (!n.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public n(x paramx)
  {
    this.b = paramx;
  }
  
  public final void a(InetSocketAddress paramInetSocketAddress, x paramx)
  {
    try
    {
      this.c = paramInetSocketAddress;
      this.d = paramx;
      return;
    }
    finally
    {
      paramInetSocketAddress = finally;
      throw paramInetSocketAddress;
    }
  }
  
  public final boolean a()
  {
    boolean bool;
    for (;;)
    {
      try
      {
        if (this.b.b == this.d.b)
        {
          bool = true;
          if ((a) || (!bool) || (this.b.b == this.d.b)) {
            break;
          }
          throw new AssertionError();
        }
      }
      finally {}
      bool = false;
    }
    return bool;
  }
  
  /* Error */
  public final boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 44	com/sleepycat/b/i/e/n:b	Lcom/sleepycat/b/i/c/b/x;
    //   6: getfield 48	com/sleepycat/b/i/c/b/x:b	I
    //   9: istore_2
    //   10: aload_0
    //   11: getfield 42	com/sleepycat/b/i/e/n:f	Lcom/sleepycat/b/i/c/b/x;
    //   14: getfield 48	com/sleepycat/b/i/c/b/x:b	I
    //   17: istore_3
    //   18: iload_2
    //   19: iload_3
    //   20: if_icmpne +11 -> 31
    //   23: iconst_1
    //   24: istore 4
    //   26: aload_0
    //   27: monitorexit
    //   28: iload 4
    //   30: ireturn
    //   31: iconst_0
    //   32: istore 4
    //   34: goto -8 -> 26
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	n
    //   37	4	1	localObject	Object
    //   9	12	2	i	int
    //   17	4	3	j	int
    //   24	9	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	18	37	finally
  }
  
  /* Error */
  public final boolean c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 42	com/sleepycat/b/i/e/n:f	Lcom/sleepycat/b/i/c/b/x;
    //   6: invokevirtual 53	com/sleepycat/b/i/c/b/x:a	()Z
    //   9: ifne +32 -> 41
    //   12: aload_0
    //   13: getfield 38	com/sleepycat/b/i/e/n:d	Lcom/sleepycat/b/i/c/b/x;
    //   16: getfield 48	com/sleepycat/b/i/c/b/x:b	I
    //   19: istore_2
    //   20: aload_0
    //   21: getfield 42	com/sleepycat/b/i/e/n:f	Lcom/sleepycat/b/i/c/b/x;
    //   24: getfield 48	com/sleepycat/b/i/c/b/x:b	I
    //   27: istore_3
    //   28: iload_2
    //   29: iload_3
    //   30: if_icmpne +11 -> 41
    //   33: iconst_1
    //   34: istore 4
    //   36: aload_0
    //   37: monitorexit
    //   38: iload 4
    //   40: ireturn
    //   41: iconst_0
    //   42: istore 4
    //   44: goto -8 -> 36
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	n
    //   47	4	1	localObject	Object
    //   19	12	2	i	int
    //   27	4	3	j	int
    //   34	9	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	28	47	finally
  }
  
  public Object clone()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = super.clone();
        return localObject1;
      }
      catch (CloneNotSupportedException localCloneNotSupportedException)
      {
        if (!a) {
          throw new AssertionError();
        }
      }
      finally {}
      Object localObject3 = null;
    }
  }
  
  public final void d()
  {
    try
    {
      this.e = null;
      this.f = x.c;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void e()
  {
    try
    {
      if (!c()) {
        throw new o(this);
      }
    }
    finally {}
  }
  
  public final void f()
  {
    try
    {
      this.e = this.c;
      this.f = this.d;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final InetSocketAddress g()
  {
    try
    {
      InetSocketAddress localInetSocketAddress = this.e;
      return localInetSocketAddress;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final x h()
  {
    try
    {
      x localx = this.f;
      return localx;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final InetSocketAddress i()
  {
    try
    {
      InetSocketAddress localInetSocketAddress = this.c;
      return localInetSocketAddress;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final x j()
  {
    try
    {
      x localx = this.d;
      return localx;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */