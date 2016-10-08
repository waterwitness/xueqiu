package com.sleepycat.b.h;

final class t
  extends s
{
  static
  {
    if (!p.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  t(p paramp)
  {
    super(paramp);
  }
  
  public final boolean a(long paramLong1, long paramLong2)
  {
    if (p.c(this.b) == null) {}
    do
    {
      return false;
      if ((!a) && (!p.c(this.b).c(paramLong1, paramLong2))) {
        throw new AssertionError(p.c(this.b).e(paramLong1));
      }
      this.c = p.c(this.b).b(paramLong1);
    } while ((this.c == null) || (!this.c.a(paramLong1, paramLong2)));
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */