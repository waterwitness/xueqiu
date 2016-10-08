package com.sleepycat.b.i;

import com.sleepycat.b.au;
import com.sleepycat.b.bc;

public final class r
  extends au
{
  final bc a;
  
  public r(bc parambc, boolean paramBoolean) {}
  
  public r(String paramString)
  {
    super(null, false, paramString, null);
    this.a = null;
  }
  
  private r(String paramString, r paramr)
  {
    super(paramString, paramr);
    this.a = paramr.a;
  }
  
  public final au b(String paramString)
  {
    return new r(paramString, this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */