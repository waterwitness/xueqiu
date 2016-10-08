package com.sleepycat.b.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.d.b;
import com.sleepycat.b.d.h;
import com.sleepycat.b.l.j;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.z;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;

public class al
  implements Iterable<j>
{
  public ad a;
  final boolean b;
  public volatile boolean c;
  public volatile boolean d;
  public boolean e;
  public AtomicLong f;
  ConcurrentMap<j, j> g = null;
  AtomicLong h;
  AtomicLong i;
  private boolean k;
  
  static
  {
    if (!al.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      j = bool;
      return;
    }
  }
  
  al(ad paramad)
  {
    this.a = paramad;
    this.c = false;
    this.d = false;
    this.e = true;
    this.f = new AtomicLong();
    this.h = new AtomicLong();
    this.i = new AtomicLong();
    this.g = new ConcurrentHashMap();
    this.b = true;
    this.k = false;
  }
  
  private boolean c(j paramj)
  {
    if (paramj.f()) {
      this.i.decrementAndGet();
    }
    for (;;)
    {
      this.a.A.a(1);
      if ((j)this.g.remove(paramj) == null) {
        break;
      }
      return true;
      this.h.decrementAndGet();
    }
    return false;
  }
  
  public final ai a()
  {
    ai localai = new ai("Cache", "Current size, allocations, and eviction activity.");
    long l1 = this.i.get();
    long l2 = this.h.get();
    new z(localai, h.o, l2);
    new z(localai, h.p, l1);
    return localai;
  }
  
  public final void a(j paramj)
  {
    if (!this.k) {}
    do
    {
      return;
      this.a.A.a(1);
      if (paramj.f()) {
        this.i.incrementAndGet();
      }
      for (;;)
      {
        j localj = (j)this.g.putIfAbsent(paramj, paramj);
        if (localj == null) {
          break;
        }
        throw aa.a(this.a, "Failed adding new IN node=" + paramj.c + " dbIdentity=" + System.identityHashCode(paramj.i) + " db=" + paramj.i.a(0) + "\nExisting IN node=" + localj.c + " dbIdentity=" + System.identityHashCode(localj.i) + " db=" + localj.i.a(0));
        this.h.incrementAndGet();
      }
    } while (!this.b);
    long l = paramj.L();
    if ((this.c) && (this.e)) {
      this.f.addAndGet(l);
    }
    paramj.b(this.d);
    this.a.n.c(l);
    paramj.d(true);
  }
  
  public final void a(j paramj, long paramLong)
  {
    if ((this.c) && (this.e) && (this.d == paramj.H())) {
      this.f.addAndGet(paramLong);
    }
  }
  
  public final int b()
  {
    return this.g.size();
  }
  
  public final void b(j paramj)
  {
    if (!this.k) {}
    do
    {
      return;
      boolean bool = c(paramj);
      if ((!j) && (!bool)) {
        throw new AssertionError();
      }
    } while (!this.b);
    long l = 0L - paramj.L();
    a(paramj, l);
    this.a.n.c(l);
    paramj.d(false);
  }
  
  public final void c()
  {
    if ((!j) && (!this.g.isEmpty())) {
      throw new AssertionError();
    }
    if ((!j) && (this.k)) {
      throw new AssertionError();
    }
    this.k = true;
  }
  
  public Iterator<j> iterator()
  {
    return new am(this, (byte)0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */