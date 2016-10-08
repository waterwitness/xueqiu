package com.sleepycat.b.i.d;

import com.sleepycat.b.i.c.av;

public class k
  extends l
{
  private final d d;
  private final long e;
  
  public k(g paramg, String paramString1, String paramString2, d paramd, long paramLong1, long paramLong2)
  {
    super(paramg, paramString1, paramString2, paramLong1);
    this.d = paramd;
    this.e = paramLong2;
  }
  
  public final av a()
  {
    return this.b.c;
  }
  
  public final String b()
  {
    return super.b() + "|" + this.d.toString() + "|" + Long.toString(this.e);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\d\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */