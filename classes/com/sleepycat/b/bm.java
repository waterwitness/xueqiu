package com.sleepycat.b;

import com.sleepycat.b.n.q;

public abstract class bm
  extends au
{
  private final String a;
  private final m b;
  private final m c;
  
  public bm(q paramq, String paramString1, String paramString2, m paramm1, m paramm2)
  {
    super(paramq, true, paramString1, null);
    this.a = paramString2;
    this.b = paramm1;
    this.c = paramm2;
  }
  
  bm(String paramString, bm parambm)
  {
    super(paramString, parambm);
    this.a = parambm.a;
    this.b = parambm.b;
    this.c = parambm.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\bm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */