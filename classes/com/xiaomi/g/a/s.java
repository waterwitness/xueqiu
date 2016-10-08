package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum s
{
  private static final Map<String, s> k;
  private final short l;
  private final String m;
  
  static
  {
    k = new HashMap();
    Iterator localIterator = EnumSet.allOf(s.class).iterator();
    while (localIterator.hasNext())
    {
      s locals = (s)localIterator.next();
      k.put(locals.m, locals);
    }
  }
  
  private s(short paramShort, String paramString)
  {
    this.l = paramShort;
    this.m = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */