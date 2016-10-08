package com.sleepycat.b;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ak;
import com.sleepycat.b.c.c;
import com.sleepycat.b.n.q;
import com.sleepycat.b.p.ap;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;

public final class bh
  extends e
{
  private final bi g;
  private ap h;
  
  private bh(bh parambh, boolean paramBoolean)
  {
    super(parambh, paramBoolean);
    this.g = parambh.g;
    this.h = parambh.h;
  }
  
  bh(bi parambi, bp parambp, g paramg)
  {
    super(parambi, parambp, paramg);
    this.g = parambi;
    this.h = parambi.b.a.ad;
  }
  
  bh(bi parambi, q paramq, g paramg)
  {
    super(parambi, paramq, paramg);
    this.g = parambi;
  }
  
  private av a(m paramm1, m paramm2, m paramm3, ao paramao)
  {
    i locali = this.g.i();
    if (locali == null) {
      return av.c;
    }
    return a(locali, paramm1, paramm2, paramm3, paramao);
  }
  
  private av a(m paramm1, m paramm2, m paramm3, ao paramao, ak paramak)
  {
    av localav;
    do
    {
      localav = a(paramm1, paramm2, paramao, paramak);
      if (localav != av.a) {
        return localav;
      }
      localav = a(paramm1, paramm2, paramm3, paramao);
    } while (localav != av.a);
    return localav;
  }
  
  private av a(m paramm1, m paramm2, m paramm3, ao paramao, boolean paramBoolean)
  {
    Object localObject = a(paramm1, paramm2, paramao, paramBoolean);
    if (localObject != av.a) {}
    av localav;
    do
    {
      return (av)localObject;
      localav = a(paramm1, paramm2, paramm3, paramao);
      localObject = localav;
    } while (localav == av.a);
    if (paramBoolean) {}
    for (localObject = ak.a;; localObject = ak.b) {
      return a(paramm1, paramm2, paramm3, paramao, (ak)localObject);
    }
  }
  
  private static void a(m paramm1, m paramm2, m paramm3)
  {
    com.sleepycat.b.p.i.a(paramm1, "key", false);
    com.sleepycat.b.p.i.a(paramm2, "pKey", false);
    com.sleepycat.b.p.i.a(paramm3, "data", false);
  }
  
  public final av a(m paramm)
  {
    throw bi.j();
  }
  
  public final av a(m paramm1, m paramm2)
  {
    throw bi.j();
  }
  
  public final av a(m paramm1, m paramm2, ao paramao)
  {
    m localm = new m();
    b(false);
    a(paramm1, localm, paramm2);
    a(Level.FINEST, "SecondaryCursor.getFirst: ", paramao);
    if (this.h != null) {
      this.h.a(23);
    }
    return a(paramm1, localm, paramm2, paramao, true);
  }
  
  final av a(m paramm1, m paramm2, m paramm3, ao paramao, com.sleepycat.b.c.e parame)
  {
    Object localObject = a(paramm1, paramm2, paramao, parame);
    if (localObject != av.a) {}
    av localav;
    do
    {
      return (av)localObject;
      localav = a(paramm1, paramm2, paramm3, paramao);
      localObject = localav;
    } while (localav == av.a);
    switch (1.a[parame.ordinal()])
    {
    default: 
      throw aa.b();
    case 1: 
      return av.d;
    case 2: 
    case 3: 
      return a(paramm1, paramm2, paramm3, paramao, ak.c);
    }
    return a(paramm1, paramm2, paramm3, paramao, ak.a);
  }
  
  public final av b()
  {
    b(true);
    a("delete");
    a(Level.FINEST, "SecondaryCursor.delete: ", null);
    if (this.h != null) {
      this.h.a(21);
    }
    m localm1 = new m();
    m localm2 = new m();
    av localav = h(localm1, localm2, ao.d);
    Object localObject = localav;
    q localq;
    if (localav == av.a)
    {
      localq = this.a.e;
      localObject = this.g.i();
      if (localObject != null) {
        break label111;
      }
      b(this.c.D());
      localObject = localav;
    }
    label111:
    do
    {
      return (av)localObject;
      localav = ((i)localObject).a(localq, localm2);
      localObject = localav;
    } while (localav == av.a);
    throw this.g.a(localq, localm1, localm2);
  }
  
  public final av b(m paramm1, m paramm2)
  {
    m localm = new m();
    b(true);
    a(paramm1, localm, paramm2);
    a(Level.FINEST, "SecondaryCursor.getCurrent: ", null);
    if (this.h != null) {
      this.h.a(22);
    }
    av localav = h(paramm1, localm, null);
    if (localav != av.a) {
      return localav;
    }
    return a(paramm1, localm, paramm2, null);
  }
  
  public final av b(m paramm1, m paramm2, ao paramao)
  {
    m localm = new m();
    b(false);
    a(paramm1, localm, paramm2);
    a(Level.FINEST, "SecondaryCursor.getLast: ", paramao);
    if (this.h != null) {
      this.h.a(24);
    }
    return a(paramm1, localm, paramm2, paramao, false);
  }
  
  final boolean b(m paramm)
  {
    Object localObject1 = this.g.n;
    boolean bool2 = false;
    boolean bool1 = bool2;
    Object localObject2;
    if (!((bf)localObject1).G)
    {
      if (((bf)localObject1).z == null) {
        break label67;
      }
      localObject2 = new m();
      if (((bf)localObject1).z.a())
      {
        bool1 = bool2;
        if (((m)localObject2).equals(paramm)) {}
      }
      else
      {
        bool1 = true;
      }
    }
    label67:
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (((bf)localObject1).A == null);
      localObject2 = new HashSet();
      localObject1 = ((bf)localObject1).A;
      bool1 = bool2;
    } while (((Set)localObject2).contains(paramm));
    return true;
  }
  
  public final av c(m paramm1, m paramm2, ao paramao)
  {
    m localm = new m();
    b(false);
    a(paramm1, localm, paramm2);
    a(Level.FINEST, "SecondaryCursor.getNext: ", paramao);
    if (this.h != null) {
      this.h.a(25);
    }
    if (this.a.d()) {
      return a(paramm1, localm, paramm2, paramao, true);
    }
    return a(paramm1, localm, paramm2, paramao, ak.a);
  }
  
  public final av d(m paramm1, m paramm2, ao paramao)
  {
    m localm = new m();
    b(false);
    a(paramm1, localm, paramm2);
    a(Level.FINEST, "SecondaryCursor.getPrev: ", paramao);
    if (this.h != null) {
      this.h.a(28);
    }
    if (this.a.d()) {
      return a(paramm1, localm, paramm2, paramao, false);
    }
    return a(paramm1, localm, paramm2, paramao, ak.b);
  }
  
  public final av e(m paramm1, m paramm2, ao paramao)
  {
    m localm = new m();
    b(false);
    com.sleepycat.b.p.i.a(paramm1, "key", true);
    com.sleepycat.b.p.i.a(localm, "pKey", false);
    com.sleepycat.b.p.i.a(paramm2, "data", false);
    a(Level.FINEST, "SecondaryCursor.getSearchKey: ", paramm1, null, paramao);
    return a(paramm1, localm, paramm2, paramao, com.sleepycat.b.c.e.a);
  }
  
  public final av f(m paramm1, m paramm2, ao paramao)
  {
    m localm = new m();
    b(false);
    com.sleepycat.b.p.i.a(paramm1, "key", true);
    com.sleepycat.b.p.i.a(localm, "pKey", false);
    com.sleepycat.b.p.i.a(paramm2, "data", false);
    a(Level.FINEST, "SecondaryCursor.getSearchKeyRange: ", paramm1, paramm2, paramao);
    return a(paramm1, localm, paramm2, paramao, com.sleepycat.b.c.e.c);
  }
  
  public final av g(m paramm1, m paramm2, ao paramao)
  {
    throw bi.j();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\bh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */