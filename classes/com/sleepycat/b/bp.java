package com.sleepycat.b;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.n.q;
import com.sleepycat.b.n.z;

public class bp
{
  public z a;
  public final x b;
  public final long c;
  private String e;
  private d f = null;
  private bq g = null;
  
  static
  {
    if (!bp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  public bp(x paramx, z paramz)
  {
    this.b = paramx;
    this.a = paramz;
    paramz.I = this;
    this.c = paramz.k;
  }
  
  private void d()
  {
    ad localad = this.b.a;
    if (localad == null) {
      throw new IllegalStateException("The environment has been closed. This transaction is no longer usable.");
    }
    localad.n();
  }
  
  private void e()
  {
    this.g = this.a.u;
    this.a = null;
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 41	com/sleepycat/b/bp:a	Lcom/sleepycat/b/n/z;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokespecial 78	com/sleepycat/b/bp:d	()V
    //   18: aload_0
    //   19: getfield 39	com/sleepycat/b/bp:b	Lcom/sleepycat/b/x;
    //   22: aload_0
    //   23: invokevirtual 81	com/sleepycat/b/x:a	(Lcom/sleepycat/b/bp;)V
    //   26: aload_0
    //   27: getfield 41	com/sleepycat/b/bp:a	Lcom/sleepycat/b/n/z;
    //   30: invokevirtual 82	com/sleepycat/b/n/z:n	()V
    //   33: aload_0
    //   34: invokespecial 84	com/sleepycat/b/bp:e	()V
    //   37: goto -26 -> 11
    //   40: astore_1
    //   41: aload_0
    //   42: getfield 39	com/sleepycat/b/bp:b	Lcom/sleepycat/b/x;
    //   45: getfield 59	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   48: aload_1
    //   49: invokevirtual 87	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   52: aload_1
    //   53: athrow
    //   54: astore_1
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_1
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	bp
    //   6	2	1	localz	z
    //   40	13	1	localError	Error
    //   54	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	40	java/lang/Error
    //   14	37	40	java/lang/Error
    //   2	7	54	finally
    //   14	37	54	finally
    //   41	54	54	finally
  }
  
  public void b()
  {
    try
    {
      d();
      c();
      this.b.a(this);
      this.a.m();
      this.f = this.a.d();
      e();
      return;
    }
    catch (Error localError)
    {
      this.b.a.a(localError);
      throw localError;
    }
    finally {}
  }
  
  final void c()
  {
    if ((this.a == null) || (this.a.z())) {
      throw new IllegalStateException("Transaction Id " + this.c + " has been closed.");
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while ((!(paramObject instanceof bp)) || (((bp)paramObject).c != this.c)) {
      return false;
    }
    return true;
  }
  
  public int hashCode()
  {
    return (int)this.c;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<Transaction id=\"");
    localStringBuilder.append(this.c).append("\"");
    if (this.e != null)
    {
      localStringBuilder.append(" name=\"");
      localStringBuilder.append(this.e).append("\"");
    }
    localStringBuilder.append(">");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\bp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */