package com.sleepycat.b.i;

import com.sleepycat.b.c.ac;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.e.n;
import com.sleepycat.b.i.i.f;
import com.sleepycat.b.i.i.m;
import com.sleepycat.b.i.i.p;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.w;
import java.util.logging.Logger;

public final class d
  extends com.sleepycat.b.aa
{
  private final long c;
  private final String d;
  private final au e;
  
  private d(String paramString, d paramd)
  {
    super(paramString, paramd);
    this.e = paramd.e;
    this.c = paramd.c;
    this.d = paramd.d;
  }
  
  public d(Logger paramLogger, com.sleepycat.b.i.c.b.aa paramaa, long paramLong)
  {
    super(paramaa.i, ac.v, String.format("Master:%s, initiated shutdown at %1tc.", new Object[] { paramaa.g.h().a, Long.valueOf(paramLong) }));
    this.e = paramaa.i.aj.h.b().c;
    this.d = paramaa.g.h().a;
    this.c = paramLong;
    w.b(paramLogger, paramaa.i, "Explicit shutdown request from Master:" + this.d);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */