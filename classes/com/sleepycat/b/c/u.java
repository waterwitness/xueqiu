package com.sleepycat.b.c;

import com.sleepycat.b.l.aq;
import com.sleepycat.b.l.e;
import com.sleepycat.b.l.j;

final class u
  implements aq
{
  int a;
  private final i b;
  
  u(i parami)
  {
    this.b = parami;
    this.a = 0;
  }
  
  public final j a(e parame)
  {
    if (parame == null) {
      return null;
    }
    this.a = ((j)parame.a(this.b, null)).j;
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */