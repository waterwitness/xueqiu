package com.xiaomi.b.a.a.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum b
{
  private static final Map<String, b> c;
  private final short d;
  private final String e;
  
  static
  {
    c = new HashMap();
    Iterator localIterator = EnumSet.allOf(b.class).iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      c.put(localb.e, localb);
    }
  }
  
  private b(short paramShort, String paramString)
  {
    this.d = paramShort;
    this.e = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */