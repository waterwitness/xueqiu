package com.sleepycat.b.i.e;

import com.sleepycat.b.aa;
import com.sleepycat.b.b.d;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.u;
import com.sleepycat.b.i.i.c;
import com.sleepycat.b.i.i.h;
import com.sleepycat.b.i.i.p;
import com.sleepycat.b.n;
import com.sleepycat.b.p.au;

public final class m
  implements f
{
  private final a a;
  
  public m(ad paramad, com.sleepycat.b.i.i.f paramf)
  {
    this.a = new a(paramad, paramf, paramad.u.a(d.L));
  }
  
  public final s a(au paramau, int paramInt)
  {
    try
    {
      s locals = this.a.a(paramau, paramInt);
      return locals;
    }
    catch (n localn)
    {
      localn.a("MasterFeederSource fetching vlsn=" + paramau + " waitTime=" + paramInt);
      throw localn;
    }
  }
  
  public final void a(au paramau)
  {
    a locala = this.a;
    if (paramau.a(au.a)) {
      throw aa.c("startVLSN can't be null");
    }
    Object localObject = locala.d.h.b();
    if (((com.sleepycat.b.i.i.m)localObject).c.b(paramau) < 0) {}
    for (localObject = ((com.sleepycat.b.i.i.m)localObject).c;; localObject = paramau)
    {
      h localh = locala.a;
      localh.d += 1;
      localh.b = com.sleepycat.b.i.i.f.a(localh.c, (au)localObject);
      locala.o = localh.b.b((au)localObject);
      if ((!a.c) && (locala.o == -1L)) {
        throw new AssertionError();
      }
      locala.g.a(locala.o);
      locala.n = locala.g.c;
      locala.t = paramau;
      locala.b = true;
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */