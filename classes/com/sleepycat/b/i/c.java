package com.sleepycat.b.i;

import com.sleepycat.b.au;
import com.sleepycat.b.i;

public final class c
  extends au
{
  private final String a;
  private final i b;
  
  private c(String paramString, c paramc)
  {
    super(paramString, paramc);
    this.a = paramc.a;
    this.b = paramc.b;
  }
  
  public c(String paramString1, String paramString2, i parami)
  {
    super(null, false, paramString1, null);
    this.a = paramString2;
    this.b = parami;
  }
  
  public final au b(String paramString)
  {
    return new c(paramString, this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */