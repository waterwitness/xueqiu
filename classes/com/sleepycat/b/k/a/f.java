package com.sleepycat.b.k.a;

import com.sleepycat.b.av;
import com.sleepycat.b.bp;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.w;
import com.sleepycat.b.l;
import com.sleepycat.b.m;
import com.sleepycat.b.n.r;
import com.sleepycat.b.x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class f
{
  private final ad b;
  private final com.sleepycat.b.i c;
  private final com.sleepycat.b.c.i d;
  
  static
  {
    if (!f.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public f(ad paramad)
  {
    if ((!a) && (paramad == null)) {
      throw new AssertionError();
    }
    this.b = paramad;
    x localx = paramad.A();
    if ((!a) && (localx == null)) {
      throw new AssertionError();
    }
    paramad = localx.a(true);
    try
    {
      l locall = new l();
      locall.b = false;
      locall.d = true;
      e locale = new e("syncTrigger");
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(locale);
      locall.a(localArrayList);
      locall.j = true;
      this.c = localx.b(paramad, w.f.b(), locall);
      this.d = this.c.c;
      return;
    }
    finally
    {
      paramad.a();
    }
  }
  
  public final Map<String, m> a(g paramg, x paramx)
  {
    if (this.d == null) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    try
    {
      localq = r.a(paramx, null, this.d.d, false);
      try
      {
        com.sleepycat.b.e locale = com.sleepycat.b.q.a(this.d, localq, com.sleepycat.b.g.a);
        m localm = new m();
        for (paramx = new m(); av.a == locale.c(localm, paramx, null); paramx = new m())
        {
          String str = com.sleepycat.a.a.i.a(localm);
          if (g.a(str).equals(paramg)) {
            localHashMap.put(str, paramx);
          }
        }
        if (paramx == null) {
          break label130;
        }
      }
      finally
      {
        paramx = localq;
      }
    }
    finally
    {
      for (;;)
      {
        com.sleepycat.b.n.q localq;
        paramx = null;
      }
    }
    paramx.a_(false);
    label130:
    throw paramg;
    if (localq != null) {
      localq.a_(true);
    }
    return localHashMap;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\k\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */