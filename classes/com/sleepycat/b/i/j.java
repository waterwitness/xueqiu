package com.sleepycat.b.i;

import com.sleepycat.b.au;

public final class j
  extends au
{
  public j(String paramString)
  {
    super(null, false, paramString, null);
  }
  
  private j(String paramString, j paramj)
  {
    super(paramString, paramj);
  }
  
  public final au b(String paramString)
  {
    return new j(paramString, this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */