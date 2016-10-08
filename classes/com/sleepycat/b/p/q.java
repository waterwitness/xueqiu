package com.sleepycat.b.p;

import com.sleepycat.b.aa;
import java.text.DecimalFormat;

public final class q
  extends af<p>
{
  p a;
  
  public q(ai paramai, ag paramag, long paramLong1, long paramLong2)
  {
    super(paramai, paramag);
    this.a = new p(paramLong1, paramLong2);
  }
  
  public q(ai paramai, ag paramag, long paramLong1, long paramLong2, byte paramByte)
  {
    super(paramai, paramag);
    this.a = new p(paramLong1, paramLong2, (byte)0);
  }
  
  private q f()
  {
    try
    {
      q localq = (q)super.clone();
      localq.a = new p(this.a);
      return localq;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw aa.a(localCloneNotSupportedException);
    }
  }
  
  public final void a()
  {
    this.a = null;
  }
  
  public final void a(af<p> paramaf)
  {
    p localp = this.a;
    paramaf = (p)paramaf.c();
    localp.a += paramaf.a;
    localp.b += paramaf.b;
  }
  
  public final af<p> b(af<p> paramaf)
  {
    q localq = f();
    p localp = localq.a;
    paramaf = (p)paramaf.c();
    localp.a -= paramaf.a;
    localp.b -= paramaf.b;
    return localq;
  }
  
  protected final String d()
  {
    if (this.a != null) {
      return af.b.format(this.a);
    }
    return af.b.format(0L);
  }
  
  public final void t_()
  {
    if (this.a != null)
    {
      this.a.b = (-this.a.b);
      this.a.a = (-this.a.a);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */