package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum u
{
  private static final Map<String, u> k;
  private final short l;
  private final String m;
  
  static
  {
    k = new HashMap();
    Iterator localIterator = EnumSet.allOf(u.class).iterator();
    while (localIterator.hasNext())
    {
      u localu = (u)localIterator.next();
      k.put(localu.m, localu);
    }
  }
  
  private u(short paramShort, String paramString)
  {
    this.l = paramShort;
    this.m = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */