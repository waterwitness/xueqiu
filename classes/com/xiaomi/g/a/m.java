package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum m
{
  private static final Map<String, m> l;
  private final short m;
  private final String n;
  
  static
  {
    l = new HashMap();
    Iterator localIterator = EnumSet.allOf(m.class).iterator();
    while (localIterator.hasNext())
    {
      m localm = (m)localIterator.next();
      l.put(localm.n, localm);
    }
  }
  
  private m(short paramShort, String paramString)
  {
    this.m = paramShort;
    this.n = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */