package com.sleepycat.b.i.e;

import com.sleepycat.b.i.c.b.i;
import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.c.p;
import com.sleepycat.b.i.c.v;
import com.sleepycat.b.i.e;
import com.sleepycat.b.i.g;
import com.sleepycat.b.p.w;
import java.util.UUID;
import java.util.logging.Logger;

public final class c
{
  private static int g = 0;
  public final com.sleepycat.b.i.c.b.aa a;
  public final com.sleepycat.b.i.h.o b;
  public final x c;
  public x d = null;
  public volatile am e;
  public final Logger f;
  
  public c(com.sleepycat.b.i.c.b.aa paramaa, com.sleepycat.b.i.h.o paramo)
  {
    this.a = paramaa;
    this.b = paramo;
    this.c = paramaa.a;
    this.f = w.a(getClass());
  }
  
  public static int a()
  {
    if (g != 0) {
      return g;
    }
    return 8;
  }
  
  public final void a(t paramt)
  {
    aq localaq;
    do
    {
      localaq = (aq)paramt.a(this.b.a(), aq.class);
      paramt.getClass();
      paramt.a(new ar(paramt, localaq), this.b);
    } while (!localaq.a);
  }
  
  public final void b(t paramt)
  {
    ai localai = (ai)paramt.a(this.b);
    com.sleepycat.b.i.c.t localt = this.a.m;
    com.sleepycat.b.i.c.am localam3 = localt.b(localai.d.a);
    try
    {
      if (localai.d.b != this.d.b) {
        throw new i("The replica node ID sent during protocol negotiation: " + this.d + " differs from the one sent in the MembershipInfo request: " + localai.d.b);
      }
    }
    catch (i locali)
    {
      w.c(this.f, this.a.i, locali.getMessage());
      paramt.getClass();
      paramt.a(new ak(paramt, locali.getMessage()), this.b);
      throw locali;
    }
    if (localam3 != null)
    {
      boolean bool = localam3.c;
      if (bool) {}
    }
    else
    {
      try
      {
        this.a.j.a(new com.sleepycat.b.i.c.am(localai));
        localam3 = this.a.m.a(localai.d.a);
        com.sleepycat.b.i.c.am localam1 = localam3;
        if (localam3 != null) {
          break label306;
        }
        throw com.sleepycat.b.aa.c("Node: " + localai.d + " not found");
      }
      catch (g localg)
      {
        throw new i(localg);
      }
      catch (e locale)
      {
        throw new i(locale);
      }
      catch (v localv)
      {
        throw new i(localv);
      }
    }
    com.sleepycat.b.i.c.am localam2 = localam3;
    if (localam3.d) {
      throw new i("Node: " + localai.d + " is no longer a member of the group. It was explicitly removed.");
    }
    label306:
    if ((localai.h) && (this.a.i.ah())) {
      throw new i("Conflicting Primary designations. Feeder node: " + this.a.a.a + " and replica node: " + localai.d.a + " cannot simultaneously be designated primaries");
    }
    if (!localai.a.equals(localt.a)) {
      throw new i("The feeder belongs to the group: " + localt.a + " but replica id" + this.d + " belongs to the group: " + localai.a);
    }
    if ((!com.sleepycat.b.i.c.t.a(localai.c)) && (!localai.c.equals(localt.b))) {
      throw new i("The environments have the same name: " + localt.a + " but represent different environment instances. The environment at the master has UUID " + localt.b + ", while the replica " + this.d.a + " has UUID: " + localai.c);
    }
    if (!localai.e.equals(localam2.e)) {
      throw new i("Conflicting hostnames for replica id: " + this.d + " Feeder thinks it is: " + localam2.e + " Replica is configured to use: " + localai.e);
    }
    if (localai.f != localam2.f) {
      throw new i("Conflicting ports for replica id: " + this.d + " Feeder thinks it uses: " + localam2.f + " Replica is configured to use: " + localai.f);
    }
    if ((com.sleepycat.b.i.o.b != localam2.b) && (com.sleepycat.b.i.o.a != localam2.b)) {
      throw new i("The replica node: " + this.d + " is of type: " + localam2.b);
    }
    if (!localai.g.equals(localam2.b)) {
      throw new i("Conflicting node types for: " + this.d + " Feeder thinks it uses: " + localam2.b + " Replica is configured as type: " + localai.g);
    }
    this.d.a(localam2.a);
    this.b.a = this.d;
    w.d(this.f, this.a.i, "Channel Mapping: " + this.d + " is at " + this.b.a());
    paramt.getClass();
    paramt.a(new aj(paramt, localt.b, this.d), this.b);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */