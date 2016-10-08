package com.sleepycat.b.n;

import com.sleepycat.b.aa;
import com.sleepycat.b.ap;
import com.sleepycat.b.aq;
import com.sleepycat.b.au;
import com.sleepycat.b.av;
import com.sleepycat.b.bp;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.c;
import com.sleepycat.b.l.a;
import com.sleepycat.b.l.d;
import java.util.HashMap;
import java.util.Map;

public abstract class q
{
  private long a;
  private long b;
  private boolean c = true;
  private RuntimeException d;
  public ad i;
  public l j;
  public long k;
  protected boolean l;
  protected boolean m;
  long n;
  e o;
  protected Map<Long, d> p;
  protected Thread q;
  public boolean r = true;
  public q s;
  
  q() {}
  
  protected q(ad paramad, boolean paramBoolean1, boolean paramBoolean2, long paramLong)
  {
    aj localaj = paramad.y;
    this.j = localaj.a;
    this.k = a(localaj, paramLong);
    this.i = paramad;
    this.l = paramBoolean1;
    this.o = null;
    this.m = paramBoolean2;
    this.a = l();
    this.b = paramad.p;
    if (this.b != 0L) {}
    for (this.n = System.currentTimeMillis();; this.n = 0L)
    {
      this.q = Thread.currentThread();
      return;
    }
  }
  
  public abstract long a(aj paramaj, long paramLong);
  
  public final m a(long paramLong, o paramo, boolean paramBoolean, com.sleepycat.b.c.i parami)
  {
    paramo = a(paramLong, paramo, paramBoolean, false, parami);
    if (paramo.a == h.f)
    {
      if (this.j.i) {}
      for (paramo = new aq("Non-blocking lock was denied.");; paramo = new ap("Non-blocking lock was denied.")) {
        throw paramo;
      }
    }
    b(this.s);
    return paramo;
  }
  
  public abstract m a(long paramLong, o paramo, boolean paramBoolean1, boolean paramBoolean2, com.sleepycat.b.c.i parami);
  
  abstract void a(long paramLong);
  
  public void a(long paramLong1, long paramLong2, com.sleepycat.b.c.i parami)
  {
    try
    {
      boolean bool = v();
      if (!bool) {}
      o localo;
      do
      {
        return;
        localo = this.j.a(Long.valueOf(paramLong1), this);
      } while ((localo == null) || (b(paramLong2, localo, false, parami).a != h.f));
      throw aa.c("No contention is possible on new LSN: " + com.sleepycat.b.p.j.h(paramLong2) + " old LSN: " + com.sleepycat.b.p.j.h(paramLong1) + " LockType: " + localo);
    }
    finally {}
  }
  
  public void a(au paramau) {}
  
  public final void a(av paramav)
  {
    if (paramav == av.a) {}
    for (boolean bool = true;; bool = false)
    {
      a_(bool);
      return;
    }
  }
  
  public abstract void a(c paramc);
  
  public abstract void a(com.sleepycat.b.c.i parami);
  
  public abstract void a(com.sleepycat.b.c.i parami, boolean paramBoolean);
  
  public void a(com.sleepycat.b.i parami) {}
  
  public void a(a parama)
  {
    if (parama.A()) {
      return;
    }
    Long localLong;
    try
    {
      if (this.p == null) {
        this.p = new HashMap();
      }
      localLong = Long.valueOf(parama.c);
      if (this.p.containsKey(localLong)) {
        return;
      }
    }
    finally {}
    this.p.put(localLong, parama.d());
  }
  
  void a(b paramb) {}
  
  protected abstract void a(Long paramLong, o paramo, h paramh);
  
  public boolean a(q paramq)
  {
    return false;
  }
  
  public abstract void a_(boolean paramBoolean);
  
  public final m b(long paramLong, o paramo, boolean paramBoolean, com.sleepycat.b.c.i parami)
  {
    paramo = a(paramLong, paramo, true, paramBoolean, parami);
    if (paramo.a != h.f) {
      b(this.s);
    }
    return paramo;
  }
  
  abstract void b(long paramLong);
  
  public abstract void b(c paramc);
  
  public void b(com.sleepycat.b.c.i parami) {}
  
  void b(b paramb) {}
  
  public void b(q paramq)
  {
    c(paramq);
  }
  
  protected abstract void b_(boolean paramBoolean);
  
  public void c(long paramLong)
  {
    if (paramLong < 0L) {
      try
      {
        throw new IllegalArgumentException("the timeout value cannot be negative");
      }
      finally {}
    }
    double d1 = paramLong;
    if (d1 > Math.pow(2.0D, 32.0D)) {
      throw new IllegalArgumentException("the timeout value cannot be greater than 2^32");
    }
    this.a = paramLong;
  }
  
  final void c(q paramq)
  {
    if ((this != paramq) && (this.d != null)) {
      throw this.i.a(this, this.d);
    }
  }
  
  public abstract boolean c();
  
  public boolean d(long paramLong)
  {
    try
    {
      boolean bool = this.j.c(paramLong, this);
      a(paramLong);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public abstract z e();
  
  public abstract q f();
  
  public abstract void h();
  
  public boolean h_()
  {
    return false;
  }
  
  public abstract boolean i_();
  
  void j()
  {
    this.c = false;
  }
  
  public abstract boolean j_();
  
  public void k() {}
  
  public abstract void k_();
  
  public long l()
  {
    return this.i.o;
  }
  
  public abstract boolean l_();
  
  public boolean p()
  {
    long l1 = s_();
    return (l1 != 0L) && (System.currentTimeMillis() - this.n > l1);
  }
  
  public bp p_()
  {
    return null;
  }
  
  public boolean q()
  {
    return false;
  }
  
  public final boolean r()
  {
    return this.m;
  }
  
  public long r_()
  {
    try
    {
      long l1 = this.a;
      return l1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean s()
  {
    return this.l;
  }
  
  public long s_()
  {
    try
    {
      long l1 = this.b;
      return l1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean t()
  {
    return false;
  }
  
  public String toString()
  {
    String str1 = getClass().getName();
    String str2 = str1.substring(str1.lastIndexOf('.') + 1);
    StringBuilder localStringBuilder = new StringBuilder().append(System.identityHashCode(this)).append(" ").append(Long.toString(this.k)).append("_");
    if (this.q == null) {}
    for (str1 = "";; str1 = this.q.getName()) {
      return str1 + "_" + str2;
    }
  }
  
  public final void u()
  {
    this.d = new RuntimeException("Lock was preempted by the replication replayer");
  }
  
  public boolean v()
  {
    return this.c;
  }
  
  public boolean w()
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */