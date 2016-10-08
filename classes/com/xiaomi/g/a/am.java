package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum am
{
  private static final Map<String, am> k;
  private final short l;
  private final String m;
  
  static
  {
    k = new HashMap();
    Iterator localIterator = EnumSet.allOf(am.class).iterator();
    while (localIterator.hasNext())
    {
      am localam = (am)localIterator.next();
      k.put(localam.m, localam);
    }
  }
  
  private am(short paramShort, String paramString)
  {
    this.l = paramShort;
    this.m = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */