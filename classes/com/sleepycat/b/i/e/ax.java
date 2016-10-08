package com.sleepycat.b.i.e;

import com.sleepycat.b.b.d;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.af;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.b.ac;
import com.sleepycat.b.i.c.b.ag;
import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.h.o;
import com.sleepycat.b.i.i.p;
import com.sleepycat.b.n.ai;
import com.sleepycat.b.p.aq;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;
import com.sleepycat.b.p.w;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ax
{
  public final Logger a;
  public final o b;
  public final t c;
  public final com.sleepycat.b.i.c.b.aa d;
  public final com.sleepycat.b.i.i.f e;
  public final ac f;
  public final aj g;
  public au h = au.a;
  public Long i = Long.valueOf(0L);
  public final boolean j;
  public final q k;
  private az m;
  private final ay<Object> n;
  
  static
  {
    if (!ax.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      l = bool;
      return;
    }
  }
  
  public ax(com.sleepycat.b.i.c.b.aa paramaa, ac paramac, o paramo, t paramt, boolean paramBoolean)
  {
    this.f = paramac;
    this.a = w.a(getClass());
    this.d = paramaa;
    this.e = paramaa.i.aj;
    this.b = paramo;
    this.c = paramt;
    this.g = paramaa.i;
    this.j = paramBoolean;
    this.k = new q(paramaa.i);
    this.n = paramaa.e.h;
  }
  
  private az a(au paramau, long paramLong)
  {
    aj localaj = this.d.i;
    int i1 = localaj.u.a(d.L);
    com.sleepycat.b.i.i.f localf = this.d.i.aj;
    x localx = this.d.a;
    return new az(localaj, localf, paramLong, i1, paramau, j.a(this.d.m(), 0), this.k);
  }
  
  private k a(com.sleepycat.b.i.i.m paramm, au paramau, boolean paramBoolean)
  {
    Object localObject = this.c;
    t localt = this.c;
    localt.getClass();
    ((t)localObject).a(new aa(localt, paramau), this.b);
    localObject = this.c.a(this.b);
    if ((localObject instanceof y)) {
      paramau = ((y)localObject).d();
    }
    do
    {
      return paramau;
      if ((localObject instanceof z))
      {
        w.c(this.a, this.g, "Requested " + paramau + " from " + this.b.a + " but that node did not have that vlsn.");
        throw a(paramau);
      }
      if ((!paramBoolean) || (!(localObject instanceof v))) {
        break;
      }
      paramau = ((v)localObject).a;
      localObject = paramau.d.e;
    } while (paramm.b.b((au)localObject) <= 0);
    throw a((au)localObject);
    throw com.sleepycat.b.aa.a(this.d.i, "Sent EntryRequest, got unexpected response of " + localObject);
  }
  
  private s a()
  {
    Object localObject2 = null;
    int i1 = 1;
    az localaz;
    try
    {
      for (;;)
      {
        localaz = this.m;
        localaz.u = null;
        localaz.a = true;
        if (i1 != 0) {
          localaz.t = localaz.t.e();
        }
        for (;;)
        {
          com.sleepycat.b.i.i.m localm = localaz.d.h.b();
          if (localaz.t.b(localm.b) >= 0) {
            break;
          }
          return null;
          w.c(localaz.b, localaz.e, "Restart ReplicaSyncupReader at vlsn " + localaz.t);
        }
      }
    }
    catch (ba localba)
    {
      localObject1 = localba.a;
      this.m = a((au)localObject1, this.e.b((au)localObject1));
      i1 = 0;
      this.k.c = true;
    }
    Object localObject1 = localObject2;
    if (localaz.e())
    {
      if ((!az.c) && (!af.d(localaz.u.d.b))) {
        throw new AssertionError("Unexpected log type= " + localaz.u);
      }
      localObject1 = localaz.u;
    }
    return (s)localObject1;
  }
  
  private s b(au paramau)
  {
    au localau;
    for (;;)
    {
      try
      {
        Object localObject = this.m;
        ((az)localObject).a = false;
        if (paramau.b(((az)localObject).d.h.b().b) >= 0)
        {
          ((az)localObject).t = paramau;
          if (((az)localObject).e())
          {
            localObject = ((az)localObject).u;
            if (localObject != null) {
              break;
            }
            throw com.sleepycat.b.aa.a(this.g, "Searching for candidate matchpoint " + paramau + " but got null record back ");
          }
        }
      }
      catch (ba localba)
      {
        localau = localba.a;
        if (localau.b(paramau) < 0)
        {
          throw com.sleepycat.b.aa.c("Gap reposition point of " + localau + " should always be >= candidate matchpoint VLSN of " + paramau);
          localau = null;
        }
        else
        {
          this.m = a(paramau, this.e.b(localau));
          this.k.c = true;
        }
      }
    }
    return localau;
  }
  
  public final com.sleepycat.b.i.f a(au paramau)
  {
    t localt1 = this.c;
    t localt2 = this.c;
    localt2.getClass();
    localt1.a(new ao(localt2, paramau), this.b);
    paramau = (ap)this.c.a(this.b);
    return new com.sleepycat.b.i.f(this.d, paramau.a, new HashSet(Arrays.asList(paramau.b)));
  }
  
  public final void a(com.sleepycat.b.i.i.m paramm)
  {
    Object localObject1 = this.g;
    int i1 = com.sleepycat.b.i.ad.a;
    ((aj)localObject1).aj();
    localObject1 = paramm.f;
    if (((au)localObject1).a(au.a))
    {
      a(paramm, au.b, false);
      return;
    }
    k localk = a(paramm, (au)localObject1, true);
    localObject1 = localk.d.e;
    if (this.a.isLoggable(Level.FINE)) {
      w.d(this.a, this.g, "first candidate matchpoint: " + localObject1);
    }
    this.m = a((au)localObject1, this.d.i.x.q);
    Object localObject2 = b((au)localObject1);
    for (;;)
    {
      ae localae1 = ((s)localObject2).d;
      ae localae2 = localk.d;
      if ((localae1.e.a(localae2.e)) && (localae1.h == localae2.h) && (localae1.i == localae2.i) && (af.a(localae1.f, localae1.b, localae2.f, localae2.b)))
      {
        i1 = 1;
        if (i1 != 0) {
          break label293;
        }
      }
      label293:
      for (boolean bool = false;; bool = ((s)localObject2).a().a(localk.a))
      {
        if (bool) {
          break label373;
        }
        localObject2 = this.g;
        i1 = com.sleepycat.b.i.ad.a;
        ((aj)localObject2).aj();
        localObject2 = a();
        if (localObject2 != null) {
          break label312;
        }
        w.c(this.a, this.g, "Looking at candidate matchpoint vlsn " + localObject1 + " but this node went past its available contiguous VLSN range, need network restore.");
        throw a((au)localObject1);
        i1 = 0;
        break;
      }
      label312:
      localObject1 = ((s)localObject2).d.e;
      if (this.a.isLoggable(Level.FINE)) {
        w.d(this.a, this.g, "Next candidate matchpoint: " + localObject1);
      }
      localk = a(paramm, (au)localObject1, false);
    }
    label373:
    paramm = ((s)localObject2).a();
    if ((paramm instanceof ai)) {}
    for (long l1 = ((ai)paramm.h()).e().getTime();; l1 = 0L)
    {
      this.i = Long.valueOf(l1);
      this.h = ((au)localObject1);
      paramm = this.k;
      l1 = this.m.c();
      paramm.a = l1;
      if ((paramm.f != null) && (paramm.f.d == paramm.a))
      {
        paramm.h -= 1;
        if (paramm.d.size() > 0)
        {
          i1 = paramm.d.size() - 1;
          if (((r)paramm.d.get(i1)).d == l1) {
            paramm.d.remove(i1);
          }
          paramm.f = paramm.g;
        }
      }
      w.e(this.a, this.g, "after setting  matchpoint, searchResults=" + this.k);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\ax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */