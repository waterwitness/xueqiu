package com.sleepycat.b.g;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.m;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.z;

final class h
{
  final ad a;
  final long b;
  final Object c;
  volatile boolean d;
  i e;
  int f;
  long g;
  final int h;
  final long i;
  final boolean j;
  final ai k;
  final z l;
  final com.sleepycat.b.p.d m;
  final z n;
  final z o;
  final z p;
  final z q;
  final z r;
  
  h(ad paramad)
  {
    this.b = paramad.u.a(com.sleepycat.b.b.d.T);
    this.i = paramad.u.b(com.sleepycat.b.b.d.U);
    this.h = paramad.u.a(com.sleepycat.b.b.d.V);
    if ((this.i == 0L) || (this.h == 0)) {}
    for (this.j = false;; this.j = true)
    {
      this.a = paramad;
      this.c = new Object();
      this.d = false;
      this.e = new i(this.b, paramad);
      this.k = new ai("FSyncManager", "FSyncManager statistics");
      this.l = new z(this.k, aq.r);
      this.m = new com.sleepycat.b.p.d(this.k, aq.q);
      this.n = new z(this.k, aq.s);
      this.o = new z(this.k, aq.v);
      this.q = new z(this.k, aq.y);
      this.p = new z(this.k, aq.x);
      this.r = new z(this.k, aq.w);
      this.f = 0;
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */