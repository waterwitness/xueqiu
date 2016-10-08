package com.xiaomi.push.d;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum c
{
  private static final Map<String, c> k;
  private final short l;
  private final String m;
  
  static
  {
    k = new HashMap();
    Iterator localIterator = EnumSet.allOf(c.class).iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      k.put(localc.m, localc);
    }
  }
  
  private c(short paramShort, String paramString)
  {
    this.l = paramShort;
    this.m = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */