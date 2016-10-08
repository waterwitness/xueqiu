package com.sleepycat.b.h;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ac;
import com.sleepycat.b.n.ad;
import com.sleepycat.b.n.aj;
import com.sleepycat.b.n.u;
import com.sleepycat.b.n.v;
import com.sleepycat.b.p.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class r
{
  final p a;
  final long b;
  final long c;
  final boolean d;
  Set<Long> e;
  final Map<Long, ad> f;
  final List<r> g;
  r h = null;
  private final long j;
  private Iterator<r> k;
  
  static
  {
    if (!p.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      i = bool;
      return;
    }
  }
  
  private r(p paramp, long paramLong1, long paramLong2, long paramLong3, long paramLong4, Set<Long> paramSet)
  {
    this.a = paramp;
    this.b = paramLong1;
    this.j = paramLong2;
    this.c = paramLong3;
    if ((paramLong4 != -1L) && (this.c != -1L) && (j.b(this.c, paramLong4) < 0)) {}
    for (boolean bool = true;; bool = false)
    {
      this.d = bool;
      this.f = new HashMap();
      this.g = new ArrayList();
      this.e = paramSet;
      return;
    }
  }
  
  r(p paramp, u paramu, long paramLong)
  {
    this(paramp, paramu.a, paramu.b, paramLong, paramp.b, null);
  }
  
  r(p paramp, v paramv, long paramLong)
  {
    this(paramp, paramv.b, paramLong, -1L, paramp.b, paramv.c);
  }
  
  final r a(u paramu, long paramLong)
  {
    if (this.h != null)
    {
      r localr = this.h.a(paramu, paramLong);
      if (localr != null)
      {
        paramu = localr;
        return paramu;
      }
    }
    if (j.b(paramLong, this.b) < 0) {}
    for (int m = 0;; m = 1)
    {
      paramu = this;
      if (m != 0) {
        break;
      }
      return null;
      if (j.b(paramLong, this.j) >= 0) {
        a("Should not be two RollbackEnds in a row. New RollbackEnd at " + j.h(paramLong) + " " + paramu);
      }
      if ((j.b(paramu.a, this.b) < 0) || (j.b(paramu.b, this.j) >= 0)) {
        a("RollbackEnd intersects current rollback period " + paramu + " at " + j.h(paramLong));
      }
    }
  }
  
  final r a(v paramv, long paramLong)
  {
    if (this.h != null)
    {
      r localr = this.h.a(paramv, paramLong);
      if (localr != null)
      {
        paramv = localr;
        return paramv;
      }
    }
    if (j.b(paramLong, this.b) < 0) {}
    for (int m = 0;; m = 1)
    {
      paramv = this;
      if (m != 0) {
        break;
      }
      return null;
      if ((!a(paramLong)) && ((j.b(paramv.b, this.b) < 0) || (j.b(paramLong, this.j) >= 0))) {
        a("RollbackStart intersects current rollback period " + paramv + " at " + j.h(paramLong));
      }
    }
  }
  
  final void a()
  {
    for (r localr = this;; localr = localr.h)
    {
      localr.k = localr.g.iterator();
      if (!localr.k.hasNext()) {
        break;
      }
      localr.h = ((r)localr.k.next());
    }
    localr.h = null;
  }
  
  final void a(String paramString)
  {
    throw new aa(this.a.a, ac.m, paramString + "\ntracker contents=" + this.a);
  }
  
  final boolean a(long paramLong)
  {
    return j.b(paramLong, this.j) == 0;
  }
  
  final boolean a(long paramLong1, long paramLong2)
  {
    return (c(paramLong1)) && (this.e.contains(Long.valueOf(paramLong2)));
  }
  
  final r b(long paramLong)
  {
    r localr;
    if (this.h != null)
    {
      localr = this.h.b(paramLong);
      if (localr == null) {}
    }
    do
    {
      return localr;
      localr = this;
    } while (j.b(paramLong, this.b) > 0);
    return null;
  }
  
  final r b(long paramLong1, long paramLong2)
  {
    r localr;
    if (this.h != null)
    {
      localr = this.h.b(paramLong1, paramLong2);
      if (localr == null) {}
    }
    do
    {
      return localr;
      localr = this;
    } while (a(paramLong1, paramLong2));
    return null;
  }
  
  final boolean c(long paramLong)
  {
    return (j.b(this.b, paramLong) < 0) && (j.b(this.j, paramLong) > 0);
  }
  
  final boolean c(long paramLong1, long paramLong2)
  {
    if (!aj.a(paramLong2)) {}
    while ((this.c == -1L) || (j.b(this.j, paramLong1) >= 0) || (j.b(this.c, paramLong1) <= 0)) {
      return true;
    }
    return false;
  }
  
  final void d(long paramLong)
  {
    for (r localr = this;; localr = localr.h)
    {
      if (localr.h == null) {
        return;
      }
      if (localr.h.f(paramLong))
      {
        if (!localr.k.hasNext()) {
          break;
        }
        localr.h = ((r)localr.k.next());
        localr.h.a();
      }
    }
    localr.h = null;
  }
  
  final String e(long paramLong)
  {
    return paramLong + " [" + j.h(paramLong) + "] should not be within rollbackStart " + this.j + " [" + j.h(this.j) + "] and rollbackEnd " + this.c + " [" + j.h(this.c) + "]";
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof r)) {}
    do
    {
      return false;
      paramObject = (r)paramObject;
    } while ((this.b != ((r)paramObject).b) || (this.j != ((r)paramObject).j) || (this.c != ((r)paramObject).c));
    return true;
  }
  
  final boolean f(long paramLong)
  {
    return j.b(this.b, paramLong) > 0;
  }
  
  public final int hashCode()
  {
    return (((int)this.b + 31) * 31 + (int)this.j) * 31 + (int)this.c;
  }
  
  public final String toString()
  {
    return "matchpoint=" + this.b + " [" + j.h(this.b) + "] rollbackStart=" + this.j + " [" + j.h(this.j) + "] rollbackEnd=" + this.c + " [" + j.h(this.c) + "]";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */