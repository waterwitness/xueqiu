package com.sleepycat.b.g;

import com.sleepycat.b.p.j;

public enum au
{
  static
  {
    if (!au.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      a = new au("NO", 0);
      b = new au("YES", 1);
      c = new au("BEFORE_CKPT_END", 2);
      e = new au[] { a, b, c };
      return;
    }
  }
  
  private au() {}
  
  public final boolean a(long paramLong1, long paramLong2)
  {
    boolean bool2 = false;
    if ((!d) && (paramLong1 == -1L)) {
      throw new AssertionError();
    }
    boolean bool1 = bool2;
    switch (1.a[ordinal()])
    {
    default: 
      bool1 = bool2;
      if (!d) {
        throw new AssertionError();
      }
      break;
    case 2: 
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramLong2 == -1L);
      bool1 = bool2;
    } while (j.b(paramLong1, paramLong2) >= 0);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */