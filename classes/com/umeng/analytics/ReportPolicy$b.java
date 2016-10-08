package com.umeng.analytics;

import u.aly.hg;

public class ReportPolicy$b
  extends ReportPolicy.e
{
  private long a = 10000L;
  private long b;
  private hg c;
  
  public ReportPolicy$b(hg paramhg, long paramLong)
  {
    this.c = paramhg;
    long l = paramLong;
    if (paramLong < this.a) {
      l = this.a;
    }
    this.b = l;
  }
  
  public long a()
  {
    return this.b;
  }
  
  public boolean a(boolean paramBoolean)
  {
    return System.currentTimeMillis() - this.c.d >= this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\ReportPolicy$b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */