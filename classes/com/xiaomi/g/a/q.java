package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum q
{
  private static final Map<String, q> k;
  private final short l;
  private final String m;
  
  static
  {
    k = new HashMap();
    Iterator localIterator = EnumSet.allOf(q.class).iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      k.put(localq.m, localq);
    }
  }
  
  private q(short paramShort, String paramString)
  {
    this.l = paramShort;
    this.m = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */