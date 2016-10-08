package com.sleepycat.b.j;

import com.sleepycat.b.p.ag;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.x;
import com.sleepycat.b.p.y;
import com.sleepycat.b.p.z;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class f
{
  private final ArrayList<g> b = new ArrayList();
  private final ArrayList<g> c = new ArrayList();
  
  public f(Map<String, ai> paramMap)
  {
    ai localai;
    paramMap = localai.values().iterator();
    while (paramMap.hasNext())
    {
      localai = (ai)paramMap.next();
      Iterator localIterator = Collections.unmodifiableMap(localai.b).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if ((localEntry.getValue() instanceof x)) {
          this.c.add(new g(this, localai.a, (ag)localEntry.getKey()));
        } else if ((localEntry.getValue() instanceof y)) {
          this.b.add(new g(this, localai.a, (ag)localEntry.getKey()));
        }
      }
    }
  }
  
  public final void a(Map<String, ai> paramMap1, Map<String, ai> paramMap2)
  {
    Iterator localIterator = this.b.iterator();
    g localg;
    ai localai;
    ag localag;
    while (localIterator.hasNext())
    {
      localg = (g)localIterator.next();
      localai = (ai)paramMap1.get(localg.a);
      localag = localg.b;
      ((y)localai.b.get(localag)).a(((ai)paramMap2.get(localg.a)).b(localg.b).b().longValue());
    }
    localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      localg = (g)localIterator.next();
      localai = (ai)paramMap1.get(localg.a);
      localag = localg.b;
      ((x)localai.b.get(localag)).a(((ai)paramMap2.get(localg.a)).b(localg.b).b().longValue());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\j\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */