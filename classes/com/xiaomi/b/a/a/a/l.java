package com.xiaomi.b.a.a.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum l
{
  private static final Map<String, l> h;
  private final short i;
  private final String j;
  
  static
  {
    h = new HashMap();
    Iterator localIterator = EnumSet.allOf(l.class).iterator();
    while (localIterator.hasNext())
    {
      l locall = (l)localIterator.next();
      h.put(locall.j, locall);
    }
  }
  
  private l(short paramShort, String paramString)
  {
    this.i = paramShort;
    this.j = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */