package com.f.a.b.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

public final class g
  implements c
{
  private final Map<String, Object> b = new HashMap();
  private boolean c = false;
  
  public g(f paramf) {}
  
  public final c a()
  {
    try
    {
      this.c = true;
      return this;
    }
    finally {}
  }
  
  public final c a(String paramString, float paramFloat)
  {
    try
    {
      this.b.put(paramString, Float.valueOf(paramFloat));
      return this;
    }
    finally {}
  }
  
  public final c a(String paramString, int paramInt)
  {
    try
    {
      this.b.put(paramString, Integer.valueOf(paramInt));
      return this;
    }
    finally {}
  }
  
  public final c a(String paramString, long paramLong)
  {
    try
    {
      this.b.put(paramString, Long.valueOf(paramLong));
      return this;
    }
    finally {}
  }
  
  public final c a(String paramString1, String paramString2)
  {
    try
    {
      this.b.put(paramString1, paramString2);
      return this;
    }
    finally {}
  }
  
  public final c a(String paramString, boolean paramBoolean)
  {
    try
    {
      this.b.put(paramString, Boolean.valueOf(paramBoolean));
      return this;
    }
    finally {}
  }
  
  public final boolean b()
  {
    for (;;)
    {
      Object localObject7;
      String str;
      synchronized ()
      {
        if (f.a(this.a).size() > 0)
        {
          i = 1;
          if (i == 0) {
            break label330;
          }
          localArrayList = new ArrayList();
          HashSet localHashSet = new HashSet(f.a(this.a).keySet());
          try
          {
            if (this.c)
            {
              f.b(this.a).clear();
              this.c = false;
            }
            ??? = this.b.entrySet().iterator();
            if (!((Iterator)???).hasNext()) {
              break label212;
            }
            localObject7 = (Map.Entry)((Iterator)???).next();
            str = (String)((Map.Entry)localObject7).getKey();
            localObject7 = ((Map.Entry)localObject7).getValue();
            if (localObject7 != this) {
              break label192;
            }
            f.b(this.a).remove(str);
            if (i == 0) {
              continue;
            }
            localArrayList.add(str);
            continue;
            localObject2 = finally;
          }
          finally {}
        }
      }
      int i = 0;
      continue;
      label192:
      f.b(this.a).put(str, localObject7);
      continue;
      label212:
      this.b.clear();
      boolean bool = f.c(this.a);
      if (bool) {}
      for (;;)
      {
        synchronized (this.a)
        {
          ((f)???).b = true;
          if (i == 0) {
            break;
          }
          i = localArrayList.size() - 1;
          if (i < 0) {
            break;
          }
          localArrayList.get(i);
          ??? = ((Set)localObject2).iterator();
          if (((Iterator)???).hasNext()) {
            ((Iterator)???).next();
          }
        }
        i -= 1;
      }
      return bool;
      label330:
      Object localObject4 = null;
      ArrayList localArrayList = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\f\a\b\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */