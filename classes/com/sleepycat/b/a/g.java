package com.sleepycat.b.a;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.g.m;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class g
{
  public static final int a;
  public Map<Long, f> b = new HashMap();
  public int c = ao.l;
  public ao d;
  
  static
  {
    if (!g.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      a = ao.m + ao.g + ao.P;
      return;
    }
  }
  
  public g(boolean paramBoolean)
  {
    if (paramBoolean) {
      this.c += ao.m;
    }
  }
  
  public final f a(Long paramLong, boolean paramBoolean1, boolean paramBoolean2, m paramm)
  {
    if (!e)
    {
      if (this.d != null) {}
      for (boolean bool = true; paramBoolean1 != bool; bool = false) {
        throw new AssertionError();
      }
    }
    f localf = (f)this.b.get(paramLong);
    Object localObject = localf;
    if (localf == null) {
      if ((paramBoolean2) && (paramLong.longValue() < paramm.o))
      {
        localObject = localf;
        if (!paramm.a(paramLong.longValue())) {}
      }
      else
      {
        localf = new f();
        localObject = this.b.put(paramLong, localf);
        if ((!e) && (localObject != null)) {
          throw new AssertionError();
        }
        this.c += a;
        if (paramBoolean1) {
          this.d.f(a);
        }
        localObject = localf;
        if (!e)
        {
          localObject = localf;
          if (paramBoolean2)
          {
            localObject = localf;
            if (paramm != null)
            {
              localObject = localf;
              if (paramLong.longValue() != paramm.o)
              {
                localObject = localf;
                if (!paramm.a(paramLong.longValue())) {
                  throw new AssertionError("Resurrected file: 0x" + Long.toHexString(paramLong.longValue()));
                }
              }
            }
          }
        }
      }
    }
    return (f)localObject;
  }
  
  public final void a()
  {
    if (this.d != null)
    {
      this.d.f(0 - this.c);
      this.c = 0;
    }
  }
  
  public final void a(ad paramad)
  {
    this.d = paramad.n;
    this.d.f(this.c);
  }
  
  public final Set<Map.Entry<Long, f>> b()
  {
    return this.b.entrySet();
  }
  
  public final void b(ad paramad)
  {
    paramad = paramad.x.c();
    Iterator localIterator = this.b.keySet().iterator();
    while (localIterator.hasNext()) {
      if (Arrays.binarySearch(paramad, (Long)localIterator.next()) < 0)
      {
        localIterator.remove();
        this.d.f(0 - a);
        this.c -= a;
      }
    }
  }
  
  public final int c()
  {
    return this.b.size();
  }
  
  public String toString()
  {
    return this.b.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */