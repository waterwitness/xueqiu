package com.sleepycat.b.c;

import com.sleepycat.b.l.c;
import com.sleepycat.b.l.g;
import com.sleepycat.b.l.j;
import java.util.ArrayList;
import java.util.Iterator;

public final class az
  extends bb
{
  private final c e;
  private final long f;
  
  static
  {
    if (!ay.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  az(j paramj, int paramInt, c paramc, long paramLong)
  {
    super(paramj, paramInt);
    if ((!a) && (paramc == null)) {
      throw new AssertionError();
    }
    if ((!a) && (paramLong == -1L)) {
      throw new AssertionError();
    }
    this.e = paramc;
    this.f = paramLong;
  }
  
  final c a()
  {
    return this.e;
  }
  
  final long b()
  {
    return this.f;
  }
  
  final long c()
  {
    long l2 = ao.m + ao.V;
    Object localObject = this.e;
    long l1 = ao.x + ao.W + ao.c(((c)localObject).d.size());
    localObject = ((c)localObject).d.iterator();
    while (((Iterator)localObject).hasNext())
    {
      g localg = (g)((Iterator)localObject).next();
      int i = ao.y;
      l1 = ao.a(localg.a.length) + i + l1;
    }
    return l2 + l1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\az.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */