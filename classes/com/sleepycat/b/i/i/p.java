package com.sleepycat.b.i.i;

import com.sleepycat.b.aa;
import com.sleepycat.b.ao;
import com.sleepycat.b.av;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.i;
import com.sleepycat.b.e;
import com.sleepycat.b.g.af;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public class p
{
  private final ad a;
  private au b = au.a;
  au c = au.a;
  SortedMap<Long, c> d;
  protected volatile m e;
  private boolean g;
  private final int h;
  private final int i;
  private final int j;
  private final com.sleepycat.b.p.z k;
  
  static
  {
    if (!p.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      return;
    }
  }
  
  p(ad paramad, int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramad;
    this.h = paramInt1;
    this.i = paramInt2;
    this.j = paramInt3;
    this.k = new com.sleepycat.b.p.z(new ai("VLSNIndex", "VLSN Index related stats."), l.e);
    a();
  }
  
  p(ad paramad, i parami, int paramInt1, int paramInt2, int paramInt3, ai paramai)
  {
    this.h = paramInt1;
    this.i = paramInt2;
    this.j = paramInt3;
    this.a = paramad;
    this.k = new com.sleepycat.b.p.z(paramai, l.e);
    this.d = new TreeMap();
    com.sleepycat.b.m localm2 = new com.sleepycat.b.m();
    com.sleepycat.b.m localm1 = new com.sleepycat.b.m();
    com.sleepycat.a.a.g.a(-1L, localm2);
    try
    {
      paramai = com.sleepycat.b.n.a.a(paramad);
      paramad = (ad)localObject2;
      try
      {
        parami = com.sleepycat.b.q.a(parami, paramai, com.sleepycat.b.g.a);
        paramad = parami;
        parami.a.i = false;
        paramad = parami;
        localav = parami.e(localm2, localm1, ao.a);
        paramad = parami;
        if (localav == av.a)
        {
          paramad = parami;
          this.e = ((m)new n().entryToObject(localm1));
          paramad = parami;
          this.c = this.e.c;
        }
        for (;;)
        {
          if (parami != null) {
            parami.close();
          }
          if (paramai != null) {
            paramai.a_(true);
          }
          return;
          paramad = parami;
          if (localav != av.d) {
            break;
          }
          paramad = parami;
          this.e = m.a;
        }
        if (parami == null) {
          break label244;
        }
      }
      finally
      {
        parami = paramad;
        paramad = (ad)localObject1;
      }
    }
    finally
    {
      label244:
      paramai = null;
      parami = (i)localObject1;
    }
    parami.close();
    if (paramai != null) {
      paramai.a_(true);
    }
    throw paramad;
    paramad = parami;
    throw aa.c("VLSNTracker init: status=" + localObject1);
  }
  
  private void a(au paramau, byte paramByte)
  {
    m localm = this.e;
    au localau1 = localm.b;
    au localau2 = localm.c;
    au localau5 = localm.f;
    au localau4 = localm.g;
    if ((localm.b.a(au.a)) || (localm.b.b(paramau) > 0)) {
      localau1 = paramau;
    }
    if (localm.c.b(paramau) < 0) {
      localau2 = paramau;
    }
    au localau3 = localau5;
    if (af.d(paramByte))
    {
      localau3 = localau5;
      if (localm.f.b(paramau) < 0) {
        localau3 = paramau;
      }
    }
    if (((paramByte == localm.d) || (paramByte == localm.e)) && (localm.g.b(paramau) < 0)) {}
    for (;;)
    {
      this.e = new m(localau1, localau2, localau3, paramau);
      return;
      paramau = localau4;
    }
  }
  
  private void a(SortedMap<Long, c> paramSortedMap, long paramLong)
  {
    Object localObject = (c)paramSortedMap.get((Long)paramSortedMap.firstKey());
    au localau1 = this.e.b;
    au localau2 = ((c)localObject).d();
    if (!localau2.a(localau1))
    {
      paramLong = this.a.x.a(paramLong, true).longValue();
      long l = ((c)localObject).c(localau2);
      localObject = new a(localau1, j.a(paramLong, 0), l);
      paramSortedMap.put(Long.valueOf(localau1.c), localObject);
    }
  }
  
  final c a(au paramau)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    try
    {
      int m = this.c.b(paramau);
      if (m >= 0) {
        localObject1 = localObject2;
      }
      do
      {
        do
        {
          do
          {
            Long localLong;
            do
            {
              return (c)localObject1;
              localLong = Long.valueOf(paramau.c + 1L);
              localObject2 = this.d.headMap(localLong);
              if (((SortedMap)localObject2).size() <= 0) {
                break;
              }
              localObject2 = (c)((SortedMap)localObject2).get(((SortedMap)localObject2).lastKey());
              localObject1 = localObject2;
            } while (((c)localObject2).d(paramau));
            localObject1 = localObject2;
            localObject2 = this.d.tailMap(localLong);
            if (((SortedMap)localObject2).size() <= 0) {
              break;
            }
            localObject2 = (c)((SortedMap)localObject2).get(((SortedMap)localObject2).firstKey());
            localObject1 = localObject2;
          } while (f);
          localObject1 = localObject2;
        } while (((c)localObject2).d(paramau));
        localObject1 = localObject2;
      } while (((c)localObject2).e(paramau));
      throw new AssertionError("VLSN " + paramau + " got wrong bucket " + localObject2);
    }
    finally {}
    throw aa.a(this.a, "VLSN " + paramau + " should be held within this tracker. " + this + " prevBucket=" + localObject1);
  }
  
  final void a()
  {
    this.d = new TreeMap();
    this.e = m.a;
  }
  
  final void a(i parami, com.sleepycat.b.n.z paramz)
  {
    for (;;)
    {
      m localm;
      Object localObject;
      try
      {
        localm = this.e;
        if (this.d.size() == 0)
        {
          if (this.g)
          {
            this.c = localm.a(this.a, parami, paramz);
            this.g = false;
          }
          return;
        }
        c localc = (c)this.d.get(this.d.lastKey());
        localc.d = true;
        localau = this.c;
        Iterator localIterator = this.d.keySet().iterator();
        if (!localIterator.hasNext()) {
          break label348;
        }
        localObject = (Long)localIterator.next();
        localObject = (c)this.d.get(localObject);
        if (localObject == localc)
        {
          m = 1;
          if ((localau.a(au.a)) || (((c)localObject).d().b(localau) > 0)) {
            break label217;
          }
          throw aa.a(this.a, "target bucket overlaps previous bucket. currentLastVLSN= " + localau + " target=" + localObject);
        }
      }
      finally {}
      int m = 0;
      continue;
      label217:
      if (((c)localObject).e().b(localm.c) > 0) {
        throw aa.a(this.a, "target bucket exceeds flush range. range= " + localm + " target=" + localObject);
      }
      if ((m != 0) && (((c)localObject).e().b(localm.c) != 0)) {
        throw aa.a(this.a, "end of last bucket should match end of range. range= " + localm + " target=" + localObject);
      }
      ((c)localObject).a(this.a, parami, paramz);
      au localau = ((c)localObject).e();
      continue;
      label348:
      this.c = localm.a(this.a, parami, paramz);
      this.g = false;
      this.d.clear();
      this.b = au.a;
    }
  }
  
  final void a(o paramo)
  {
    boolean bool2 = true;
    if ((!this.e.c.c()) && (this.e.c.b(paramo.b) >= 0)) {
      throw aa.a(this.a, "Expected this tracker to precede recovery tracker. This tracker= " + this + " recoveryTracker = " + paramo);
    }
    this.d.putAll(paramo.d);
    m localm = this.e;
    paramo = paramo.e;
    au localau1 = localm.b;
    au localau2 = paramo.b;
    au localau3;
    label157:
    au localau4;
    label197:
    au localau5;
    if (paramo.b.b(localm.b) < 0)
    {
      bool1 = true;
      localau1 = m.a(localau1, localau2, bool1);
      localau2 = localm.c;
      localau3 = paramo.c;
      if (paramo.c.b(localm.c) <= 0) {
        break label310;
      }
      bool1 = true;
      localau2 = m.a(localau2, localau3, bool1);
      localau3 = localm.f;
      localau4 = paramo.f;
      if (paramo.f.b(localm.f) <= 0) {
        break label316;
      }
      bool1 = true;
      localau3 = m.a(localau3, localau4, bool1);
      localau4 = localm.g;
      localau5 = paramo.g;
      if (paramo.g.b(localm.g) <= 0) {
        break label322;
      }
    }
    label310:
    label316:
    label322:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.e = new m(localau1, localau2, localau3, m.a(localau4, localau5, bool1));
      if (this.d.size() > 0) {
        this.b = ((c)this.d.get(this.d.firstKey())).d();
      }
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label157;
      bool1 = false;
      break label197;
    }
  }
  
  final void a(au paramau, long paramLong)
  {
    m localm;
    au localau1;
    au localau2;
    for (;;)
    {
      try
      {
        localm = this.e;
        localau1 = localm.c;
        if (paramau.b(localm.c) == 0)
        {
          localau2 = au.a;
          localau1 = au.a;
          if ((m.h) || (localm.f.a(au.a)) || (localm.f.b(localau2) >= 0)) {
            break;
          }
          throw new AssertionError("Can't truncate lastSync= " + localm.f + " deleteEnd=" + paramau);
        }
      }
      finally {}
      localau2 = paramau.d();
    }
    au localau3;
    if (localm.g.b(localau2) > 0)
    {
      localau3 = localm.g;
      this.e = new m(localau2, localau1, localm.f, localau3);
      this.g = true;
      localau1 = paramau.d();
      if ((this.c.a(au.a)) || (this.c.b(paramau) < 0)) {
        break label250;
      }
      if (this.c.a(paramau))
      {
        if (this.b.b(localau1) > 0) {
          a(this.d, paramLong);
        }
        this.c = au.a;
      }
    }
    for (;;)
    {
      return;
      localau3 = au.a;
      break;
      label250:
      if ((!f) && (this.b.a(au.a))) {
        throw new AssertionError();
      }
      if (this.b.a(localau1))
      {
        this.c = au.a;
        continue;
      }
      if (this.b.b(localau1) > 0)
      {
        a(this.d, paramLong);
        this.c = au.a;
        continue;
      }
      long l = b(paramau).d().d().c;
      try
      {
        paramau = this.d.tailMap(Long.valueOf(l));
        a(paramau, paramLong);
        this.d = paramau;
        this.c = au.a;
      }
      catch (NoSuchElementException paramau)
      {
        for (;;)
        {
          this.b = au.a;
          this.d = new TreeMap();
        }
      }
    }
  }
  
  public final void a(au paramau, long paramLong, byte paramByte)
  {
    for (;;)
    {
      c localc;
      try
      {
        if (paramau.b(this.c) < 0)
        {
          a(paramau, paramByte);
          return;
        }
        if (this.d.size() == 0)
        {
          localc = new c(j.d(paramLong), this.h, this.i, this.j, paramau);
          this.k.f();
          this.d.put(Long.valueOf(localc.d().c), localc);
          if (!localc.e(paramau)) {
            break label141;
          }
          a(paramau, paramByte);
          continue;
        }
        localc = (c)this.d.get(this.d.lastKey());
      }
      finally {}
      continue;
      label141:
      if (!localc.a(paramau, paramLong))
      {
        localc = new c(j.d(paramLong), this.h, this.i, this.j, paramau);
        this.k.f();
        this.d.put(Long.valueOf(localc.d().c), localc);
        if (!localc.a(paramau, paramLong)) {
          throw aa.a(this.a, "Couldn't put VLSN " + paramau + " into " + localc);
        }
      }
      a(paramau, paramByte);
      if (this.b == au.a) {
        this.b = paramau;
      }
    }
  }
  
  final void a(au paramau, o paramo)
  {
    Object localObject1 = this.e;
    Object localObject3 = paramo.e;
    Object localObject2 = m.a(((m)localObject1).c, ((m)localObject3).c, true);
    au localau = m.a(((m)localObject1).f, ((m)localObject3).f, true);
    localObject3 = m.a(((m)localObject1).g, ((m)localObject3).g, true);
    this.e = new m(((m)localObject1).b, (au)localObject2, localau, (au)localObject3);
    localObject1 = paramo.e.b;
    this.c = paramau;
    if (this.d.size() == 0) {}
    for (this.d = paramo.d;; this.d = ((SortedMap)localObject2))
    {
      if (this.d.size() > 0) {
        this.b = ((c)this.d.get(this.d.firstKey())).d();
      }
      return;
      paramau = a((au)localObject1);
      long l = paramau.d().c;
      localObject2 = new TreeMap(this.d.headMap(Long.valueOf(l)));
      paramau.b((au)localObject1, -1L);
      if (!paramau.f()) {
        ((SortedMap)localObject2).put(Long.valueOf(paramau.d().c), paramau);
      }
      ((SortedMap)localObject2).putAll(paramo.d);
    }
  }
  
  final c b(au paramau)
  {
    Object localObject2 = null;
    SortedMap localSortedMap = null;
    Object localObject1 = localSortedMap;
    try
    {
      if (!this.b.a(au.a))
      {
        int m = this.b.b(paramau);
        if (m <= 0) {
          break label45;
        }
      }
      for (localObject1 = localSortedMap;; localObject1 = (c)localSortedMap.get(localSortedMap.lastKey()))
      {
        return (c)localObject1;
        label45:
        localObject1 = Long.valueOf(paramau.c + 1L);
        localSortedMap = this.d.headMap(localObject1);
        if (localSortedMap.size() <= 0) {
          break;
        }
      }
      localSortedMap = this.d.tailMap(localObject1);
      localObject1 = localObject2;
      if (localSortedMap.size() > 0) {
        localObject1 = (c)localSortedMap.get(localSortedMap.firstKey());
      }
      throw aa.a(this.a, "VLSN " + paramau + " should be held within this tracker. " + this + " nextBucket=" + localObject1);
    }
    finally {}
  }
  
  public final m b()
  {
    return this.e;
  }
  
  final void b(au paramau, long paramLong)
  {
    Object localObject1;
    Object localObject2;
    try
    {
      localObject1 = this.e;
      localObject2 = paramau.e();
      if ((!m.h) && (((au)localObject2).b(((m)localObject1).g) < 0)) {
        throw new AssertionError("Can't truncate at " + localObject2 + " because it overwrites a commit at " + ((m)localObject1).g);
      }
    }
    finally {}
    if (((au)localObject2).a(au.a))
    {
      localObject1 = new m(au.a, au.a, au.a, au.a);
      this.e = ((m)localObject1);
      this.g = true;
      if (this.c.b(paramau) >= 0)
      {
        if (this.b.b(this.e.c) >= 0) {
          break label206;
        }
        this.c = this.b.e();
      }
      label160:
      boolean bool = this.b.a(au.a);
      if (!bool) {
        break label220;
      }
    }
    for (;;)
    {
      return;
      localObject1 = new m(((m)localObject1).b, (au)localObject2, (au)localObject2, ((m)localObject1).g);
      break;
      label206:
      this.c = this.e.c;
      break label160;
      label220:
      if (this.b.b(paramau) >= 0)
      {
        this.d.clear();
        this.b = au.a;
      }
      else
      {
        localObject1 = a(paramau);
        long l = ((c)localObject1).d().c;
        localObject2 = new TreeMap(this.d.headMap(Long.valueOf(l)));
        ((c)localObject1).b(paramau, paramLong);
        if (!((c)localObject1).f()) {
          ((SortedMap)localObject2).put(Long.valueOf(((c)localObject1).d().c), localObject1);
        }
        this.d = ((SortedMap)localObject2);
      }
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.e);
    localStringBuilder.append(" firstTracked=").append(this.b);
    localStringBuilder.append(" lastOnDiskVLSN=").append(this.c);
    Iterator localIterator = this.d.values().iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      localStringBuilder.append("\n");
      localStringBuilder.append(localc);
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\i\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */