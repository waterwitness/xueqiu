package com.sleepycat.b.c;

import com.sleepycat.b.a.s;
import com.sleepycat.b.g.af;
import com.sleepycat.b.l.ac;
import com.sleepycat.b.l.y;

final class k
  implements bc
{
  private final s b;
  private final i c;
  
  static
  {
    if (!i.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  k(i parami, s params)
  {
    this.c = parami;
    this.b = params;
  }
  
  public final void a() {}
  
  public final void a(long paramLong, af paramaf, ac paramac, byte[] paramArrayOfByte)
  {
    if ((!a) && (paramLong == -1L)) {
      throw new AssertionError();
    }
    int j = 0;
    int i = j;
    if (paramArrayOfByte != null)
    {
      i = j;
      if ((paramac instanceof y)) {
        i = ((y)paramac).g & 0x7FFFFFFF;
      }
    }
    this.b.b(paramLong, paramaf, i, this.c);
  }
  
  public final void a(long paramLong, y paramy)
  {
    if ((!a) && (paramy == null)) {
      throw new AssertionError();
    }
    this.b.b(paramLong, paramy.a(true, false), 0, this.c);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */