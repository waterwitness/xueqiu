package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum e
{
  private static final Map<String, e> m;
  private final short n;
  private final String o;
  
  static
  {
    m = new HashMap();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      m.put(locale.o, locale);
    }
  }
  
  private e(short paramShort, String paramString)
  {
    this.n = paramShort;
    this.o = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */