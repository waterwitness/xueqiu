package com.xiaomi.b.a.a.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum p
{
  private static final Map<String, p> d;
  private final short e;
  private final String f;
  
  static
  {
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(p.class).iterator();
    while (localIterator.hasNext())
    {
      p localp = (p)localIterator.next();
      d.put(localp.f, localp);
    }
  }
  
  private p(short paramShort, String paramString)
  {
    this.e = paramShort;
    this.f = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */