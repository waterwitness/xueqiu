package com.flurry.sdk;

import java.util.AbstractMap.SimpleImmutableEntry;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class jx<K, V>
{
  private final Map<K, List<V>> a;
  private int b;
  
  public jx()
  {
    this.a = new HashMap();
  }
  
  public jx(Map<K, List<V>> paramMap)
  {
    this.a = paramMap;
  }
  
  private List<V> a(K paramK, boolean paramBoolean)
  {
    List localList = (List)this.a.get(paramK);
    Object localObject = localList;
    if (paramBoolean)
    {
      localObject = localList;
      if (localList == null) {
        if (this.b <= 0) {
          break label63;
        }
      }
    }
    label63:
    for (localObject = new ArrayList(this.b);; localObject = new ArrayList())
    {
      this.a.put(paramK, localObject);
      return (List<V>)localObject;
    }
  }
  
  public List<V> a(K paramK)
  {
    if (paramK == null) {
      paramK = Collections.emptyList();
    }
    List localList;
    do
    {
      return paramK;
      localList = a(paramK, false);
      paramK = localList;
    } while (localList != null);
    return Collections.emptyList();
  }
  
  public void a()
  {
    this.a.clear();
  }
  
  public void a(jx<K, V> paramjx)
  {
    if (paramjx == null) {}
    for (;;)
    {
      return;
      paramjx = paramjx.a.entrySet().iterator();
      while (paramjx.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramjx.next();
        a(localEntry.getKey(), true).addAll((Collection)localEntry.getValue());
      }
    }
  }
  
  public void a(K paramK, V paramV)
  {
    if (paramK == null) {
      return;
    }
    a(paramK, true).add(paramV);
  }
  
  public Collection<Map.Entry<K, V>> b()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = this.a.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      Iterator localIterator2 = ((List)localEntry.getValue()).iterator();
      while (localIterator2.hasNext())
      {
        Object localObject = localIterator2.next();
        localArrayList.add(new AbstractMap.SimpleImmutableEntry(localEntry.getKey(), localObject));
      }
    }
    return localArrayList;
  }
  
  public boolean b(K paramK)
  {
    if (paramK == null) {
      return false;
    }
    return (List)this.a.remove(paramK) != null;
  }
  
  public boolean b(K paramK, V paramV)
  {
    boolean bool1 = false;
    if (paramK == null) {}
    List localList;
    boolean bool2;
    do
    {
      do
      {
        return bool1;
        localList = a(paramK, false);
      } while (localList == null);
      bool2 = localList.remove(paramV);
      bool1 = bool2;
    } while (localList.size() != 0);
    this.a.remove(paramK);
    return bool2;
  }
  
  public Set<K> c()
  {
    return this.a.keySet();
  }
  
  public boolean c(K paramK)
  {
    if (paramK == null) {
      return false;
    }
    return this.a.containsKey(paramK);
  }
  
  public boolean c(K paramK, V paramV)
  {
    if (paramK == null) {}
    do
    {
      return false;
      paramK = a(paramK, false);
    } while (paramK == null);
    return paramK.contains(paramV);
  }
  
  public Collection<V> d()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.a.entrySet().iterator();
    while (localIterator.hasNext()) {
      localArrayList.addAll((Collection)((Map.Entry)localIterator.next()).getValue());
    }
    return localArrayList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\jx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */