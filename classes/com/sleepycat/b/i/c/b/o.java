package com.sleepycat.b.i.c.b;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.am;
import com.sleepycat.b.i.c.an;
import com.sleepycat.b.i.c.t;
import com.sleepycat.b.i.c.u;
import com.sleepycat.b.i.i.f;
import com.sleepycat.b.i.i.p;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.w;
import java.util.Iterator;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class o
{
  public volatile au a = au.a;
  private final aj b;
  private final Logger c;
  private final long d;
  private final int e;
  private int f = 0;
  
  o(aa paramaa)
  {
    this.b = paramaa.i;
    this.d = this.b.u.a(an.b);
    this.e = this.b.u.a(an.c);
    this.c = w.a(getClass());
  }
  
  public final void a()
  {
    try
    {
      this.f += 1;
      w.e(this.c, this.b, "activeSyncups = " + this.f);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(t paramt)
  {
    Object localObject1 = au.a;
    Object localObject3 = paramt.e().iterator();
    long l1 = 0L;
    u localu;
    Object localObject2;
    long l2;
    if (((Iterator)localObject3).hasNext())
    {
      localu = ((am)((Iterator)localObject3).next()).g;
      localObject2 = localu.a;
      l2 = localu.b;
      if (((au)localObject1).b((au)localObject2) > 0) {
        break label576;
      }
      if (((au)localObject2).a((au)localObject1))
      {
        l1 = Math.min(l2, l1);
        label81:
        localObject1 = localObject2;
      }
    }
    label220:
    label331:
    label516:
    label522:
    label546:
    label571:
    label576:
    for (;;)
    {
      break;
      l1 = l2;
      break label81;
      if (l1 == 0L) {}
      while (((au)localObject1).c()) {
        return;
      }
      localObject3 = paramt.e().iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localu = ((am)((Iterator)localObject3).next()).g;
        localObject2 = localu.a;
        if ((l1 - localu.b <= this.d) && (((au)localObject1).b((au)localObject2) > 0)) {
          localObject1 = localObject2;
        }
      }
      localObject2 = new au(((au)localObject1).c - this.e);
      localObject1 = this.b.aj;
      if (localObject1 != null)
      {
        localObject1 = ((f)localObject1).h.b().b;
        if (((au)localObject1).b((au)localObject2) <= 0) {
          break label571;
        }
      }
      for (;;)
      {
        int k = 0;
        int m = 0;
        localu = null;
        localObject2 = au.a;
        Object localObject4 = null;
        localObject2 = localObject4;
        localObject3 = localu;
        int i = m;
        int j = k;
        try
        {
          if (((au)localObject1).b(this.a) > 0)
          {
            if (this.f != 0) {
              break label546;
            }
            localObject2 = this.b.aj.h.b();
            if ((((com.sleepycat.b.i.i.m)localObject2).b.a(au.a)) || (((com.sleepycat.b.i.i.m)localObject2).b.b((au)localObject1) > 0) || (((com.sleepycat.b.i.i.m)localObject2).c.b((au)localObject1) < 0)) {
              break label516;
            }
            i = 1;
            if ((i != 0) || (!this.c.isLoggable(Level.FINE))) {
              break label522;
            }
            localObject3 = "GroupCBVLSN: " + localObject1 + " is outside VLSN range: " + localObject2 + " Current group:" + paramt;
            j = k;
            i = m;
            localObject2 = localObject4;
          }
          for (;;)
          {
            if (!this.c.isLoggable(Level.FINE)) {
              break;
            }
            if (localObject3 != null) {
              w.d(this.c, this.b, (String)localObject3);
            }
            if (j != 0) {
              w.d(this.c, this.b, "Global CBVLSN changed from " + localObject2 + " to " + localObject1);
            }
            if (i <= 0) {
              break;
            }
            w.d(this.c, this.b, "Global CBVLSN update gated by " + i + " syncups");
            return;
            localObject1 = au.b;
            break label220;
            i = 0;
            break label331;
            localObject2 = this.a;
            this.a = ((au)localObject1);
            j = 1;
            localObject3 = localu;
            i = m;
            continue;
            i = this.f;
            localObject2 = localObject4;
            localObject3 = localu;
            j = k;
          }
          localObject1 = localObject2;
        }
        finally {}
      }
    }
  }
  
  public final void b()
  {
    try
    {
      this.f -= 1;
      w.e(this.c, this.b, "activeSyncups = " + this.f);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final long c()
  {
    if (this.a.c()) {
      return 0L;
    }
    return this.b.aj.a(this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */