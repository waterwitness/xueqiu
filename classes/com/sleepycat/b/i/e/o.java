package com.sleepycat.b.i.e;

import com.sleepycat.b.i.c.b.x;

public final class o
  extends Exception
{
  private final x b;
  private final x c;
  
  o(n paramn)
  {
    this.b = paramn.j();
    this.c = paramn.h();
  }
  
  public final String getMessage()
  {
    return "Master change. Node master id: " + this.c + " Group master id: " + this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */