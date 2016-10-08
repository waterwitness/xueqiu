package com.sleepycat.b.h;

import java.util.Iterator;
import java.util.List;

final class q
  extends s
{
  private final Iterator<r> e;
  private r f;
  
  static
  {
    if (!p.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  q(p paramp)
  {
    super(paramp);
    this.e = p.d(paramp).iterator();
    if (this.e.hasNext())
    {
      this.f = ((r)this.e.next());
      this.f.a();
      return;
    }
    this.f = null;
  }
  
  public final boolean a(long paramLong1, long paramLong2)
  {
    if (this.f == null) {
      return false;
    }
    if (this.f.f(paramLong1))
    {
      if (this.e.hasNext())
      {
        this.f = ((r)this.e.next());
        this.f.a();
      }
    }
    else
    {
      if ((a) || (this.f.c(paramLong1, paramLong2))) {
        break label96;
      }
      throw new AssertionError(this.f.e(paramLong1));
    }
    this.f = null;
    return false;
    label96:
    if (this.f.c(paramLong1))
    {
      this.f.d(paramLong1);
      this.c = this.f.b(paramLong1, paramLong2);
      return this.c != null;
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */