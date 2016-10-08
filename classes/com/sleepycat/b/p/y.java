package com.sleepycat.b.p;

import java.text.DecimalFormat;

public final class y
  extends z
{
  public final void a()
  {
    a(Long.valueOf(Long.MAX_VALUE));
  }
  
  public final void a(long paramLong)
  {
    if (this.a > paramLong) {}
    for (;;)
    {
      this.a = paramLong;
      return;
      paramLong = this.a;
    }
  }
  
  public final af<Long> b(af<Long> paramaf)
  {
    if (this.a > ((Long)paramaf.c()).longValue()) {
      return paramaf.e();
    }
    return e();
  }
  
  protected final String d()
  {
    if (this.a == Long.MAX_VALUE) {
      return "NONE";
    }
    return af.b.format(this.a);
  }
  
  public final void t_() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */