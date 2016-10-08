package com.sleepycat.b.c;

import com.sleepycat.b.a.t;
import com.sleepycat.b.aa;
import com.sleepycat.b.g.a.b;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.am;
import com.sleepycat.b.l.ah;
import com.sleepycat.b.l.c;
import com.sleepycat.b.l.y;
import com.sleepycat.b.n;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ay
{
  private final long[] a;
  protected final i[] b;
  protected final ad c;
  long d = Long.MAX_VALUE;
  protected boolean e = false;
  protected boolean f = false;
  long g = Long.MAX_VALUE;
  private final boolean i;
  private long j;
  private final bc k;
  private final List<n> l;
  private final ba m;
  private final com.sleepycat.b.m n = new com.sleepycat.b.m();
  private final Map<Long, bb> o = new HashMap();
  
  static
  {
    if (!ay.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      return;
    }
  }
  
  public ay(i[] paramArrayOfi, boolean paramBoolean, long[] paramArrayOfLong, bc parambc)
  {
    if ((paramArrayOfi == null) || (paramArrayOfi.length <= 0)) {
      throw aa.c("DatabaseImpls array is null or 0-length for SortedLSNTreeWalker");
    }
    this.b = paramArrayOfi;
    this.c = paramArrayOfi[0].c;
    int i2 = paramArrayOfi.length;
    while (i1 < i2)
    {
      i locali = paramArrayOfi[i1];
      ad localad = locali.c;
      if (localad == null) {
        throw aa.c("environmentImpl is null for target db " + locali.c());
      }
      if (localad != this.c) {
        throw new IllegalArgumentException("Environment.preload() must be called with Databases which are all in the same Environment. (" + locali.c() + ")");
      }
      i1 += 1;
    }
    this.i = paramBoolean;
    this.a = paramArrayOfLong;
    this.k = parambc;
    this.l = null;
    this.m = null;
  }
  
  private com.sleepycat.b.l.ac a(long paramLong, com.sleepycat.b.m paramm, an paraman)
  {
    Object localObject = null;
    for (;;)
    {
      try
      {
        paraman = b(paramLong, paramm, paraman);
        return paraman;
      }
      catch (FileNotFoundException paramm)
      {
        if ((this.m != null) && (this.m.a())) {
          break label114;
        }
        paramm = new aa(this.c, ac.k, paramm);
        paraman = (an)localObject;
        if (paramm == null) {
          continue;
        }
        if (this.l != null)
        {
          this.l.add(paramm);
          return null;
        }
      }
      catch (n paraman)
      {
        paramm = paraman;
        if (this.m == null) {
          continue;
        }
        paramm = paraman;
        if (!this.m.a()) {
          continue;
        }
        paramm = null;
        continue;
      }
      throw paramm;
      label114:
      paramm = null;
    }
  }
  
  private void a(long paramLong, bb parambb)
  {
    if (this.o.put(Long.valueOf(paramLong), parambb) == null) {
      a(parambb.c());
    }
  }
  
  private void a(long paramLong, af paramaf, com.sleepycat.b.l.ac paramac, byte[] paramArrayOfByte)
  {
    localObject = null;
    try
    {
      this.k.a(paramLong, paramaf, paramac, paramArrayOfByte);
      paramaf = (af)localObject;
    }
    catch (FileNotFoundException paramac)
    {
      for (;;)
      {
        if (this.m != null)
        {
          paramaf = (af)localObject;
          if (this.m.a()) {}
        }
        else
        {
          paramaf = new aa(this.c, ac.k, paramac);
        }
      }
    }
    catch (n paramac)
    {
      for (;;)
      {
        if (this.m != null)
        {
          paramaf = (af)localObject;
          if (this.m.a()) {}
        }
        else
        {
          paramaf = paramac;
        }
      }
      throw paramaf;
    }
    if (paramaf != null)
    {
      if (this.l != null) {
        this.l.add(paramaf);
      }
    }
    else {
      return;
    }
  }
  
  private void a(an paraman)
  {
    int i1;
    long[] arrayOfLong;
    Object localObject1;
    Object localObject2;
    int i2;
    label139:
    do
    {
      if (paraman.b == 0)
      {
        i1 = 1;
        if (i1 != 0) {
          break;
        }
        arrayOfLong = new long[paraman.b];
        localObject1 = paraman.a.entrySet().iterator();
        i1 = 0;
      }
      for (;;)
      {
        if (!((Iterator)localObject1).hasNext()) {
          break label139;
        }
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        l1 = ((Long)((Map.Entry)localObject2).getKey()).longValue();
        localObject2 = ((t)((Map.Entry)localObject2).getValue()).a();
        int i3 = localObject2.length;
        i2 = 0;
        for (;;)
        {
          if (i2 < i3)
          {
            arrayOfLong[i1] = com.sleepycat.b.p.j.a(l1, localObject2[i2]);
            i1 += 1;
            i2 += 1;
            continue;
            i1 = 0;
            break;
          }
        }
      }
      Arrays.sort(arrayOfLong);
      paraman.a();
      localObject1 = d();
      i2 = arrayOfLong.length;
      i1 = 0;
      paraman = (an)localObject1;
    } while (i1 >= i2);
    long l1 = arrayOfLong[i1];
    this.n.a(null);
    com.sleepycat.b.l.ac localac = a(l1, this.n, (an)localObject1);
    boolean bool;
    if (localac != null)
    {
      bool = localac instanceof com.sleepycat.b.l.j;
      localObject2 = null;
      if (!bool) {
        break label310;
      }
    }
    for (;;)
    {
      try
      {
        paraman = (com.sleepycat.b.l.j)localac;
      }
      finally
      {
        try
        {
          paraman.a(com.sleepycat.b.a.c);
        }
        finally
        {
          localObject1 = paraman;
          paraman = (an)localObject3;
          continue;
        }
        try
        {
          a(l1, localac.S(), localac, this.n.a);
          if (bool) {
            a(paraman, (an)localObject1);
          }
          if (bool) {
            paraman.C();
          }
          i1 += 1;
          break;
        }
        finally
        {
          localObject1 = paraman;
          paraman = (an)localObject4;
          continue;
        }
        paraman = finally;
        localObject1 = localObject2;
        if (bool) {
          ((com.sleepycat.b.l.j)localObject1).C();
        }
        throw paraman;
        return;
      }
      label310:
      paraman = null;
    }
  }
  
  private void a(com.sleepycat.b.l.j paramj, an paraman)
  {
    Object localObject = paramj.i;
    boolean bool2 = ((i)localObject).h();
    boolean bool1;
    if ((!bool2) || (((i)localObject).i()))
    {
      bool1 = paramj.f();
      if (!bool1) {
        break label434;
      }
      if (!bool2) {
        break label197;
      }
      bool1 = this.f;
    }
    for (;;)
    {
      label45:
      int i1 = 0;
      label48:
      if (i1 < paramj.f)
      {
        long l1 = paramj.k(i1);
        com.sleepycat.b.l.ac localac = paramj.j(i1);
        int i2;
        if (localac != null)
        {
          i2 = 1;
          label81:
          if ((i2 != 0) && (!localac.u_())) {
            break label212;
          }
          localObject = paramj.h(i1);
          label101:
          if ((!paramj.l(i1)) && (!paramj.o(i1))) {
            break label217;
          }
          if ((localac != null) && (localac.u_()))
          {
            localObject = (y)localac;
            if (((y)localObject).k()) {
              this.k.a(l1, (y)localObject);
            }
          }
        }
        label197:
        label212:
        label217:
        label340:
        for (;;)
        {
          i1 += 1;
          break label48;
          if ((paramj.f()) && ((!bool2) || (paramj.T())))
          {
            bool1 = true;
            break;
          }
          bool1 = false;
          break;
          bool1 = this.e;
          break label45;
          i2 = 0;
          break label81;
          localObject = null;
          break label101;
          if ((!bool1) || (i2 != 0) || (l1 == -1L)) {
            break label342;
          }
          paraman.c(l1);
          a(l1, new bb(paramj, i1));
          if (this.j > this.d) {}
          for (i2 = 1;; i2 = 0)
          {
            if ((paraman.b <= this.g) && (i2 == 0)) {
              break label340;
            }
            if (i2 != 0) {
              this.k.a();
            }
            a(paraman);
            paraman.a.clear();
            paraman.b = 0;
            paraman.b(-paraman.c);
            break;
          }
        }
        label342:
        if (localac != null)
        {
          i2 = 1;
          label350:
          if (i2 != 0) {
            break label416;
          }
        }
        label416:
        for (af localaf = af.H;; localaf = localac.S())
        {
          a(l1, localaf, localac, (byte[])localObject);
          if ((i2 == 0) || (!localac.O())) {
            break;
          }
          localObject = (com.sleepycat.b.l.j)localac;
          try
          {
            ((com.sleepycat.b.l.j)localObject).a(com.sleepycat.b.a.c);
            a((com.sleepycat.b.l.j)localObject, paraman);
            ((com.sleepycat.b.l.j)localObject).C();
          }
          finally
          {
            ((com.sleepycat.b.l.j)localObject).C();
          }
          i2 = 0;
          break label350;
        }
      }
      label434:
      bool1 = true;
    }
  }
  
  private com.sleepycat.b.l.ac b(long paramLong, com.sleepycat.b.m paramm, an paraman)
  {
    bb localbb = (bb)this.o.remove(Long.valueOf(paramLong));
    if ((!h) && (localbb == null)) {
      throw new AssertionError(com.sleepycat.b.p.j.h(paramLong));
    }
    a(-localbb.c());
    com.sleepycat.b.l.j localj = localbb.b;
    boolean bool1 = localj.F();
    if (!bool1) {
      localj.B();
    }
    for (;;)
    {
      int i1;
      Object localObject1;
      Object localObject2;
      try
      {
        i1 = localbb.c;
        if (!localj.l(i1))
        {
          boolean bool2 = localj.o(i1);
          if (!bool2) {}
        }
        else
        {
          if (!bool1) {
            localj.C();
          }
          paramm = null;
          return paramm;
        }
        if (localbb.a() == null)
        {
          l1 = localj.k(i1);
          if (l1 != paramLong) {
            return null;
          }
        }
        else
        {
          l1 = localj.k(i1);
          long l2 = localbb.b();
          if (l1 != l2) {
            return null;
          }
        }
        localObject1 = localj.j(i1);
        if (localObject1 != null)
        {
          if (((com.sleepycat.b.l.ac)localObject1).u_()) {
            paramm.a(localj.h(i1));
          }
          paramm = (com.sleepycat.b.m)localObject1;
          if (bool1) {
            continue;
          }
          paraman = (an)localObject1;
          localj.C();
          return paraman;
        }
        localObject2 = this.c.w.a(paramLong);
        if ((localObject2 instanceof b))
        {
          paramm = (c)((com.sleepycat.b.g.a.m)localObject2).h();
          l1 = paramm.b;
          paraman.c(l1);
          a(l1, new az(localj, i1, paramm, paramLong));
          return null;
        }
        localObject1 = localj.i;
        if (!(localObject2 instanceof k)) {
          break label528;
        }
        paraman = (k)localObject2;
        paraman.c((i)localObject1);
        paraman = paraman.k();
        paramm.a(paraman);
        paramm = paraman;
        paraman = (com.sleepycat.b.l.ac)((com.sleepycat.b.g.a.m)localObject2).a((i)localObject1);
        if ((paraman instanceof com.sleepycat.b.l.j)) {
          ((com.sleepycat.b.l.j)paraman).i = ((i)localObject1);
        }
        localObject2 = localbb.a();
        l1 = paramLong;
        if (localObject2 == null) {
          break label491;
        }
        if ((!h) && (paramLong != ((c)localObject2).b)) {
          throw new AssertionError();
        }
      }
      finally
      {
        if (!bool1) {
          localj.C();
        }
      }
      if ((!h) && (!(paraman instanceof com.sleepycat.b.l.a))) {
        throw new AssertionError();
      }
      ((c)localObject2).a((i)localObject1, (com.sleepycat.b.l.a)paraman);
      long l1 = localbb.b();
      label491:
      if (b())
      {
        paraman.a((i)localObject1, l1);
        localj.a(i1, paraman, paramm);
      }
      paramm = paraman;
      if (!bool1)
      {
        continue;
        label528:
        paramm = null;
      }
    }
  }
  
  private an d()
  {
    new an()
    {
      final void a(long paramAnonymousLong)
      {
        ay.this.a(paramAnonymousLong);
      }
    };
  }
  
  protected com.sleepycat.b.l.j a(i parami)
  {
    return parami.b.a(true);
  }
  
  protected com.sleepycat.b.l.j a(i parami, long paramLong)
  {
    com.sleepycat.b.l.j localj = (com.sleepycat.b.l.j)this.c.w.e(paramLong);
    if (localj == null) {
      return null;
    }
    localj.b(com.sleepycat.b.a.a);
    localj.i = parami;
    return localj;
  }
  
  public void a()
  {
    c();
  }
  
  final void a(long paramLong)
  {
    this.j += paramLong;
  }
  
  protected boolean b()
  {
    return false;
  }
  
  protected final void c()
  {
    an localan1 = d();
    int i1 = 0;
    while (i1 < this.b.length)
    {
      i locali = this.b[i1];
      long l1 = this.a[i1];
      com.sleepycat.b.l.j localj = a(locali);
      if (localj != null) {}
      for (;;)
      {
        if (localj != null) {}
        try
        {
          a(localj, localan1);
          localj.C();
          if (!this.i) {
            break label125;
          }
          if (i.w) {
            break;
          }
          if (locali.i == 2) {
            break label120;
          }
          throw new AssertionError();
        }
        finally
        {
          localj.C();
        }
        if (l1 == -1L) {
          localj = null;
        } else {
          localj = a(locali, l1);
        }
      }
      label120:
      label125:
      i1 += 1;
    }
    a(localan2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\ay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */