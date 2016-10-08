package com.sleepycat.b.j;

import com.sleepycat.b.c.x;
import com.sleepycat.b.d.h;
import com.sleepycat.b.e.a;
import com.sleepycat.b.g.aq;
import com.sleepycat.b.n.n;
import com.sleepycat.b.p.ag;
import java.util.HashMap;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;

public class c
{
  private static ag[] b = { com.sleepycat.b.a.e.a, com.sleepycat.b.a.e.b, com.sleepycat.b.a.e.c, com.sleepycat.b.a.e.d, com.sleepycat.b.a.e.e, com.sleepycat.b.a.e.f, com.sleepycat.b.a.e.g, com.sleepycat.b.a.e.h, com.sleepycat.b.a.e.i, com.sleepycat.b.a.e.j, com.sleepycat.b.a.e.k, com.sleepycat.b.a.e.l, com.sleepycat.b.a.e.m, com.sleepycat.b.a.e.n, com.sleepycat.b.a.e.o, com.sleepycat.b.a.e.p, com.sleepycat.b.a.e.q, com.sleepycat.b.a.e.r, com.sleepycat.b.a.e.s, com.sleepycat.b.a.e.t, com.sleepycat.b.a.e.u, com.sleepycat.b.a.e.v, com.sleepycat.b.a.e.w, com.sleepycat.b.a.e.x, com.sleepycat.b.a.e.y, com.sleepycat.b.a.e.z, com.sleepycat.b.a.e.A, com.sleepycat.b.a.e.B, com.sleepycat.b.a.e.C, com.sleepycat.b.a.e.D, com.sleepycat.b.a.e.E };
  private static ag[] c = { x.a, x.b, x.c, x.d, x.e, x.f };
  private static ag[] d = { x.g, x.h };
  private static ag[] e = { h.a, h.b, h.c, h.d, h.e, h.f, h.g, h.h, h.i, h.j, h.k, h.l, h.m, h.n, h.o, h.p, h.q, h.r, h.s, h.t, com.sleepycat.b.d.e.d.d(), com.sleepycat.b.d.e.d.a(), com.sleepycat.b.d.e.d.c(), com.sleepycat.b.d.e.d.b(), com.sleepycat.b.d.e.c.d(), com.sleepycat.b.d.e.c.a(), com.sleepycat.b.d.e.c.c(), com.sleepycat.b.d.e.c.b(), com.sleepycat.b.d.e.e.d(), com.sleepycat.b.d.e.e.a(), com.sleepycat.b.d.e.e.c(), com.sleepycat.b.d.e.e.b(), com.sleepycat.b.d.e.a.d(), com.sleepycat.b.d.e.a.a(), com.sleepycat.b.d.e.a.c(), com.sleepycat.b.d.e.a.b(), com.sleepycat.b.d.e.b.d(), com.sleepycat.b.d.e.b.a(), com.sleepycat.b.d.e.b.c(), com.sleepycat.b.d.e.b.b() };
  private static ag[] f = { a.a, a.b, a.c, a.d, a.e, a.f };
  private static ag[] g = { com.sleepycat.b.f.c.a, com.sleepycat.b.f.c.b, com.sleepycat.b.f.c.c, com.sleepycat.b.f.c.d, com.sleepycat.b.f.c.e, com.sleepycat.b.f.c.f };
  private static ag[] h = { aq.a, aq.b, aq.c, aq.d, aq.e, aq.f, aq.g, aq.h, aq.i, aq.j, aq.k, aq.l, aq.m, aq.n, aq.o, aq.p, aq.q, aq.r, aq.s, aq.t, aq.u, aq.v, aq.w, aq.y, aq.x, aq.z, aq.A, aq.B, aq.C, aq.D, aq.E, aq.F, aq.G };
  private static ag[] i = { com.sleepycat.b.h.c.a, com.sleepycat.b.h.c.b, com.sleepycat.b.h.c.c, com.sleepycat.b.h.c.d, com.sleepycat.b.h.c.e, com.sleepycat.b.h.c.f, com.sleepycat.b.h.c.g };
  private static ag[] j = { x.i, x.j, x.k, x.l, x.m, x.n, x.o, x.p, x.q, x.r, x.s, x.t, x.u, x.v, x.w, x.x, x.y, x.z, x.A, x.B, x.C, x.D, x.E, x.F, x.G, x.H, x.I, x.J, x.K, x.L, x.M, x.N, x.O, x.P, x.Q };
  private static ag[] k = { n.d, n.f };
  public Map<String, ag> a = new HashMap();
  
  public c()
  {
    ag[] arrayOfag = e;
    int i1 = arrayOfag.length;
    int m = 0;
    ag localag;
    while (m < i1)
    {
      localag = arrayOfag[m];
      this.a.put("Cache" + ":" + localag.a, localag);
      m += 1;
    }
    arrayOfag = c;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      this.a.put("Cache" + ":" + localag.a, localag);
      m += 1;
    }
    arrayOfag = i;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      this.a.put("Checkpoints" + ":" + localag.a, localag);
      m += 1;
    }
    arrayOfag = b;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      this.a.put("Cleaning" + ":" + localag.a, localag);
      m += 1;
    }
    arrayOfag = h;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      this.a.put("I/O" + ":" + localag.a, localag);
      m += 1;
    }
    arrayOfag = k;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      this.a.put("Locks" + ":" + localag.a, localag);
      m += 1;
    }
    arrayOfag = g;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      this.a.put("Locks" + ":" + localag.a, localag);
      m += 1;
    }
    arrayOfag = d;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      this.a.put("Environment" + ":" + localag.a, localag);
      m += 1;
    }
    arrayOfag = f;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      this.a.put("Node Compression" + ":" + localag.a, localag);
      m += 1;
    }
    arrayOfag = j;
    i1 = arrayOfag.length;
    m = n;
    while (m < i1)
    {
      localag = arrayOfag[m];
      this.a.put("Op" + ":" + localag.a, localag);
      m += 1;
    }
  }
  
  public static void a(SortedSet<String> paramSortedSet)
  {
    int n = 0;
    ag[] arrayOfag = e;
    int i1 = arrayOfag.length;
    int m = 0;
    ag localag;
    while (m < i1)
    {
      localag = arrayOfag[m];
      paramSortedSet.add("Cache" + ":" + localag.a);
      m += 1;
    }
    arrayOfag = c;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      paramSortedSet.add("Cache" + ":" + localag.a);
      m += 1;
    }
    arrayOfag = i;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      paramSortedSet.add("Checkpoints" + ":" + localag.a);
      m += 1;
    }
    arrayOfag = b;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      paramSortedSet.add("Cleaning" + ":" + localag.a);
      m += 1;
    }
    arrayOfag = h;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      paramSortedSet.add("I/O" + ":" + localag.a);
      m += 1;
    }
    arrayOfag = k;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      paramSortedSet.add("Locks" + ":" + localag.a);
      m += 1;
    }
    arrayOfag = g;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      paramSortedSet.add("Locks" + ":" + localag.a);
      m += 1;
    }
    arrayOfag = d;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      paramSortedSet.add("Environment" + ":" + localag.a);
      m += 1;
    }
    arrayOfag = f;
    i1 = arrayOfag.length;
    m = 0;
    while (m < i1)
    {
      localag = arrayOfag[m];
      paramSortedSet.add("Node Compression" + ":" + localag.a);
      m += 1;
    }
    arrayOfag = j;
    i1 = arrayOfag.length;
    m = n;
    while (m < i1)
    {
      localag = arrayOfag[m];
      paramSortedSet.add("Op" + ":" + localag.a);
      m += 1;
    }
  }
  
  public SortedSet<String> a()
  {
    TreeSet localTreeSet = new TreeSet();
    a(localTreeSet);
    return localTreeSet;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\j\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */