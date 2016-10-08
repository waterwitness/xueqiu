package com.sleepycat.b.p;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public class ai
  implements Serializable
{
  public final String a;
  public final Map<ag, af<?>> b;
  private final String d;
  
  static
  {
    if (!ai.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  public ai(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, new HashMap());
  }
  
  private ai(String paramString1, String paramString2, Map<ag, af<?>> paramMap)
  {
    this.a = paramString1;
    this.d = paramString2;
    this.b = paramMap;
  }
  
  public final int a(ag paramag)
  {
    paramag = (o)this.b.get(paramag);
    if (paramag == null) {
      return 0;
    }
    return Integer.valueOf(paramag.a).intValue();
  }
  
  public final ai a(boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.b.values().iterator();
    while (localIterator.hasNext())
    {
      af localaf1 = (af)localIterator.next();
      if (paramBoolean)
      {
        ag localag = localaf1.h();
        af localaf2 = localaf1.e();
        localaf1.a();
        localHashMap.put(localag, localaf2);
      }
      else
      {
        localHashMap.put(localaf1.h(), localaf1.e());
      }
    }
    return new ai(this.a, this.d, localHashMap);
  }
  
  public final void a()
  {
    Iterator localIterator = this.b.values().iterator();
    while (localIterator.hasNext()) {
      ((af)localIterator.next()).a();
    }
  }
  
  public final void a(ai paramai)
  {
    paramai = paramai.b.entrySet().iterator();
    while (paramai.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramai.next();
      ag localag = (ag)localEntry.getKey();
      af localaf = (af)this.b.get(localag);
      if (localaf == null) {
        this.b.put(localag, localEntry.getValue());
      } else {
        localaf.a((af)localEntry.getValue());
      }
    }
  }
  
  public final ai b(ai paramai)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      ag localag = (ag)((Map.Entry)localObject).getKey();
      localObject = (af)((Map.Entry)localObject).getValue();
      af localaf = (af)paramai.b.get(localag);
      if (localaf == null) {
        localHashMap.put(localag, ((af)localObject).e());
      } else {
        localHashMap.put(localag, ((af)localObject).b(localaf));
      }
    }
    return new ai(this.a, this.d, localHashMap);
  }
  
  public final z b(ag paramag)
  {
    return (z)this.b.get(paramag);
  }
  
  public final void b()
  {
    Iterator localIterator = this.b.values().iterator();
    while (localIterator.hasNext()) {
      ((af)localIterator.next()).t_();
    }
  }
  
  public final long c(ag paramag)
  {
    paramag = (af)this.b.get(paramag);
    if (paramag == null) {
      return 0L;
    }
    if ((paramag instanceof z)) {
      return ((z)paramag).b().longValue();
    }
    if ((paramag instanceof d)) {
      return ((d)paramag).f().longValue();
    }
    if ((paramag instanceof q)) {
      return ((q)paramag).a.a();
    }
    if (!c) {
      throw new AssertionError("Internal error calling getLong() with unknown stat type.");
    }
    return 0L;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a).append(": ");
    localStringBuilder.append(this.d).append("\n");
    Iterator localIterator = new TreeMap(this.b).values().iterator();
    while (localIterator.hasNext())
    {
      af localaf = (af)localIterator.next();
      localStringBuilder.append("\t").append(localaf).append("\n");
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */