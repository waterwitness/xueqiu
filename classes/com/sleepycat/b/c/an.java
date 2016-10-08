package com.sleepycat.b.c;

import com.sleepycat.b.a.t;
import com.sleepycat.b.p.j;
import java.util.Map;
import java.util.TreeMap;

abstract class an
{
  Map<Long, t> a;
  int b;
  long c;
  
  an()
  {
    a();
  }
  
  final void a()
  {
    b(-this.c);
    this.a = new TreeMap();
    this.b = 0;
    b(ao.q);
  }
  
  abstract void a(long paramLong);
  
  final void b(long paramLong)
  {
    this.c += paramLong;
    a(paramLong);
  }
  
  final void c(long paramLong)
  {
    long l = j.d(paramLong);
    t localt2 = (t)this.a.get(Long.valueOf(l));
    t localt1 = localt2;
    if (localt2 == null)
    {
      localt1 = new t();
      this.a.put(Long.valueOf(l), localt1);
      b(ao.Q);
      b(ao.r);
    }
    if (localt1.a(j.e(paramLong), false)) {
      b(ao.R);
    }
    this.b += 1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */