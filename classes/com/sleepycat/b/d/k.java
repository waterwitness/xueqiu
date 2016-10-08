package com.sleepycat.b.d;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.h;
import com.sleepycat.b.c.i;
import com.sleepycat.b.c.p;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class k
  extends b
{
  public k(ad paramad)
  {
    super(paramad);
  }
  
  final n a()
  {
    return new l(this.a);
  }
  
  final d d()
  {
    new d()
    {
      final Map<ad, Map<h, i>> a = new HashMap();
      int b = 0;
      
      public final i a(ad paramAnonymousad, h paramAnonymoush)
      {
        Map localMap = (Map)this.a.get(paramAnonymousad);
        Object localObject = localMap;
        if (localMap == null)
        {
          localObject = new HashMap();
          this.a.put(paramAnonymousad, localObject);
        }
        this.b += 1;
        if (this.b % k.this.e == 0) {
          a();
        }
        return paramAnonymousad.q.a(paramAnonymoush, -1L, (Map)localObject);
      }
      
      public final void a()
      {
        Iterator localIterator = this.a.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Object localObject = (Map.Entry)localIterator.next();
          ad localad = (ad)((Map.Entry)localObject).getKey();
          localObject = (Map)((Map.Entry)localObject).getValue();
          localad.q.a((Map)localObject);
          ((Map)localObject).clear();
        }
      }
    };
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\d\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */