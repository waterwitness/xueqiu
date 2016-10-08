package com.sleepycat.b.i.i;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.a.q;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.af;
import com.sleepycat.b.h.u;
import com.sleepycat.b.n.v;
import com.sleepycat.b.p.au;

public final class o
  extends p
  implements u
{
  au a = au.a;
  long b = -1L;
  private byte g = af.B.K;
  
  public o(ad paramad, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramad, paramInt1, paramInt2, paramInt3);
  }
  
  public final void a(long paramLong, ae paramae, com.sleepycat.b.g.a.m paramm)
  {
    if ((paramae.h) && (!paramae.i)) {
      a(paramae.e, paramLong, paramae.b);
    }
    do
    {
      do
      {
        do
        {
          return;
        } while (paramae.b != this.g);
        paramae = (v)((q)paramm).c;
        this.a = paramae.a;
        this.b = paramae.b;
      } while (this.e.b.c());
      if (this.e.b.b(this.a) > 0)
      {
        a();
        return;
      }
    } while (this.e.c.b(this.a) <= 0);
    b(this.a.d(), this.b);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\i\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */