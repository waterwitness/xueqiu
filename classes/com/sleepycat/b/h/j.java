package com.sleepycat.b.h;

import com.sleepycat.b.c.h;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class j
{
  Map<h, k> a = new HashMap();
  
  final Set<h> a()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = this.a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((k)localEntry.getValue()).c) {
        localHashSet.add(localEntry.getKey());
      }
    }
    return localHashSet;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */