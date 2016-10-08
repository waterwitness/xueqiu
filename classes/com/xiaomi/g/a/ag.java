package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ag
{
  private static final Map<String, ag> k;
  private final short l;
  private final String m;
  
  static
  {
    k = new HashMap();
    Iterator localIterator = EnumSet.allOf(ag.class).iterator();
    while (localIterator.hasNext())
    {
      ag localag = (ag)localIterator.next();
      k.put(localag.m, localag);
    }
  }
  
  private ag(short paramShort, String paramString)
  {
    this.l = paramShort;
    this.m = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */