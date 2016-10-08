package com.sleepycat.b.i.c.b;

import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.i.f;
import com.sleepycat.b.i.i.m;
import com.sleepycat.b.i.i.p;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;

public class q
{
  public au a;
  public au b;
  public long c;
  public boolean d = true;
  public final aj e;
  public volatile int f = 0;
  private final f h;
  
  static
  {
    if (!q.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      return;
    }
  }
  
  q(aa paramaa)
  {
    this.e = paramaa.i;
    this.h = this.e.aj;
    this.b = this.h.h.b().f;
    this.a = this.b;
    this.c = j.d(-1L);
  }
  
  public final void a()
  {
    try
    {
      if ((!g) && (this.f <= 0)) {
        throw new AssertionError();
      }
    }
    finally {}
    this.f -= 1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */