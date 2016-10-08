package com.sleepycat.b.d;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ab;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ar;
import com.sleepycat.b.c.i;
import com.sleepycat.b.c.m;
import com.sleepycat.b.l.ae;
import com.sleepycat.b.l.ah;
import com.sleepycat.b.l.aq;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.ao;
import com.sleepycat.b.p.w;
import com.sleepycat.b.p.z;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class b
  implements ab
{
  private final z A;
  private final z B;
  private final com.sleepycat.b.p.d C;
  private final com.sleepycat.b.p.d[] D;
  private final f E;
  private final Logger F;
  final ad a;
  public final n b;
  public final a c;
  public final ThreadPoolExecutor d;
  int e;
  public final ai f;
  public final com.sleepycat.b.p.d g;
  public final com.sleepycat.b.p.d h;
  public final com.sleepycat.b.p.d i;
  public final com.sleepycat.b.p.d j;
  public final com.sleepycat.b.p.d k;
  public final com.sleepycat.b.p.d l;
  public final AtomicLong m;
  public final AtomicLong n;
  public final AtomicLong o;
  public final com.sleepycat.b.p.d[] p;
  public final com.sleepycat.b.p.d[] q;
  public final AtomicLong[] r;
  public final AtomicBoolean s;
  private int u;
  private boolean v;
  private final boolean w;
  private final z x;
  private final z y;
  private final z z;
  
  static
  {
    if (!b.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      t = bool;
      return;
    }
  }
  
  b(ad paramad)
  {
    this.a = paramad;
    this.f = new ai("Cache", "Current size, allocations, and eviction activity.");
    this.x = new z(this.f, h.a);
    this.y = new z(this.f, h.c);
    this.z = new z(this.f, h.d);
    this.A = new z(this.f, h.e);
    this.B = new z(this.f, h.f);
    this.g = new com.sleepycat.b.p.d(this.f, h.i);
    this.h = new com.sleepycat.b.p.d(this.f, h.k);
    this.i = new com.sleepycat.b.p.d(this.f, h.j);
    this.j = new com.sleepycat.b.p.d(this.f, h.l);
    this.k = new com.sleepycat.b.p.d(this.f, h.n);
    this.l = new com.sleepycat.b.p.d(this.f, h.m);
    this.C = new com.sleepycat.b.p.d(this.f, h.q);
    this.m = new AtomicLong(0L);
    this.n = new AtomicLong(0L);
    this.o = new AtomicLong(0L);
    Object localObject1 = EnumSet.allOf(e.class);
    int i1 = ((EnumSet)localObject1).size();
    this.p = new com.sleepycat.b.p.d[i1];
    this.q = new com.sleepycat.b.p.d[i1];
    this.D = new com.sleepycat.b.p.d[i1];
    this.r = new AtomicLong[i1];
    localObject1 = ((EnumSet)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (e)((Iterator)localObject1).next();
      i1 = ((e)localObject2).ordinal();
      this.p[i1] = new com.sleepycat.b.p.d(this.f, ((e)localObject2).a());
      this.q[i1] = new com.sleepycat.b.p.d(this.f, ((e)localObject2).b());
      this.r[i1] = new AtomicLong();
      this.D[i1] = new com.sleepycat.b.p.d(this.f, ((e)localObject2).c());
    }
    this.b = a();
    this.c = new a(paramad);
    this.F = w.a(getClass());
    this.E = new f(paramad, this.F);
    this.s = new AtomicBoolean(false);
    localObject1 = paramad.u;
    i1 = ((m)localObject1).a(com.sleepycat.b.b.d.n);
    int i2 = ((m)localObject1).a(com.sleepycat.b.b.d.o);
    long l1 = ((m)localObject1).a(com.sleepycat.b.b.d.p);
    this.u = ((m)localObject1).a(com.sleepycat.b.b.d.q);
    this.e = ((m)localObject1).a(com.sleepycat.b.b.d.bf);
    Object localObject2 = new g(this.C);
    this.d = new ThreadPoolExecutor(i1, i2, l1, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(1), new com.sleepycat.b.p.al(paramad, "JEEvictor", this.F), (RejectedExecutionHandler)localObject2);
    this.v = ((m)localObject1).a(com.sleepycat.b.b.d.k);
    this.w = ((m)localObject1).a(com.sleepycat.b.b.d.r);
    paramad.a(this);
  }
  
  private long a(e parame, final boolean paramBoolean, long paramLong)
  {
    this.x.f();
    Object localObject1 = this.b.a();
    long l1 = ((p)localObject1).a;
    int i4 = ((p)localObject1).b;
    if (i4 == 0) {
      return l1;
    }
    localObject1 = d();
    int i1 = 0;
    label397:
    label465:
    for (;;)
    {
      i3 = i1;
      if (l1 >= paramLong) {
        break label472;
      }
      i3 = i1;
      if (i1 > i4) {
        break label472;
      }
      try
      {
        localObject2 = this.c;
        if (((a)localObject2).a.a() + ((a)localObject2).c <= ((a)localObject2).a.a) {
          break label496;
        }
        i2 = 1;
      }
      finally
      {
        for (;;)
        {
          final Object localObject2;
          Object localObject3;
          continue;
          int i2 = 0;
        }
      }
      i3 = i1;
      if (i2 == 0) {
        break label472;
      }
      localObject3 = this.b.b(i4);
      localObject2 = ((o)localObject3).a;
      i2 = ((o)localObject3).b;
      i1 += i2;
      if (localObject2 == null) {
        break;
      }
      for (;;)
      {
        try
        {
          this.r[parame.ordinal()].incrementAndGet();
          final Object localObject4 = ((com.sleepycat.b.l.j)localObject2).i;
          localObject3 = ((d)localObject1).a(((i)localObject4).c, ((i)localObject4).a);
          if ((localObject3 != null) && (localObject3 == localObject4) && (!((i)localObject3).z()))
          {
            if (((com.sleepycat.b.l.j)localObject2).J())
            {
              localObject3 = ((com.sleepycat.b.l.j)localObject2).i;
              localObject4 = ((i)localObject3).c;
              localObject2 = new a((com.sleepycat.b.l.j)localObject2, (ad)localObject4, paramBoolean, ((ad)localObject4).t);
              ((i)localObject3).b.a((aq)localObject2);
              if (((a)localObject2).a) {
                ((ad)localObject4).q.b((i)localObject3);
              }
              l1 += ((a)localObject2).b;
              break;
            }
            l1 += a((com.sleepycat.b.l.j)localObject2, paramBoolean, parame);
            break;
          }
          if ((!((i)localObject4).A()) || (!((com.sleepycat.b.l.j)localObject2).l)) {
            break label465;
          }
          parame = " IN type=" + ((com.sleepycat.b.l.j)localObject2).y() + " id=" + ((com.sleepycat.b.l.j)localObject2).c + " not expected on INList";
          if (localObject3 != null) {
            break label397;
          }
          throw aa.c(parame);
        }
        finally {}
        this.y.b(i1);
        ((d)localObject1).a();
        throw parame;
        parame = "Database " + ((i)localObject3).c() + " id=" + ((i)localObject3).a + " rootLsn=" + com.sleepycat.b.p.j.h(((i)localObject3).b.d()) + ' ' + parame;
      }
    }
    int i3 = i1;
    label472:
    this.y.b(i3);
    ((d)localObject1).a();
    return l1;
  }
  
  private long a(com.sleepycat.b.l.j paramj1, com.sleepycat.b.l.j paramj2, int paramInt, boolean paramBoolean, e parame)
  {
    try
    {
      if ((!t) && (!paramj2.F())) {
        throw new AssertionError();
      }
    }
    finally
    {
      paramj2.C();
    }
    long l1 = paramj1.e;
    paramj1 = (com.sleepycat.b.l.j)paramj2.j(paramInt);
    if (paramj1 == null)
    {
      paramj2.C();
      return 0L;
    }
    if (parame == e.d) {}
    long l2;
    for (int i1 = 1; i1 == 0; i1 = 0)
    {
      l2 = paramj1.e;
      if (l2 <= l1) {
        break;
      }
      paramj2.C();
      return 0L;
    }
    if (i1 != 0) {
      paramj1.a(com.sleepycat.b.a.c);
    }
    for (;;)
    {
      try
      {
        boolean bool = paramj1.Q();
        if (!bool)
        {
          paramj1.C();
          return 0L;
          bool = paramj1.c(com.sleepycat.b.a.c);
          if (bool) {
            continue;
          }
          return 0L;
        }
        ad localad = paramj1.i.c;
        i1 = 0;
        if (paramj1.G())
        {
          if (localad.g) {
            break label306;
          }
          bool = a(paramj1, paramj2);
          l1 = paramj1.a(localad.w, this.w, true, bool, paramBoolean, paramj2);
          i1 = 1;
          if (l1 == -1L) {
            break label300;
          }
          localad.t.b(paramj1);
          l2 = paramj1.L();
          if (i1 != 0)
          {
            paramj2.a(paramInt, null, l1);
            this.z.f();
            paramj1.a(parame);
            l1 = l2;
            paramj1.C();
            return l1;
          }
        }
        else
        {
          l1 = paramj2.k(paramInt);
          continue;
        }
        paramj2.a(paramInt, null, null);
        continue;
        l1 = 0L;
      }
      finally
      {
        paramj1.C();
      }
      label300:
      continue;
      label306:
      l1 = -1L;
    }
  }
  
  private long a(com.sleepycat.b.l.j paramj, boolean paramBoolean, e parame)
  {
    Object localObject = paramj.i;
    ad localad = ((i)localObject).c;
    int i1;
    if (parame == e.d)
    {
      i1 = 1;
      if (i1 == 0) {
        break label62;
      }
      paramj.a(com.sleepycat.b.a.c);
    }
    for (;;)
    {
      try
      {
        bool = paramj.l;
        if (bool) {
          continue;
        }
        paramj.C();
        l1 = 0L;
      }
      finally
      {
        try
        {
          boolean bool;
          label62:
          long l2;
          localObject = ((ah)localObject).a(paramj, com.sleepycat.b.a.c);
          if (!((ae)localObject).a) {
            continue;
          }
          l1 = a(paramj, ((ae)localObject).d, ((ae)localObject).e, paramBoolean, parame);
          return l1;
        }
        finally
        {
          i1 = 0;
          continue;
        }
        parame = finally;
        i1 = 1;
        if (i1 == 0) {
          continue;
        }
        paramj.C();
      }
      return l1;
      i1 = 0;
      break;
      if (!paramj.c(com.sleepycat.b.a.c)) {
        return 0L;
      }
    }
    if ((paramj instanceof com.sleepycat.b.l.a))
    {
      l2 = ((com.sleepycat.b.l.a)paramj).s();
      l1 = l2;
      if (l2 > 0L) {
        this.B.f();
      }
    }
    for (long l1 = l2;; l1 = 0L)
    {
      if ((i1 == 0) && (l1 != 0L))
      {
        paramj.C();
        return l1;
      }
      bool = paramj.Q();
      if (!bool)
      {
        paramj.C();
        return l1;
      }
      localObject = ((i)localObject).b;
    }
  }
  
  private static boolean a(com.sleepycat.b.l.j paramj1, com.sleepycat.b.l.j paramj2)
  {
    com.sleepycat.b.h.d locald = paramj1.i.c.C;
    if (locald == null) {
      return false;
    }
    return locald.j.a(paramj1, paramj2);
  }
  
  abstract n a();
  
  public final void a(int paramInt)
  {
    this.b.a(paramInt);
  }
  
  public final void a(ad paramad)
  {
    this.b.a(paramad);
  }
  
  public final void a(e parame, boolean paramBoolean)
  {
    if (!this.E.a()) {
      return;
    }
    for (;;)
    {
      int i2;
      try
      {
        this.D[parame.ordinal()].g();
        long l2 = 0L;
        i2 = 0;
        int i1 = 1;
        if ((i1 != 0) && (i2 < 100) && (!this.s.get()))
        {
          a locala = this.c;
          long l5 = locala.a.a();
          long l3 = locala.a.a;
          long l6 = l5 - l3;
          if (l6 <= 0L) {
            break label299;
          }
          i3 = 1;
          l1 = 0L;
          if (i3 != 0)
          {
            long l4 = locala.c + l6;
            l1 = l4;
            if (l5 - l4 < l3 / 2L) {
              l1 = l3 / 2L + l6;
            }
          }
          if (locala.b == null) {
            break label287;
          }
          if (!((Boolean)locala.b.a()).booleanValue()) {
            break label305;
          }
          l1 = l3;
          if (l1 != 0L)
          {
            l2 = a(parame, paramBoolean, l1);
            if (l2 != 0L) {
              break label284;
            }
            i1 = 0;
            break label290;
          }
        }
        if ((parame == e.a) && (this.F.isLoggable(Level.FINEST))) {
          w.e(this.F, this.a, "Thread evicted " + l2 + " bytes in " + i2 + " batches");
        }
        return;
      }
      finally
      {
        this.E.b();
      }
      label284:
      break label290;
      label287:
      continue;
      label290:
      i2 += 1;
      continue;
      label299:
      int i3 = 0;
      continue;
      label305:
      long l1 = 0L;
    }
  }
  
  public final void a(com.sleepycat.b.l.j paramj, e parame)
  {
    if (!this.E.a()) {
      return;
    }
    try
    {
      a(paramj, false, parame);
      return;
    }
    finally
    {
      this.E.b();
    }
  }
  
  public final void b()
  {
    if (!this.v) {
      return;
    }
    this.d.execute(new c(this));
  }
  
  public final void b(ad paramad)
  {
    this.b.b(paramad);
  }
  
  public final void c()
  {
    this.s.set(true);
    this.d.shutdown();
    try
    {
      boolean bool = this.d.awaitTermination(this.u, TimeUnit.MILLISECONDS);
      if (!bool) {
        this.d.shutdownNow();
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException = localInterruptedException;
      this.d.shutdownNow();
      return;
    }
    finally
    {
      localObject = finally;
      this.d.shutdownNow();
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean c(ad paramad)
  {
    return this.b.c(paramad);
  }
  
  abstract d d();
  
  final class a
    implements aq
  {
    boolean a = false;
    long b = 0L;
    
    public final com.sleepycat.b.l.j a(com.sleepycat.b.l.e parame)
    {
      com.sleepycat.b.l.j localj = (com.sleepycat.b.l.j)parame.a;
      if (localj == null) {
        return null;
      }
      localj.a(com.sleepycat.b.a.c);
      try
      {
        boolean bool1 = localj.G();
        if ((localj == localObject2) && (localj.l) && (localj.J()) && (localj.Q()) && ((!localObject4.g) || (!bool1)))
        {
          boolean bool2 = b.a(localj);
          if (bool1)
          {
            parame.a(localj.a(localObject4.w, false, false, bool2, paramBoolean, null));
            this.a = true;
          }
          this.f.b(localj);
          this.b = localj.L();
          parame.c();
          b.a(this.g).f();
        }
        return null;
      }
      finally
      {
        localj.C();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\d\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */