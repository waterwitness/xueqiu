package com.sleepycat.b.i.b;

import com.sleepycat.b.c.ac;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.i.c.an;
import com.sleepycat.b.i.c.t;
import com.sleepycat.b.i.c.t.4;
import com.sleepycat.b.i.p;
import com.sleepycat.b.p.al;
import java.net.InetSocketAddress;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.Logger;

public class d
{
  public t a;
  public final com.sleepycat.b.i.c.b.x b;
  public final com.sleepycat.b.i.c.b.aa c;
  public final com.sleepycat.b.i.c.aj d;
  public m e;
  public a f;
  public j g;
  public final ExecutorService h;
  public final b i;
  public final x j;
  public final Logger k;
  public final Formatter l;
  private final AtomicBoolean n = new AtomicBoolean(false);
  private final k o;
  private volatile f p = null;
  private e q = null;
  private final h r;
  private int s = 0;
  
  static
  {
    if (!d.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      m = bool;
      return;
    }
  }
  
  public d(com.sleepycat.b.i.c.b.aa paramaa, k paramk, b paramb)
  {
    this.d = paramaa.i;
    this.c = paramaa;
    this.b = paramaa.a;
    com.sleepycat.b.c.m localm;
    String str;
    if (this.d != null)
    {
      this.k = com.sleepycat.b.p.w.a(getClass());
      localm = this.d.u;
      str = localm.a(an.a);
    }
    for (this.r = new h(this, localm.a(an.I));; this.r = null)
    {
      this.l = new com.sleepycat.b.i.h.w(this.b);
      this.j = new x(am.b(), l.a(), str, this.b, paramaa.i);
      this.i = paramb;
      this.o = paramk;
      this.h = Executors.newCachedThreadPool(new al("JE Elections Factory", this.k));
      return;
      this.k = com.sleepycat.b.p.w.b(getClass());
      str = "TEST_GROUP";
    }
  }
  
  private void b(t arg1, p paramp)
  {
    long l1;
    try
    {
      a(???);
      l1 = System.currentTimeMillis();
      this.s += 1;
      com.sleepycat.b.p.w.a(this.k, this.d, this.l, Level.INFO, "Election initiated; election #" + this.s);
      if (this.p != null)
      {
        com.sleepycat.b.p.w.a(this.k, this.d, this.l, Level.INFO, "Election in progress. Waiting....");
        this.p.join();
        ??? = this.p.F;
        if (??? != null) {
          throw new com.sleepycat.b.aa(this.d, ac.z, ???);
        }
      }
    }
    finally {}
    for (;;)
    {
      CountDownLatch localCountDownLatch;
      i locali;
      synchronized (this.q)
      {
        localCountDownLatch = this.q.a();
        locali = new i(this.c, localCountDownLatch);
        com.sleepycat.b.i.c.aj localaj = this.d;
        if (this.d == null)
        {
          ??? = null;
          this.p = new f(this, paramp, locali, localaj, ???, (byte)0);
          this.p.start();
        }
      }
      ??? = this.d.B();
    }
  }
  
  public final void a()
  {
    this.g = new j(this.j, this.c);
    this.g.start();
    this.g.a(this.o);
    this.q = new e();
    this.g.a(this.q);
    if (this.r != null) {
      this.c.v.schedule(this.r, this.r.a, this.r.a);
    }
  }
  
  public final void a(t paramt)
  {
    this.a = paramt;
    x localx = this.j;
    HashSet localHashSet = new HashSet();
    paramt = paramt.f.values().iterator();
    while (paramt.hasNext())
    {
      com.sleepycat.b.i.c.am localam = (com.sleepycat.b.i.c.am)paramt.next();
      if (!localam.d) {
        localHashSet.add(Integer.valueOf(localam.a.b));
      }
    }
    localx.j = localHashSet;
  }
  
  public final void a(t paramt, p paramp)
  {
    try
    {
      b(paramt, paramp);
      return;
    }
    finally
    {
      paramt = finally;
      throw paramt;
    }
  }
  
  public final Set<InetSocketAddress> b()
  {
    if (this.a == null) {
      throw com.sleepycat.b.aa.c("No rep group was configured");
    }
    t localt = this.a;
    return localt.b(new t.4(localt));
  }
  
  public final void c()
  {
    if (!this.n.compareAndSet(false, true)) {
      return;
    }
    com.sleepycat.b.p.w.a(this.k, this.d, this.l, Level.INFO, "Elections shutdown initiated");
    if (this.f != null) {
      this.f.b();
    }
    if (this.g != null) {
      this.g.b();
    }
    if (this.p != null)
    {
      f localf = this.p;
      if (!localf.n()) {
        localf.a(localf.c.k);
      }
    }
    if (this.r != null) {
      this.r.cancel();
    }
    this.h.shutdown();
    com.sleepycat.b.p.w.a(this.k, this.d, this.l, Level.INFO, "Elections shutdown completed");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */