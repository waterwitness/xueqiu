package com.sleepycat.b.i.c.b;

import com.sleepycat.b.br;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.am;
import com.sleepycat.b.g.av;
import com.sleepycat.b.i.c.a.a;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.e.t;
import com.sleepycat.b.i.f.e;
import com.sleepycat.b.i.h.o;
import com.sleepycat.b.i.i.f;
import com.sleepycat.b.n.u;
import com.sleepycat.b.n.v;
import com.sleepycat.b.o.b;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;
import com.sleepycat.b.p.y;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Logger;

public class ac
{
  final com.sleepycat.b.p.z A;
  final com.sleepycat.b.p.z B;
  public final Logger C;
  final com.sleepycat.b.m a;
  final com.sleepycat.b.m b;
  final com.sleepycat.b.m c;
  public final aj d;
  final long e;
  public final ConcurrentMap<Long, e> f;
  public volatile ae g;
  public volatile au h;
  final com.sleepycat.b.w i;
  final long j;
  o k;
  t l;
  final ad m;
  public final ai n;
  final com.sleepycat.b.p.z o;
  final com.sleepycat.b.p.z p;
  final com.sleepycat.b.p.z q;
  final com.sleepycat.b.p.z r;
  final com.sleepycat.b.p.z s;
  final com.sleepycat.b.p.z t;
  final com.sleepycat.b.p.z u;
  final com.sleepycat.b.p.z v;
  final com.sleepycat.b.p.z w;
  final com.sleepycat.b.p.z x;
  final y y;
  final com.sleepycat.b.p.x z;
  
  static
  {
    if (!ac.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      D = bool;
      return;
    }
  }
  
  private static Set<File> a(List<Long> paramList)
  {
    HashSet localHashSet2 = new HashSet();
    HashSet localHashSet1 = new HashSet();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localHashSet2.add(Long.valueOf(j.d(((Long)paramList.next()).longValue())));
    }
    paramList = localHashSet2.iterator();
    while (paramList.hasNext()) {
      localHashSet1.add(new File(com.sleepycat.b.g.m.c(((Long)paramList.next()).longValue())));
    }
    return localHashSet1;
  }
  
  private String b(long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("matchpointLsn=");
    localStringBuilder.append(j.h(paramLong));
    Iterator localIterator = this.f.values().iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      localStringBuilder.append("txn id=").append(locale.k);
      localStringBuilder.append(" locks=").append(locale.A());
      localStringBuilder.append("lastLogged=");
      localStringBuilder.append(j.h(locale.z));
      localStringBuilder.append("\n");
    }
    return localStringBuilder.toString();
  }
  
  public final e a(long paramLong, boolean paramBoolean)
  {
    synchronized (this.f)
    {
      e locale = (e)this.f.get(Long.valueOf(paramLong));
      Object localObject1 = locale;
      if (locale == null)
      {
        if (paramBoolean) {
          localObject1 = new e(this.d, br.a, paramLong, this.f, this.C);
        }
      }
      else {
        return (e)localObject1;
      }
      localObject1 = new e(this.d, br.a, paramLong, this.f, this.C)
      {
        protected final boolean e_()
        {
          return false;
        }
      };
    }
  }
  
  public final void a()
  {
    int i1 = this.d.ao.b;
    Iterator localIterator = this.f.values().iterator();
    while (localIterator.hasNext()) {
      ((e)localIterator.next()).a(av.f, i1);
    }
    if ((!D) && (this.f.size() != 0)) {
      throw new AssertionError("Unexpected txns in activeTxns = " + this.f);
    }
  }
  
  final void a(long paramLong)
  {
    this.m.a(paramLong);
  }
  
  public final void a(au paramau, long paramLong)
  {
    Object localObject2 = "Started Rollback";
    Object localObject1 = localObject2;
    try
    {
      if (this.f.size() == 0)
      {
        this.h = paramau;
        localObject1 = this.C;
        localObject2 = this.d;
      }
      for (paramau = "Rollback to matchpoint " + paramau + " at " + j.h(paramLong) + " status=" + "No active txns, nothing to rollback";; paramau = "Rollback to matchpoint " + paramau + " at " + j.h(paramLong) + " status=" + "End of range equals matchpoint, nothing to rollback")
      {
        com.sleepycat.b.p.w.c((Logger)localObject1, (com.sleepycat.b.c.ad)localObject2, paramau);
        return;
        localObject1 = localObject2;
        if (!this.d.aj.h.b().c.a(paramau)) {
          break;
        }
        this.h = paramau;
        localObject1 = this.C;
        localObject2 = this.d;
      }
      localObject1 = localObject2;
      localObject5 = this.d;
      localObject1 = localObject2;
      i1 = com.sleepycat.b.i.ad.c;
      localObject1 = localObject2;
      ((aj)localObject5).aj();
      localObject1 = localObject2;
      localObject5 = this.d.am;
      localObject1 = localObject2;
      ((aa)localObject5).o.b();
      localObject1 = localObject2;
      ((aa)localObject5).o = null;
      localObject1 = localObject2;
      this.d.c(true);
      localObject1 = localObject2;
      Object localObject6 = this.d;
      localObject1 = localObject2;
      l1 = j.d(paramLong);
      localObject1 = localObject2;
      localObject5 = ((aj)localObject6).aq;
      localObject1 = localObject2;
      try
      {
        localObject1 = ((aj)localObject6).aq.iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject6 = (b)((Iterator)localObject1).next();
          ((b)localObject6).a = true;
          ((b)localObject6).b = l1;
          continue;
          localObject3 = finally;
        }
      }
      finally
      {
        localObject1 = localObject2;
      }
    }
    finally
    {
      this.h = paramau;
      com.sleepycat.b.p.w.c(this.C, this.d, "Rollback to matchpoint " + paramau + " at " + j.h(paramLong) + " status=" + (String)localObject1);
    }
    localObject1 = localObject3;
    Object localObject5 = this.d.w;
    localObject1 = localObject3;
    long l1 = ((am)localObject5).a(com.sleepycat.b.g.a.q.a(af.B, new v(paramau, paramLong, this.f.keySet())), av.g);
    Object localObject4 = "Logged RollbackStart entry";
    localObject1 = localObject4;
    ArrayList localArrayList = new ArrayList();
    localObject1 = localObject4;
    Iterator localIterator = this.f.values().iterator();
    label498:
    localObject1 = localObject4;
    e locale;
    Collection localCollection;
    if (localIterator.hasNext())
    {
      localObject1 = localObject4;
      locale = (e)localIterator.next();
      localObject1 = localObject4;
      localCollection = locale.a_(paramLong);
      localObject1 = localObject4;
      if (!D)
      {
        localObject1 = localObject4;
        if (!locale.z()) {
          break label899;
        }
        localObject1 = localObject4;
        if (!this.f.containsKey(Long.valueOf(locale.k))) {
          break label899;
        }
      }
    }
    label899:
    for (int i1 = 0;; i1 = 1)
    {
      if (i1 == 0)
      {
        localObject1 = localObject4;
        throw new AssertionError("Should have removed " + locale);
      }
      localObject1 = localObject4;
      localArrayList.addAll(localCollection);
      break label498;
      localObject4 = "Finished in-memory rollback";
      localObject1 = localObject4;
      if (!D)
      {
        localObject1 = localObject4;
        if (localArrayList.size() == 0)
        {
          localObject1 = localObject4;
          throw new AssertionError(b(paramLong));
        }
      }
      localObject1 = localObject4;
      if (this.d.ay != null)
      {
        localObject1 = localObject4;
        a(localArrayList);
      }
      localObject1 = localObject4;
      com.sleepycat.b.h.p.a(this.d, localArrayList);
      localObject4 = "Finished invisible setting";
      localObject1 = localObject4;
      ((am)localObject5).a(com.sleepycat.b.g.a.q.a(af.C, new u(paramLong, l1)), av.g);
      localObject1 = localObject4;
      localObject5 = this.d.am;
      localObject1 = localObject4;
      if (((aa)localObject5).o != null)
      {
        localObject1 = localObject4;
        throw com.sleepycat.b.aa.a(((aa)localObject5).i);
      }
      localObject1 = localObject4;
      ((aa)localObject5).o = new a(((aa)localObject5).c, ((aa)localObject5).i, ((aa)localObject5).a);
      localObject1 = localObject4;
      this.d.c(false);
      this.h = paramau;
      localObject1 = this.C;
      localObject4 = this.d;
      paramau = "Rollback to matchpoint " + paramau + " at " + j.h(paramLong) + " status=" + "Finished rollback";
      break;
    }
  }
  
  final boolean a(e parame)
  {
    Iterator localIterator = this.f.values().iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      if ((locale != parame) && (locale.d)) {
        return false;
      }
    }
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */