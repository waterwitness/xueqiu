package com.umeng.analytics;

import u.aly.hg;

public class ReportPolicy$d
  extends ReportPolicy.e
{
  private long a = 86400000L;
  private hg b;
  
  public ReportPolicy$d(hg paramhg)
  {
    this.b = paramhg;
  }
  
  public boolean a(boolean paramBoolean)
  {
    return System.currentTimeMillis() - this.b.d >= this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\ReportPolicy$d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */