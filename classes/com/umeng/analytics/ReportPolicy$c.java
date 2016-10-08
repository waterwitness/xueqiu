package com.umeng.analytics;

import u.aly.hb;

public class ReportPolicy$c
  extends ReportPolicy.e
{
  private final int a;
  private hb b;
  
  public ReportPolicy$c(hb paramhb, int paramInt)
  {
    this.a = paramInt;
    this.b = paramhb;
  }
  
  public boolean a(boolean paramBoolean)
  {
    return this.b.a() > this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\ReportPolicy$c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */