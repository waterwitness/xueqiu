package com.xiaomi.b.a.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum b
{
  private static final Map<String, b> f;
  private final short g;
  private final String h;
  
  static
  {
    f = new HashMap();
    Iterator localIterator = EnumSet.allOf(b.class).iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      f.put(localb.h, localb);
    }
  }
  
  private b(short paramShort, String paramString)
  {
    this.g = paramShort;
    this.h = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */