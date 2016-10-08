package com.sleepycat.b.l;

import com.sleepycat.b.c.ao;
import com.sleepycat.b.d.b;

public final class s
  extends r
{
  private final ac[] b;
  
  public s(int paramInt)
  {
    this.b = new ac[paramInt];
  }
  
  public final r a(int paramInt, ac paramac)
  {
    this.b[paramInt] = paramac;
    return this;
  }
  
  public final void a(boolean paramBoolean, b paramb) {}
  
  public final long b()
  {
    return ao.A + ao.c(this.b.length);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */