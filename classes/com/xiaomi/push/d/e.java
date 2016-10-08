package com.xiaomi.push.d;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum e
{
  private static final Map<String, e> d;
  private final short e;
  private final String f;
  
  static
  {
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      d.put(locale.f, locale);
    }
  }
  
  private e(short paramShort, String paramString)
  {
    this.e = paramShort;
    this.f = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\d\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */