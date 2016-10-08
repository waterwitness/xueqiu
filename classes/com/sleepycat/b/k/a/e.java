package com.sleepycat.b.k.a;

import com.sleepycat.a.a.i;
import com.sleepycat.b.bp;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.m;
import com.sleepycat.b.x;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class e
  implements com.sleepycat.b.m.a, com.sleepycat.b.m.b, com.sleepycat.b.m.c, com.sleepycat.b.m.d
{
  private transient Map<Long, Map<String, d>> b;
  private final String c;
  private transient c d;
  private transient String e;
  
  static
  {
    if (!c.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public e(String paramString)
  {
    this.c = paramString;
  }
  
  private void a(bp parambp, m paramm1, m paramm2, boolean paramBoolean)
  {
    String str = i.a(paramm1);
    if (g.a(str) == g.b)
    {
      paramm1 = (Map)this.b.get(Long.valueOf(parambp.c));
      if (paramm1 != null) {
        break label105;
      }
      paramm1 = new ConcurrentHashMap();
      this.b.put(Long.valueOf(parambp.c), paramm1);
    }
    label105:
    for (parambp = paramm1;; parambp = paramm1)
    {
      parambp.put(str, new d(((a)new b().entryToObject(paramm2)).a, paramBoolean));
      return;
    }
  }
  
  public final com.sleepycat.b.m.d a(String paramString)
  {
    this.e = paramString;
    return this;
  }
  
  public final String a()
  {
    return this.c;
  }
  
  public final void a(bp parambp)
  {
    Object localObject = (Map)this.b.get(Long.valueOf(parambp.c));
    if (localObject != null)
    {
      localObject = ((Map)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        this.d.a((String)localEntry.getKey(), (d)localEntry.getValue());
      }
    }
    this.b.remove(Long.valueOf(parambp.c));
  }
  
  public final void a(bp parambp, m paramm1, m paramm2)
  {
    a(parambp, paramm1, paramm2, false);
  }
  
  public final void a(x paramx)
  {
    this.d = paramx.a.ag;
    if ((!a) && (this.d == null)) {
      throw new AssertionError();
    }
    this.b = new ConcurrentHashMap();
  }
  
  public final String b()
  {
    return this.e;
  }
  
  public final void b(bp parambp)
  {
    this.b.remove(Long.valueOf(parambp.c));
  }
  
  public final void b(bp parambp, m paramm1, m paramm2)
  {
    a(parambp, paramm1, paramm2, true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\k\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */