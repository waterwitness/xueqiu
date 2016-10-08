package com.xiaomi.b.a.a.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum n
{
  private static final Map<String, n> c;
  private final short d;
  private final String e;
  
  static
  {
    c = new HashMap();
    Iterator localIterator = EnumSet.allOf(n.class).iterator();
    while (localIterator.hasNext())
    {
      n localn = (n)localIterator.next();
      c.put(localn.e, localn);
    }
  }
  
  private n(short paramShort, String paramString)
  {
    this.d = paramShort;
    this.e = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */