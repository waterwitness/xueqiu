package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum o
{
  private static final Map<String, o> i;
  private final short j;
  private final String k;
  
  static
  {
    i = new HashMap();
    Iterator localIterator = EnumSet.allOf(o.class).iterator();
    while (localIterator.hasNext())
    {
      o localo = (o)localIterator.next();
      i.put(localo.k, localo);
    }
  }
  
  private o(short paramShort, String paramString)
  {
    this.j = paramShort;
    this.k = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */