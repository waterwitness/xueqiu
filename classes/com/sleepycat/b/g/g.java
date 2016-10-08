package com.sleepycat.b.g;

import com.sleepycat.b.c.ax;
import com.sleepycat.b.c.h;
import com.sleepycat.b.g.a.f;
import com.sleepycat.b.g.a.o;
import com.sleepycat.b.p.au;

public class g
  extends av
{
  public static g a;
  public final f b;
  public ax c = null;
  public h d = null;
  
  static
  {
    if (!g.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      a = new g(false, f.a);
      return;
    }
  }
  
  public g(au paramau, o paramo)
  {
    super(paramau);
    this.b = paramo.h;
    if (f.a(this.b)) {
      this.c = paramo.j;
    }
    while (this.b != f.d) {
      return;
    }
    this.d = paramo.i;
  }
  
  public g(boolean paramBoolean, f paramf)
  {
    super(paramBoolean);
    this.b = paramf;
  }
  
  public final f a()
  {
    return this.b;
  }
  
  public final ax b()
  {
    if ((!e) && (!f.a(this.b))) {
      throw new AssertionError();
    }
    return this.c;
  }
  
  public final h c()
  {
    if ((!e) && (this.b != f.d)) {
      throw new AssertionError();
    }
    return this.d;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    localStringBuilder.append("opType=").append(this.b);
    localStringBuilder.append("truncDbId=").append(this.d);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */