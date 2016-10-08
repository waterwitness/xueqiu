package com.sleepycat.b.n;

import com.sleepycat.b.bn;
import com.sleepycat.b.bp;
import com.sleepycat.b.bs;
import com.sleepycat.b.bt;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.bl;
import com.sleepycat.b.f.f;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.j;
import com.sleepycat.b.p.o;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public class aj
{
  public l a;
  public final ad b;
  final f c;
  final Map<z, z> d;
  public final Map<com.sleepycat.b.q.a, z> e;
  public final Map<Thread, bp> f;
  public final AtomicLong g;
  public final AtomicLong h;
  public final AtomicInteger i;
  com.sleepycat.b.p.z j;
  com.sleepycat.b.p.z k;
  public com.sleepycat.b.p.z l;
  private ai n;
  private o o;
  private com.sleepycat.b.p.z p;
  private com.sleepycat.b.p.z q;
  private com.sleepycat.b.p.z r;
  private com.sleepycat.b.p.a s;
  
  static
  {
    if (!aj.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      m = bool;
      return;
    }
  }
  
  public aj(ad paramad)
  {
    this.a = new w(paramad);
    if (paramad.f) {
      this.a = new c(paramad, this.a);
    }
    this.b = paramad;
    this.c = new f("TxnManager.allTxns");
    this.d = new ConcurrentHashMap();
    this.e = Collections.synchronizedMap(new HashMap());
    this.f = new ConcurrentHashMap();
    this.g = new AtomicLong(0L);
    this.h = new AtomicLong(-10L);
    this.i = new AtomicInteger(0);
    this.n = new ai("Transaction", "Transaction statistics");
    this.o = new o(this.n, bl.a);
    this.p = new com.sleepycat.b.p.z(this.n, bl.b);
    this.j = new com.sleepycat.b.p.z(this.n, bl.d);
    this.k = new com.sleepycat.b.p.z(this.n, bl.c);
    this.l = new com.sleepycat.b.p.z(this.n, bl.f);
    this.q = new com.sleepycat.b.p.z(this.n, bl.g);
    this.r = new com.sleepycat.b.p.z(this.n, bl.e);
    this.s = new com.sleepycat.b.p.a(this.n, bl.h);
  }
  
  public static boolean a(long paramLong)
  {
    return paramLong <= -10L;
  }
  
  public final long a()
  {
    this.c.a();
    label108:
    for (;;)
    {
      long l1;
      try
      {
        Iterator localIterator = this.d.keySet().iterator();
        l1 = -1L;
        if (localIterator.hasNext())
        {
          long l2 = ((z)localIterator.next()).y;
          if (l1 == -1L)
          {
            l1 = l2;
            continue;
          }
          if (l2 == -1L) {
            break label108;
          }
          int i1 = j.b(l2, l1);
          if (i1 >= 0) {
            break label108;
          }
          l1 = l2;
          continue;
        }
      }
      finally
      {
        this.c.d();
      }
      return l1;
    }
  }
  
  public final bs a(bn parambn)
  {
    this.c.c();
    try
    {
      this.o.a(Integer.valueOf(this.d.size()));
      Object localObject = new bt[Integer.valueOf(this.o.a).intValue()];
      Iterator localIterator = this.d.keySet().iterator();
      int i1 = 0;
      while ((localIterator.hasNext()) && (i1 < localObject.length))
      {
        q localq = (q)localIterator.next();
        localObject[i1] = new bt(localq.toString(), localq.k);
        i1 += 1;
      }
      this.s.a = ((bt[])localObject);
      localObject = new bs(this.n.a(false));
      if (parambn.c)
      {
        this.j.a();
        this.k.a();
        this.q.a();
        this.r.a();
      }
      return (bs)localObject;
    }
    finally
    {
      this.c.d();
    }
  }
  
  public final void a(z paramz)
  {
    this.c.c();
    try
    {
      this.d.put(paramz, paramz);
      if (paramz.E) {
        this.i.incrementAndGet();
      }
      this.p.f();
      return;
    }
    finally
    {
      this.c.d();
    }
  }
  
  public final Set<z> b()
  {
    HashSet localHashSet = new HashSet();
    this.c.c();
    try
    {
      Iterator localIterator = this.d.keySet().iterator();
      while (localIterator.hasNext())
      {
        z localz = (z)localIterator.next();
        if (localz.q_()) {
          localHashSet.add(localz);
        }
      }
    }
    finally
    {
      this.c.d();
    }
    return localSet;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */