package com.sleepycat.b.p;

import com.sleepycat.b.aa;

public final class t
  extends z
{
  public t(ai paramai, ag paramag)
  {
    super(paramai, paramag);
  }
  
  public t(ai paramai, ag paramag, long paramLong)
  {
    super(paramai, paramag);
    this.a = paramLong;
  }
  
  public final void a(af<Long> paramaf)
  {
    throw aa.c("LongArrayStat doesn't support the add operation.");
  }
  
  public final af<Long> b(af<Long> paramaf)
  {
    return e();
  }
  
  protected final String d()
  {
    return j.h(this.a);
  }
  
  public final void t_() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */