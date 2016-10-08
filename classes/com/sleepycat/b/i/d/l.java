package com.sleepycat.b.i.d;

abstract class l
  extends h
{
  private final String b;
  private final long d;
  
  public l(g paramg, String paramString1, String paramString2, long paramLong)
  {
    super(paramg, paramString1);
    this.b = paramString2;
    this.d = paramLong;
  }
  
  public String b()
  {
    return super.b() + this.b + "|" + Long.toString(this.d);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\d\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */