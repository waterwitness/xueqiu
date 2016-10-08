package com.sleepycat.b.i.d;

import com.sleepycat.b.i.c.av;
import com.sleepycat.b.i.c.t;

public class i
  extends h
{
  private final t c;
  private final b d;
  
  public i(g paramg, t paramt, String paramString, b paramb)
  {
    super(paramg, paramString);
    this.c = paramt;
    this.d = paramb;
  }
  
  public final av a()
  {
    return this.b.a;
  }
  
  public final String b()
  {
    return super.b() + this.d.toString() + "|" + this.c.c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\d\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */