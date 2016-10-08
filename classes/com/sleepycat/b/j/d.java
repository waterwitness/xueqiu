package com.sleepycat.b.j;

import com.sleepycat.b.aa;
import com.sleepycat.b.ae;
import com.sleepycat.b.bn;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.p.ai;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class d
{
  public final Map<Integer, e> a = new HashMap();
  public final ad b;
  private f c = null;
  
  public d(ad paramad)
  {
    this.b = paramad;
  }
  
  private static ae a(Map<String, ai> paramMap1, Map<String, ai> paramMap2)
  {
    ae localae = new ae();
    paramMap1 = paramMap1.values().iterator();
    while (paramMap1.hasNext())
    {
      ai localai = (ai)paramMap1.next();
      localae.a(localai.b((ai)paramMap2.get(localai.a)));
    }
    return localae;
  }
  
  public static Map<String, ai> a(Map<String, ai> paramMap)
  {
    HashMap localHashMap = new HashMap();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      ai localai = ((ai)localEntry.getValue()).a(false);
      localai.b();
      localHashMap.put(localEntry.getKey(), localai);
    }
    return localHashMap;
  }
  
  public final Integer a()
  {
    for (;;)
    {
      try
      {
        e locale = new e(this);
        int i = 0;
        Object localObject2 = this.a.keySet().iterator();
        if (((Iterator)localObject2).hasNext())
        {
          Integer localInteger = (Integer)((Iterator)localObject2).next();
          if (localInteger.intValue() > i) {
            i = localInteger.intValue();
          }
        }
        else
        {
          localObject2 = new Integer(i + 1);
          this.a.put(localObject2, locale);
          return (Integer)localObject2;
        }
      }
      finally {}
    }
  }
  
  public final void a(Integer paramInteger)
  {
    try
    {
      this.a.remove(paramInteger);
      return;
    }
    finally
    {
      paramInteger = finally;
      throw paramInteger;
    }
  }
  
  public final ae b(bn parambn, Integer paramInteger)
  {
    e locale;
    try
    {
      locale = (e)this.a.get(paramInteger);
      if (locale == null) {
        throw aa.c("Internal error stat context is not registered");
      }
    }
    finally {}
    paramInteger = this.b.a(parambn);
    Map localMap = paramInteger.a();
    if (this.c == null) {
      this.c = new f(this, localMap);
    }
    Object localObject = locale.a;
    if (localObject != null) {
      paramInteger = a(localMap, (Map)localObject);
    }
    for (;;)
    {
      if (parambn.c)
      {
        parambn = this.a.values().iterator();
        while (parambn.hasNext())
        {
          localObject = (e)parambn.next();
          if (((e)localObject).a != null) {
            this.c.a(((e)localObject).a, localMap);
          }
        }
        parambn = this.a.values().iterator();
        while (parambn.hasNext())
        {
          localObject = (e)parambn.next();
          if (localObject == locale) {
            ((e)localObject).a = null;
          } else if (((e)localObject).a == null) {
            ((e)localObject).a = a(localMap);
          } else {
            ((e)localObject).a = a(((e)localObject).a, localMap).a();
          }
        }
      }
      return paramInteger;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\j\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */