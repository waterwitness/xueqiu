package com.sleepycat.b.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.an;
import com.sleepycat.b.l.ac;
import com.sleepycat.b.l.ah;
import com.sleepycat.b.l.y;
import com.sleepycat.b.n;
import com.sleepycat.b.n.h;
import com.sleepycat.b.n.l;
import com.sleepycat.b.n.o;
import com.sleepycat.b.n.q;
import com.sleepycat.b.p.ab;
import com.sleepycat.b.t;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public class c
  implements Cloneable
{
  private static long l;
  public volatile com.sleepycat.b.l.a a;
  public volatile int b;
  public volatile com.sleepycat.b.l.a c;
  public final i d;
  public q e;
  public final boolean f;
  public byte g;
  public com.sleepycat.b.a h;
  public boolean i;
  private final int k;
  private ThreadLocal<com.sleepycat.b.l.am> m;
  
  static
  {
    if (!c.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      j = bool;
      l = 0L;
      return;
    }
  }
  
  public c(i parami, q paramq)
  {
    this(parami, paramq, true);
  }
  
  public c(i parami, q paramq, boolean paramBoolean)
  {
    long l1 = l + 1L;
    l = l1;
    this.k = ((int)l1);
    this.a = null;
    this.b = -1;
    this.f = paramBoolean;
    this.d = parami;
    this.e = paramq;
    this.e.a(this);
    this.h = com.sleepycat.b.a.a;
    this.g = 1;
  }
  
  private com.sleepycat.b.av a(byte[] paramArrayOfByte, com.sleepycat.b.m paramm1, com.sleepycat.b.m paramm2, com.sleepycat.b.m paramm3, com.sleepycat.b.m paramm4, d paramd, com.sleepycat.b.g.av paramav)
  {
    ad localad = this.d.c;
    w localw = this.d.f();
    if ((!j) && (!paramd.a())) {
      throw new AssertionError();
    }
    long l2 = paramd.a;
    if ((!j) && (l2 == -1L)) {
      throw new AssertionError();
    }
    if (paramm3 == null) {}
    for (;;)
    {
      byte[] arrayOfByte2;
      try
      {
        if ((paramm1.f) || (localad.D.O) || (!localw.c()))
        {
          localy = (y)this.a.g(this.b);
          arrayOfByte2 = this.a.h(this.b);
          if (localy == null) {
            break label460;
          }
          arrayOfByte1 = localy.f;
          if (!paramm1.f) {
            break label212;
          }
          paramm1 = y.b(paramm1, arrayOfByte1);
          if ((paramArrayOfByte == null) || (com.sleepycat.b.l.w.a(arrayOfByte2, paramArrayOfByte, this.d.p) == 0)) {
            break label220;
          }
          throw new t("Can't replace a duplicate with data that is unequal according to the duplicate comparator.");
        }
      }
      finally
      {
        c();
      }
      y localy = (y)this.a.j(this.b);
      continue;
      label212:
      paramm1 = y.b(paramm1);
      continue;
      label220:
      if (paramm3 != null)
      {
        if ((!j) && (arrayOfByte1 == null)) {
          throw new AssertionError();
        }
        y.a(paramm3, arrayOfByte1);
      }
      if (paramm2 != null) {
        y.a(paramm2, arrayOfByte2);
      }
      long l1;
      if (localy != null)
      {
        l1 = localy.v_();
        localy.f = paramm1;
        localy.l();
      }
      for (;;)
      {
        paramm2 = this.d;
        paramm1 = arrayOfByte2;
        if (paramArrayOfByte != null) {
          paramm1 = paramArrayOfByte;
        }
        long l3 = localy.a(localad, paramm2, paramm1, l2, this.e, paramd.b(), paramav);
        if (paramm4 != null) {
          localy.a(paramm4);
        }
        this.a.a(this.b, l1, l3, paramArrayOfByte, localy);
        if ((this.d.h()) && (!this.d.g()) && (this.a.j(this.b) != null)) {
          this.a.e(this.b);
        }
        c();
        a(Level.FINER, "Mod:", this.a, this.b, l2, l3);
        return com.sleepycat.b.av.a;
        localy = localw.a(localad, paramm1);
        this.a.a(this.b, localy, null);
        l1 = localy.v_();
      }
      label460:
      byte[] arrayOfByte1 = null;
    }
  }
  
  private d a(o paramo, boolean paramBoolean)
  {
    d locald = new d();
    locald.a = this.a.k(this.b);
    if ((this.a.o(this.b)) || (this.a.l(this.b))) {}
    for (boolean bool = true;; bool = false)
    {
      locald.c = bool;
      if (locald.a != -1L) {
        break label112;
      }
      if ((j) || (this.a.o(this.b))) {
        break;
      }
      throw new AssertionError();
    }
    locald.b = true;
    return locald;
    label112:
    if ((paramBoolean) && (this.d.c.y.a.b(Long.valueOf(locald.a))))
    {
      this.e.a(this.d);
      locald.d = true;
      if (!j) {
        d(paramo);
      }
      return locald;
    }
    if (this.e.r()) {}
    for (;;)
    {
      try
      {
        locald.e = this.e.a(locald.a, paramo, true, this.d);
        if (locald.e.a == h.f) {
          break;
        }
        if (!j) {
          d(paramo);
        }
        return locald;
      }
      catch (an paramo)
      {
        c();
        throw paramo;
      }
      locald.e = this.e.b(locald.a, paramo, false, this.d);
    }
    c();
    locald.e = this.e.a(locald.a, paramo, false, this.d);
    b();
    if ((this.a.o(this.b)) || (this.a.l(this.b))) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      locald.c = paramBoolean;
      long l1 = this.a.k(this.b);
      if (locald.a == l1) {
        break label409;
      }
      a(locald);
      locald.a = l1;
      if (l1 != -1L) {
        break;
      }
      if ((j) || (this.a.o(this.b))) {
        break label402;
      }
      throw new AssertionError();
    }
    label402:
    locald.b = true;
    return locald;
    label409:
    if (!j) {
      d(paramo);
    }
    return locald;
  }
  
  private void a(d paramd)
  {
    long l1;
    Object localObject;
    if (paramd.e != null)
    {
      l1 = paramd.a;
      localObject = paramd.e.a;
      if ((localObject != h.a) && (localObject != h.b)) {
        break label49;
      }
      this.e.d(l1);
    }
    for (;;)
    {
      paramd.e = null;
      return;
      label49:
      if ((localObject == h.c) || (localObject == h.d))
      {
        localObject = this.e;
        ((q)localObject).j.b(l1, (q)localObject);
      }
    }
  }
  
  public static void a(i parami, long paramLong1, long paramLong2, q paramq)
  {
    Object localObject = parami.c.y.a.a(Long.valueOf(paramLong1));
    if (localObject == null) {}
    for (;;)
    {
      return;
      Iterator localIterator = ((Set)localObject).iterator();
      while (localIterator.hasNext())
      {
        q localq = ((com.sleepycat.b.n.j)localIterator.next()).f();
        if (localq != paramq) {
          localq.a(paramLong1, paramLong2, parami);
        }
      }
      parami = ((Set)localObject).iterator();
      while (parami.hasNext())
      {
        localObject = ((com.sleepycat.b.n.j)parami.next()).f();
        if ((localObject != paramq) && (((q)localObject).q())) {
          ((q)localObject).d(paramLong1);
        }
      }
    }
  }
  
  public static void a(i parami, o paramo, boolean paramBoolean, g paramg)
  {
    com.sleepycat.b.m localm1 = new com.sleepycat.b.m();
    com.sleepycat.b.m localm2 = new com.sleepycat.b.m();
    for (;;)
    {
      try
      {
        locala = com.sleepycat.b.n.a.a(parami.c);
      }
      finally
      {
        int n;
        com.sleepycat.b.av localav;
        paramo = null;
        paramg = null;
        if (paramo != null)
        {
          paramo.c();
          paramo.a(null);
        }
        if (paramg != null) {
          paramg.a_(true);
        }
      }
      try
      {
        localc = new c(parami, locala);
      }
      finally
      {
        paramo = null;
        paramg = locala;
      }
      try
      {
        localc.i = paramBoolean;
        if (!localc.a(true)) {
          continue;
        }
        parami = localc.b(localm1, localm2, paramo);
        n = 0;
      }
      finally
      {
        paramg = locala;
        paramo = localc;
        continue;
        continue;
        continue;
        continue;
      }
      if (n != 0) {
        continue;
      }
      if ((parami != com.sleepycat.b.av.a) || (paramg.a(localc, localm1))) {
        break label204;
      }
      n = 1;
      if (n != 0) {
        break label201;
      }
      parami = localc.a(localm1, localm2, paramo, true, false, null);
      localav = com.sleepycat.b.av.a;
      if (parami == localav) {
        break label198;
      }
      n = 1;
    }
    localc.c();
    localc.a(null);
    locala.a_(true);
  }
  
  private void a(com.sleepycat.b.l.a parama)
  {
    if (parama != null)
    {
      if ((!j) && (!parama.F())) {
        throw new AssertionError();
      }
      parama.a(this);
    }
  }
  
  private void a(y paramy, com.sleepycat.b.m paramm)
  {
    if (paramm != null) {
      paramy.a(paramm);
    }
    this.g = 2;
    if ((this.d.h()) && (!this.d.g()) && (this.a.j(this.b) != null)) {
      this.a.e(this.b);
    }
  }
  
  private void a(Level paramLevel, com.sleepycat.b.l.a parama, long paramLong, int paramInt)
  {
    ad localad = this.d.c;
    if (localad.v.isLoggable(paramLevel))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Ins:");
      localStringBuilder.append(" bin=");
      localStringBuilder.append(parama.c);
      localStringBuilder.append(" lnLsn=");
      localStringBuilder.append(com.sleepycat.b.p.j.h(paramLong));
      localStringBuilder.append(" index=");
      localStringBuilder.append(paramInt);
      com.sleepycat.b.p.w.a(localad.v, localad, paramLevel, localStringBuilder.toString());
    }
  }
  
  private void a(Level paramLevel, String paramString, com.sleepycat.b.l.a parama, int paramInt, long paramLong1, long paramLong2)
  {
    ad localad = this.d.c;
    if (localad.v.isLoggable(paramLevel))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      localStringBuilder.append(" bin=");
      localStringBuilder.append(parama.c);
      localStringBuilder.append(" lnIdx=");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(" oldLnLsn=");
      localStringBuilder.append(com.sleepycat.b.p.j.h(paramLong1));
      localStringBuilder.append(" newLnLsn=");
      localStringBuilder.append(com.sleepycat.b.p.j.h(paramLong2));
      com.sleepycat.b.p.w.a(localad.v, localad, paramLevel, localStringBuilder.toString());
    }
  }
  
  private boolean a(y paramy, byte[] paramArrayOfByte, com.sleepycat.b.g.av paramav)
  {
    ad localad = this.d.c;
    this.e.a(this.d);
    Object localObject = new com.sleepycat.b.l.e(paramy, paramArrayOfByte, -1L);
    j();
    int n = this.a.b((com.sleepycat.b.l.e)localObject);
    if ((0x20000 & n) == 0)
    {
      this.b = (n & 0xFFFEFFFF);
      return false;
    }
    this.b = (n & 0xFFFDFFFF);
    localObject = new com.sleepycat.b.n.am();
    ((com.sleepycat.b.n.am)localObject).f = true;
    try
    {
      long l1 = paramy.a(localad, this.d, paramArrayOfByte, -1L, this.e, (com.sleepycat.b.n.am)localObject, paramav);
      if (l1 == -1L) {
        this.a.b(this.b);
      }
      this.a.c(this.b, l1);
      paramy.a(this.a);
      a(Level.FINER, this.a, l1, this.b);
      return true;
    }
    finally
    {
      if (-1L == -1L) {
        this.a.b(this.b);
      }
    }
  }
  
  private void b(c paramc)
  {
    ad localad = this.d.c;
    if ((this.h != com.sleepycat.b.a.e) && (this.h != com.sleepycat.b.a.f) && ((this.h != com.sleepycat.b.a.d) || ((!localad.G()) && (!localad.A.c.d)))) {}
    label58:
    int n;
    do
    {
      do
      {
        do
        {
          do
          {
            return;
          } while (this.a == null);
          if (paramc != null)
          {
            com.sleepycat.b.l.a locala = paramc.a;
            n = paramc.b;
            paramc = locala;
          }
          for (;;)
          {
            switch (1.a[this.h.ordinal()])
            {
            default: 
              if (j) {
                break label58;
              }
              throw new AssertionError();
              paramc = null;
              n = -1;
            }
          }
        } while ((this.a == paramc) && (this.b == n));
        f();
        return;
        if (this.a != paramc) {
          break;
        }
      } while (this.b == n);
      f();
      return;
      localad.A.a(this.a, com.sleepycat.b.d.e.d);
      return;
      if ((this.a != paramc) && (localad.G())) {
        break;
      }
    } while (this.b == n);
    f();
    return;
    localad.A.a(this.a, com.sleepycat.b.d.e.d);
  }
  
  private boolean d(o paramo)
  {
    if (paramo == o.f) {}
    boolean bool1;
    boolean bool2;
    boolean bool3;
    do
    {
      do
      {
        do
        {
          return true;
        } while ((this.a == null) || (this.b < 0));
        paramo = (y)this.a.j(this.b);
      } while (paramo == null);
      bool1 = this.a.o(this.b);
      bool2 = this.a.l(this.b);
      bool3 = paramo.i();
    } while ((j) || ((bool3) && ((bool1) || (bool2))) || ((!bool3) && (!bool2)));
    throw new AssertionError("Deleted state mismatch LNDeleted = " + bool3 + " PD = " + bool2 + " KD = " + bool1);
  }
  
  private boolean d(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.a != null)) {
      return this.a.F();
    }
    return true;
  }
  
  private com.sleepycat.b.l.am i()
  {
    if (ad.s() > 0)
    {
      if (this.m == null) {
        this.m = new ThreadLocal();
      }
      return (com.sleepycat.b.l.am)this.m.get();
    }
    return null;
  }
  
  private void j()
  {
    if (this.a != null) {
      a(this.a);
    }
  }
  
  private void k()
  {
    com.sleepycat.b.l.a locala = b();
    if (locala != null)
    {
      locala.b(this);
      locala.C();
    }
  }
  
  private void l()
  {
    this.c.a(this.h);
    this.c.b(this);
    this.c.C();
    this.c = null;
  }
  
  public final int a(com.sleepycat.b.m paramm, e parame, o paramo)
  {
    return a(paramm, parame, paramo, null);
  }
  
  public final int a(com.sleepycat.b.m paramm, e parame, o paramo, Comparator<byte[]> paramComparator)
  {
    int i5 = 1;
    int i4 = 0;
    if ((!j) && (!b(false))) {
      throw new AssertionError(h());
    }
    if ((!j) && (parame != e.a) && (parame != e.c)) {
      throw new AssertionError(parame);
    }
    k();
    this.a = null;
    boolean bool = parame.e;
    com.sleepycat.b.l.b localb = new com.sleepycat.b.l.b();
    for (;;)
    {
      try
      {
        paramm = com.sleepycat.b.l.w.a(paramm);
        this.a = ((com.sleepycat.b.l.a)this.d.b.a(paramm, com.sleepycat.b.l.aj.a, localb, this.h, paramComparator));
        if (this.a == null) {
          break label327;
        }
        a(this.a);
        this.b = this.a.a(paramm, true, bool, paramComparator);
        if (bool) {
          break label383;
        }
        n = 1;
        if (this.b < 0) {
          break label318;
        }
        if ((this.b & 0x10000) == 0) {
          break label312;
        }
        this.b &= 0xFFFEFFFF;
        i1 = 1;
        if (!bool) {
          break label309;
        }
        paramm = a(paramo, false);
        if (paramm.a())
        {
          n = 1;
          if ((parame == e.c) && (n != 0) && (localb.a) && (this.b == this.a.f - 1))
          {
            i2 = 1;
            break label339;
            this.g = 2;
            if (n == 0) {
              continue;
            }
            n = i5;
            break label354;
          }
        }
        else
        {
          a(paramm);
          n = 0;
          continue;
        }
        i2 = 0;
        break label339;
        n = 0;
      }
      catch (n paramm)
      {
        c();
        throw paramm;
      }
      int i2 = 0;
      break label362;
      label309:
      continue;
      label312:
      int i1 = 0;
      continue;
      label318:
      i1 = 0;
      i2 = 0;
      continue;
      label327:
      i1 = 0;
      i2 = 0;
      int n = 0;
      continue;
      label339:
      int i3 = i2;
      i2 = i1;
      i1 = i3;
      continue;
      label354:
      if (i2 != 0)
      {
        i2 = 2;
        label362:
        i3 = i4;
        if (i1 != 0) {
          i3 = 4;
        }
        return i2 | n | i3;
        label383:
        n = 0;
      }
    }
  }
  
  public final com.sleepycat.b.av a(com.sleepycat.b.g.av paramav)
  {
    if ((!j) && (!b(true))) {
      throw new AssertionError(h());
    }
    ad localad = this.d.c;
    w localw = this.d.f();
    if (this.a == null) {
      return com.sleepycat.b.av.c;
    }
    b();
    d locald;
    long l2;
    try
    {
      locald = a(o.b, true);
      if (!locald.a())
      {
        a(locald);
        paramav = com.sleepycat.b.av.c;
        return paramav;
      }
      l2 = locald.a;
      if ((!j) && (l2 == -1L)) {
        throw new AssertionError();
      }
    }
    finally
    {
      c();
    }
    y localy;
    byte[] arrayOfByte;
    long l1;
    if ((localad.D.O) || (!localw.d()))
    {
      localy = (y)this.a.g(this.b);
      arrayOfByte = this.a.h(this.b);
      if (localy == null) {
        break label341;
      }
      l1 = localy.v_();
      localy.h();
      localy.l();
    }
    for (;;)
    {
      long l3 = localy.a(localad, this.d, arrayOfByte, l2, this.e, locald.b(), paramav);
      this.a.a(this.b, l1, l3, null, localy);
      this.a.m(this.b);
      if ((!this.d.g()) && (this.a.j(this.b) != null)) {
        this.a.e(this.b);
      }
      this.e.a(this.a);
      c();
      a(Level.FINER, "Delete", this.a, this.b, l2, l3);
      return com.sleepycat.b.av.a;
      localy = (y)this.a.j(this.b);
      break;
      label341:
      localy = localw.a(localad);
      l1 = localy.v_();
      this.a.a(this.b, localy, null);
    }
  }
  
  public final com.sleepycat.b.av a(com.sleepycat.b.m paramm1, com.sleepycat.b.m paramm2, o paramo)
  {
    if ((!j) && (!b(true))) {
      throw new AssertionError(h());
    }
    if (this.a == null) {
      return com.sleepycat.b.av.c;
    }
    b();
    return b(paramm1, paramm2, paramo);
  }
  
  public final com.sleepycat.b.av a(com.sleepycat.b.m paramm1, com.sleepycat.b.m paramm2, o paramo, boolean paramBoolean1, boolean paramBoolean2, au paramau)
  {
    if ((!j) && (!b(true))) {
      throw new AssertionError(h());
    }
    if ((!j) && (!d(paramBoolean2))) {
      throw new AssertionError(h());
    }
    com.sleepycat.b.av localav = com.sleepycat.b.av.d;
    try
    {
      if (this.a == null) {
        break label478;
      }
      if ((j) || (d(paramBoolean2))) {
        break label116;
      }
      throw new AssertionError(h());
    }
    finally
    {
      if (j) {
        break label465;
      }
    }
    label116:
    boolean bool;
    if (com.sleepycat.b.f.d.a() != 0)
    {
      throw new AssertionError(com.sleepycat.b.f.d.c());
      if (!paramBoolean2)
      {
        b();
        bool = paramBoolean2;
        label130:
        int n;
        if (paramBoolean1)
        {
          n = this.b + 1;
          this.b = n;
          if (n < this.a.f) {}
        }
        else
        {
          if (paramBoolean1) {
            break label315;
          }
          n = this.b - 1;
          this.b = n;
          if (n < 0) {
            break label315;
          }
        }
        if ((paramau == null) || (paramau.a(this.a.h(this.b)))) {
          break label248;
        }
        paramm1 = com.sleepycat.b.av.d;
        c();
      }
    }
    for (;;)
    {
      if ((!j) && (com.sleepycat.b.f.d.a() != 0))
      {
        throw new AssertionError(com.sleepycat.b.f.d.c());
        bool = false;
        break label130;
        label248:
        if (b(paramm1, paramm2, paramo) == com.sleepycat.b.av.a)
        {
          i();
          paramm1 = com.sleepycat.b.av.a;
          continue;
        }
        if ((!j) && (com.sleepycat.b.f.d.a() != 0)) {
          throw new AssertionError();
        }
        paramBoolean2 = bool;
        if (this.c == null) {
          break;
        }
        l();
        paramBoolean2 = bool;
        break;
        label315:
        if (this.c != null)
        {
          c();
          l();
          b();
        }
        this.c = this.a;
        this.a = null;
        if (paramBoolean1) {}
        for (com.sleepycat.b.l.a locala = this.d.b.a(this.c, this.h);; locala = (com.sleepycat.b.l.a)this.d.b.a(this.c, false, this.h))
        {
          if (locala != null) {
            break label412;
          }
          paramm1 = com.sleepycat.b.av.d;
          break;
        }
        label412:
        if (paramBoolean1) {}
        for (this.b = -1;; this.b = locala.f)
        {
          a(locala);
          this.a = locala;
          paramBoolean2 = true;
          break;
        }
      }
      if (this.c != null) {
        l();
      }
      return paramm1;
      label465:
      if (this.c != null) {
        l();
      }
      throw paramm1;
      label478:
      paramm1 = localav;
    }
  }
  
  public final com.sleepycat.b.av a(byte[] paramArrayOfByte, y paramy, com.sleepycat.b.g.av paramav)
  {
    if ((!j) && (!b(false))) {
      throw new AssertionError(h());
    }
    if ((!j) && (com.sleepycat.b.f.d.a() != 0)) {
      throw new AssertionError();
    }
    return (com.sleepycat.b.av)a(paramy, paramArrayOfByte, false, null, null, null, paramav).a;
  }
  
  public final com.sleepycat.b.av a(byte[] paramArrayOfByte, com.sleepycat.b.m paramm1, com.sleepycat.b.m paramm2, com.sleepycat.b.m paramm3, com.sleepycat.b.m paramm4, com.sleepycat.b.g.av paramav)
  {
    if ((!j) && (!b(true))) {
      throw new AssertionError(h());
    }
    if (paramm2 != null) {
      paramm2.a(null);
    }
    if (paramm3 != null) {
      paramm3.a(null);
    }
    if (paramm4 != null) {
      paramm4.a(null);
    }
    if (this.a == null) {
      return com.sleepycat.b.av.d;
    }
    b();
    d locald;
    try
    {
      locald = a(o.b, true);
      if (!locald.a())
      {
        a(locald);
        paramArrayOfByte = com.sleepycat.b.av.d;
        return paramArrayOfByte;
      }
    }
    finally
    {
      c();
    }
    return a(paramArrayOfByte, paramm1, paramm2, paramm3, paramm4, locald, paramav);
  }
  
  public final c a(boolean paramBoolean, com.sleepycat.b.a parama, c paramc)
  {
    try
    {
      b();
      c localc = (c)super.clone();
      localc.a(parama);
      if (!this.f) {
        localc.e = this.e.f();
      }
      localc.e.a(localc);
      if ((paramc != null) && (paramc.g == 2))
      {
        localc.a = paramc.a;
        localc.b = paramc.b;
      }
      if (paramBoolean) {
        localc.j();
      }
      c();
      return localc;
    }
    catch (CloneNotSupportedException parama)
    {
      return null;
    }
    finally
    {
      c();
    }
  }
  
  public final y a(o paramo)
  {
    if ((!j) && (!b(true))) {
      throw new AssertionError(h());
    }
    if (this.a == null) {
      return null;
    }
    b();
    return b(paramo);
  }
  
  public final ab<com.sleepycat.b.av, Boolean> a(y paramy, byte[] paramArrayOfByte, boolean paramBoolean, com.sleepycat.b.m paramm1, com.sleepycat.b.m paramm2, com.sleepycat.b.m paramm3, com.sleepycat.b.g.av paramav)
  {
    if (paramm2 != null) {
      paramm2.a(null);
    }
    if (paramm3 != null) {
      paramm3.a(null);
    }
    Object localObject2 = this.d.b;
    Object localObject1 = b();
    int i1;
    int n;
    long l1;
    if (localObject1 != null)
    {
      if ((((com.sleepycat.b.l.a)localObject1).P()) || (!((com.sleepycat.b.l.a)localObject1).b(paramArrayOfByte))) {
        ((com.sleepycat.b.l.a)localObject1).C();
      }
    }
    else
    {
      for (;;)
      {
        i1 = 1;
        n = i1;
        try
        {
          ((ah)localObject2).d.c();
          n = i1;
          if (((ah)localObject2).c()) {
            break label467;
          }
          n = i1;
          ((ah)localObject2).d.d();
          n = i1;
          ((ah)localObject2).d.a();
          n = i1;
          if (((ah)localObject2).c())
          {
            n = i1;
            ((ah)localObject2).d.d();
          }
        }
        finally
        {
          if (n != 0) {
            ((ah)localObject2).d.d();
          }
        }
      }
      n = i1;
      com.sleepycat.b.a locala = this.h;
      n = i1;
      localObject1 = ((ah)localObject2).a.c;
      n = i1;
      com.sleepycat.b.g.am localam = ((ad)localObject1).w;
      n = i1;
      al localal = ((ad)localObject1).t;
      n = i1;
      localObject1 = new com.sleepycat.b.l.a(((ah)localObject2).a, paramArrayOfByte, ((ah)localObject2).c, 1);
      n = i1;
      ((com.sleepycat.b.l.a)localObject1).a(locala);
      n = i1;
      l1 = ((com.sleepycat.b.l.a)localObject1).a(localam, null);
      n = i1;
      com.sleepycat.b.l.j localj = new com.sleepycat.b.l.j(((ah)localObject2).a, paramArrayOfByte, ((ah)localObject2).c, 2);
      n = i1;
      localj.a(locala);
      n = i1;
      localj.c(true);
      n = i1;
      boolean bool = localj.a(new com.sleepycat.b.l.e((ac)localObject1, paramArrayOfByte, l1));
      n = i1;
      if ((!ah.e) && (!bool))
      {
        n = i1;
        throw new AssertionError();
      }
      n = i1;
      l1 = localj.a(localam);
      n = i1;
      localj.a(true);
      n = i1;
      ((ah)localObject2).b = ((ah)localObject2).a(localj, new byte[0], l1);
      n = i1;
      localj.C();
      n = i1;
      localal.a((com.sleepycat.b.l.j)localObject1);
      n = i1;
      localal.a(localj);
      n = i1;
      ((ah)localObject2).d.d();
    }
    for (;;)
    {
      this.a = ((com.sleepycat.b.l.a)localObject1);
      if ((j) || (this.a.F())) {
        break label517;
      }
      throw new AssertionError();
      label467:
      n = i1;
      ((ah)localObject2).d.d();
      i1 = 0;
      n = i1;
      localObject1 = ((ah)localObject2).a(paramArrayOfByte, this.h);
      if (localObject1 == null) {
        break;
      }
      n = i1;
      localObject1 = (com.sleepycat.b.l.a)localObject1;
    }
    try
    {
      label517:
      if (a(paramy, paramArrayOfByte, paramav))
      {
        a(paramy, paramm3);
        paramy = new ab(com.sleepycat.b.av.a, Boolean.valueOf(true));
        return paramy;
      }
      localObject1 = a(o.b, true);
      if (!((d)localObject1).a())
      {
        n = 1;
        localObject2 = new f(this, (byte)0);
        ((f)localObject2).b = ((d)localObject1);
        if (n == 0) {
          break label758;
        }
        ((f)localObject2).a = true;
        if (j) {}
      }
      for (;;)
      {
        if (!((f)localObject2).a) {
          break label774;
        }
        paramm1 = ((f)localObject2).b;
        l1 = paramy.a(this.d.c, this.d, paramArrayOfByte, -1L, this.e, paramm1.b(), paramav);
        this.a.r(this.b);
        this.a.a(this.b, paramy, l1, paramArrayOfByte);
        this.a.c(this.b);
        this.a.n(this.b);
        a(Level.FINER, this.a, l1, this.b);
        a(paramy, paramm3);
        paramy = new ab(com.sleepycat.b.av.a, Boolean.valueOf(true));
        return paramy;
        n = 0;
        break;
        label758:
        ((f)localObject2).a = false;
      }
      if (paramBoolean) {
        break label799;
      }
    }
    finally
    {
      c();
    }
    label774:
    paramy = new ab(com.sleepycat.b.av.b, Boolean.valueOf(false));
    c();
    return paramy;
    label799:
    this.g = 2;
    paramy = new ab(a(paramArrayOfByte, paramm1, null, paramm2, paramm3, ((f)localObject2).b, paramav), Boolean.valueOf(false));
    c();
    return paramy;
  }
  
  public final void a()
  {
    if ((this.i) && (this.h != com.sleepycat.b.a.d) && (this.h != com.sleepycat.b.a.f)) {
      this.d.c.E();
    }
  }
  
  public final void a(com.sleepycat.b.a parama)
  {
    Object localObject2 = this.d;
    if ((!i.w) && (parama == null)) {
      throw new AssertionError();
    }
    Object localObject1 = parama;
    if (parama == com.sleepycat.b.a.g)
    {
      if (((i)localObject2).v != null) {}
      for (parama = ((i)localObject2).v; parama == null; parama = ((i)localObject2).c.l) {
        throw new IllegalStateException("CacheMode.DYNAMIC may not be used without also configuring a CacheModeStrategy for the Database or Environment.");
      }
      localObject2 = parama.a();
      if (localObject2 != null)
      {
        localObject1 = localObject2;
        if (localObject2 != com.sleepycat.b.a.g) {}
      }
      else
      {
        throw new IllegalArgumentException(localObject2 + " was illegally returned by " + parama.getClass().getName());
      }
    }
    this.h = ((com.sleepycat.b.a)localObject1);
  }
  
  public final void a(c paramc)
  {
    if ((!j) && (!b(false))) {
      throw new AssertionError(h());
    }
    k();
    b(paramc);
    this.e.b(this);
    if (!this.f) {
      this.e.h();
    }
    this.g = 3;
    a();
  }
  
  public final boolean a(boolean paramBoolean)
  {
    int n = 0;
    if ((!j) && (!b(false))) {
      throw new AssertionError(h());
    }
    for (;;)
    {
      try
      {
        k();
        if (!paramBoolean) {
          continue;
        }
        localObject1 = this.d.b.a(this.h);
        if (localObject1 == null) {
          continue;
        }
        try
        {
          if ((j) || ((localObject1 instanceof com.sleepycat.b.l.a))) {
            continue;
          }
          throw new AssertionError();
        }
        catch (n localn2)
        {
          localObject2 = localObject1;
          localObject1 = localn2;
        }
      }
      catch (n localn1)
      {
        Object localObject1;
        Object localObject2 = null;
        continue;
        paramBoolean = false;
        continue;
        paramBoolean = true;
        continue;
      }
      if (localObject2 != null) {
        ((com.sleepycat.b.l.j)localObject2).C();
      }
      throw ((Throwable)localObject1);
      localObject1 = this.d.b;
      localObject2 = this.h;
      localObject1 = ((ah)localObject1).a(null, com.sleepycat.b.l.aj.c, null, (com.sleepycat.b.a)localObject2, null);
    }
    this.a = ((com.sleepycat.b.l.a)localObject1);
    if (paramBoolean) {}
    for (;;)
    {
      this.b = n;
      a(this.a);
      localObject2 = i();
      if ((this.a.f == 0) || (localObject2 == null) || (this.a.o(this.b))) {
        break;
      }
      this.a.l(this.b);
      break;
      this.g = 2;
      return paramBoolean;
      n = this.a.f;
      n -= 1;
    }
  }
  
  public final com.sleepycat.b.av b(com.sleepycat.b.m paramm1, com.sleepycat.b.m paramm2, o paramo)
  {
    int i1 = 1;
    if ((!j) && (!b(true))) {
      throw new AssertionError(h());
    }
    if ((!j) && (!d(true))) {
      throw new AssertionError(h());
    }
    int n;
    for (;;)
    {
      try
      {
        i();
        if (this.a == null)
        {
          paramm1 = com.sleepycat.b.av.d;
          return paramm1;
        }
        if ((!j) && (!this.a.F())) {
          throw new AssertionError();
        }
      }
      finally
      {
        c();
      }
      if ((this.b >= 0) && (this.b < this.a.f) && ((this.a.o(this.b)) || (this.a.l(this.b)))) {
        this.a.q();
      }
      if ((this.b < 0) || (this.b >= this.a.f) || (this.a.o(this.b)))
      {
        paramm1 = com.sleepycat.b.av.c;
      }
      else
      {
        if (paramm2 == null) {
          break label367;
        }
        n = i1;
        if (paramm2.f)
        {
          if (paramm2.b == 0) {
            break label367;
          }
          n = i1;
        }
        label232:
        a(this.a);
        paramo = a(paramo, false);
        if (paramo.a()) {
          break;
        }
        a(paramo);
        paramm1 = com.sleepycat.b.av.c;
      }
    }
    if (n != 0)
    {
      paramo = this.a.g(this.b);
      label283:
      paramo = (y)paramo;
      if (paramo == null) {
        break label378;
      }
    }
    label367:
    label378:
    for (paramo = paramo.f;; paramo = null)
    {
      if (paramm1 != null) {
        y.a(paramm1, this.a.h(this.b));
      }
      if ((paramm2 != null) && ((!paramm2.f) || (paramm2.b != 0)))
      {
        if ((!j) && (paramo == null)) {
          throw new AssertionError();
        }
        y.a(paramm2, paramo);
      }
      paramm1 = com.sleepycat.b.av.a;
      break;
      n = 0;
      break label232;
      paramo = null;
      break label283;
    }
  }
  
  public final com.sleepycat.b.l.a b()
  {
    while (this.a != null)
    {
      com.sleepycat.b.l.a locala = this.a;
      locala.a(this.h);
      if (this.a == locala) {
        return this.a;
      }
      locala.C();
    }
    return null;
  }
  
  public final y b(o paramo)
  {
    try
    {
      if ((!j) && (!b(true))) {
        throw new AssertionError(h());
      }
    }
    finally
    {
      c();
    }
    if ((!j) && (!d(true))) {
      throw new AssertionError(h());
    }
    com.sleepycat.b.l.a locala = this.a;
    if (locala == null)
    {
      c();
      return null;
    }
    a(this.a);
    paramo = a(paramo, false);
    if (!paramo.a())
    {
      a(paramo);
      c();
      return null;
    }
    paramo = (y)this.a.g(this.b);
    c();
    return paramo;
  }
  
  public final boolean b(boolean paramBoolean)
  {
    try
    {
      c(paramBoolean);
      return true;
    }
    catch (RuntimeException localRuntimeException) {}
    return false;
  }
  
  public final void c()
  {
    if (this.a != null) {
      this.a.D();
    }
  }
  
  public final void c(o paramo)
  {
    this.e.a(this.d.h, paramo, false, this.d);
  }
  
  public final void c(boolean paramBoolean)
  {
    switch (this.g)
    {
    default: 
      throw aa.c("Unknown cursor status: " + this.g);
    case 1: 
      if (paramBoolean) {
        throw new IllegalStateException("Cursor not initialized.");
      }
      break;
    case 3: 
      throw new IllegalStateException("Cursor has been closed.");
    }
  }
  
  public final boolean d()
  {
    return this.g == 1;
  }
  
  public final void e()
  {
    k();
    b(null);
    if (!this.f) {
      this.e.k_();
    }
    this.a = null;
    this.b = -1;
    this.g = 1;
    a();
  }
  
  public final void f()
  {
    try
    {
      b();
      if (this.b >= 0) {
        this.a.e(this.b);
      }
      return;
    }
    finally
    {
      c();
    }
  }
  
  public final byte[] g()
  {
    b();
    try
    {
      if (this.a != null)
      {
        int n = this.b;
        if (n >= 0) {}
      }
      else
      {
        return null;
      }
      byte[] arrayOfByte = this.a.h(this.b);
      return arrayOfByte;
    }
    finally
    {
      c();
    }
  }
  
  public final String h()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("<Cursor idx=\"").append(this.b).append("\"");
    StringBuilder localStringBuilder2 = localStringBuilder1.append(" status=\"");
    byte b1 = this.g;
    switch (b1)
    {
    default: 
      str = "UNKNOWN (" + Byte.toString(b1) + ")";
      localStringBuilder2.append(str).append("\"");
      localStringBuilder1.append(">\n");
      if (this.a != null) {
        break;
      }
    }
    for (String str = "";; str = this.a.a(2, true))
    {
      localStringBuilder1.append(str);
      localStringBuilder1.append("\n</Cursor>");
      return localStringBuilder1.toString();
      str = "CURSOR_NOT_INITIALIZED";
      break;
      str = "CURSOR_INITIALIZED";
      break;
      str = "CURSOR_CLOSED";
      break;
    }
  }
  
  public int hashCode()
  {
    return this.k;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */