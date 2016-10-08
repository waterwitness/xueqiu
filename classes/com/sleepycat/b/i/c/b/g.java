package com.sleepycat.b.i.c.b;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.m;
import com.sleepycat.b.i.a.a;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.an;
import com.sleepycat.b.i.c.t;
import com.sleepycat.b.i.p;
import com.sleepycat.b.p.w;
import java.util.logging.Logger;

public final class g
{
  volatile int a;
  private final aj b;
  private final Logger c;
  
  public g()
  {
    this.b = null;
    this.c = null;
  }
  
  public g(aj paramaj)
  {
    this.b = paramaj;
    this.c = w.a(getClass());
    this.a = paramaj.u.a(an.u);
    if (this.a > 0) {
      w.b(this.c, paramaj, "Electable group size override set to:" + this.a);
    }
  }
  
  public final int a(p paramp)
  {
    int j = 1;
    if (this.a > 0) {
      j = paramp.a(this.a);
    }
    for (;;)
    {
      return j;
      aa localaa = this.b.am;
      if ((localaa.A.a) && (paramp.equals(p.b))) {}
      for (int i = 1; i == 0; i = 0) {
        return paramp.a(localaa.m.h());
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */