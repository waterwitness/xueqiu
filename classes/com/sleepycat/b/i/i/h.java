package com.sleepycat.b.i.i;

import com.sleepycat.b.p.au;

public final class h
  extends j
{
  static
  {
    if (!f.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public h(f paramf)
  {
    super(paramf);
  }
  
  private long a(au paramau)
  {
    c localc = f.a(this.c, paramau);
    if ((!a) && (localc.d(paramau))) {
      throw new AssertionError("target=" + paramau + "prevBucket=" + localc + " currentBucket=" + this.b);
    }
    return localc.g();
  }
  
  public final long a(au paramau, boolean paramBoolean)
  {
    long l = -1L;
    if ((!a) && (this.d != 1)) {
      throw new AssertionError("startingLsns() called " + this.d + " times");
    }
    c localc = this.b;
    if ((this.b != null) && (!this.b.d(paramau))) {
      if (this.b.e(paramau)) {
        if (paramBoolean) {
          l = a(paramau);
        }
      }
    }
    do
    {
      return l;
      this.b = null;
      if (this.b != null) {
        break;
      }
      this.b = this.c.a(paramau, localc);
      if (this.b.d(paramau)) {
        break;
      }
    } while (!paramBoolean);
    return a(paramau);
    if ((!a) && (!this.b.d(paramau))) {
      throw new AssertionError("vlsn = " + paramau + " currentBucket=" + this.b);
    }
    if (paramBoolean) {
      return this.b.b(paramau);
    }
    return this.b.c(paramau);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\i\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */