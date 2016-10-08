package com.sleepycat.b.a;

import com.sleepycat.b.c.i;
import com.sleepycat.b.l.aq;
import com.sleepycat.b.l.e;

final class j
  implements aq
{
  private final i a;
  private final com.sleepycat.b.l.j b;
  private final long c;
  
  j(i parami, com.sleepycat.b.l.j paramj, long paramLong)
  {
    this.a = parami;
    this.b = paramj;
    this.c = paramLong;
  }
  
  public final com.sleepycat.b.l.j a(e parame)
  {
    if ((parame == null) || (parame.b == -1L) || (((com.sleepycat.b.l.j)parame.a(this.a, null)).c != this.b.c)) {
      return null;
    }
    if (com.sleepycat.b.p.j.b(parame.b, this.c) <= 0)
    {
      parame = (com.sleepycat.b.l.j)parame.a(this.a, null);
      parame.a(c.a);
      return parame;
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */