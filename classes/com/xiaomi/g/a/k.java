package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum k
{
  private static final Map<String, k> i;
  private final short j;
  private final String k;
  
  static
  {
    i = new HashMap();
    Iterator localIterator = EnumSet.allOf(k.class).iterator();
    while (localIterator.hasNext())
    {
      k localk = (k)localIterator.next();
      i.put(localk.k, localk);
    }
  }
  
  private k(short paramShort, String paramString)
  {
    this.j = paramShort;
    this.k = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */