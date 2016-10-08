package com.sleepycat.b.i.c.b;

import com.sleepycat.b.c.m;
import com.sleepycat.b.i.c.an;

final class p
{
  final int a;
  int b;
  private final int c;
  private final long d = System.currentTimeMillis();
  
  p(m paramm)
  {
    this.a = paramm.a(an.g);
    int i;
    if (paramm.a(an.i) == 0) {
      if (paramm.a(an.ac))
      {
        i = this.a;
        this.c = i;
      }
    }
    do
    {
      this.b = Math.min(this.c, this.a);
      return;
      i = Integer.MAX_VALUE;
      break;
      this.c = paramm.a(an.i);
    } while (this.c <= this.a);
    throw new IllegalArgumentException(String.format(" The timeout ENV_UNKNOWN_STATE_TIMEOUT(%,d ms) exceeds the timeout ENV_SETUP_TIMEOUT(%,d ms)", new Object[] { Integer.valueOf(this.c), Integer.valueOf(this.a) }));
  }
  
  final int a()
  {
    return Math.max(this.b - (int)(System.currentTimeMillis() - this.d), 0);
  }
  
  final boolean b()
  {
    return this.b == this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */