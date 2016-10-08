package com.sleepycat.b.i.h;

import com.sleepycat.b.p.r;

public final class g
  extends r
{
  public final d a;
  private final Class<? extends d> b;
  
  public g(d paramd, Class<? extends d> paramClass)
  {
    this.a = paramd;
    this.b = paramClass;
  }
  
  public g(String paramString)
  {
    super(paramString);
    this.a = null;
    this.b = null;
  }
  
  public final String getMessage()
  {
    if (this.a != null) {
      return "Expected message type: " + this.b + " but found: " + this.a.getClass();
    }
    return super.getMessage();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */