package com.sleepycat.b.p;

import java.text.DecimalFormat;

public class x
  extends z
{
  public x(ai paramai, ag paramag)
  {
    super(paramai, paramag);
    a();
  }
  
  public final void a()
  {
    a(Long.valueOf(Long.MIN_VALUE));
  }
  
  public final boolean a(long paramLong)
  {
    if (this.a < paramLong)
    {
      this.a = paramLong;
      return true;
    }
    return false;
  }
  
  public final af<Long> b(af<Long> paramaf)
  {
    if (this.a < ((Long)paramaf.c()).longValue()) {
      return paramaf.e();
    }
    return e();
  }
  
  protected final String d()
  {
    if (this.a == Long.MIN_VALUE) {
      return "NONE";
    }
    return af.b.format(this.a);
  }
  
  public final void t_() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */