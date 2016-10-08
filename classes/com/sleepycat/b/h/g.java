package com.sleepycat.b.h;

import com.sleepycat.b.a;
import com.sleepycat.b.c.i;
import com.sleepycat.b.g.am;
import com.sleepycat.b.g.au;
import com.sleepycat.b.l.aq;
import com.sleepycat.b.l.e;
import com.sleepycat.b.l.j;

final class g
  implements aq
{
  boolean a;
  boolean b;
  private final i c;
  private final am d;
  private final long e;
  
  g(i parami, am paramam, long paramLong)
  {
    this.c = parami;
    this.a = false;
    this.d = paramam;
    this.e = paramLong;
    this.b = false;
  }
  
  public final j a(e parame)
  {
    if (parame == null) {
      return null;
    }
    j localj = (j)parame.a(this.c, null);
    localj.a(a.c);
    try
    {
      if (localj.c == this.e)
      {
        if (localj.i.e) {
          localj.x();
        }
        this.b = true;
        if (localj.G())
        {
          parame.a(localj.a(this.d, false, false, au.a, false, null));
          this.a = true;
        }
      }
      return null;
    }
    finally
    {
      localj.C();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */