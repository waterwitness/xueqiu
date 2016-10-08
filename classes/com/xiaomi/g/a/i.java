package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum i
{
  private static final Map<String, i> k;
  private final short l;
  private final String m;
  
  static
  {
    k = new HashMap();
    Iterator localIterator = EnumSet.allOf(i.class).iterator();
    while (localIterator.hasNext())
    {
      i locali = (i)localIterator.next();
      k.put(locali.m, locali);
    }
  }
  
  private i(short paramShort, String paramString)
  {
    this.l = paramShort;
    this.m = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */