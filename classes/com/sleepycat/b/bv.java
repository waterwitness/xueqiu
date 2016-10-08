package com.sleepycat.b;

import com.sleepycat.b.n.q;

public final class bv
  extends bg
{
  public bv(q paramq, String paramString1, String paramString2, m paramm1, m paramm2)
  {
    super(paramq, paramString1, paramString2, paramm1, paramm2);
  }
  
  private bv(String paramString, bv parambv)
  {
    super(paramString, parambv);
  }
  
  public final au b(String paramString)
  {
    return new bv(paramString, this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\bv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */