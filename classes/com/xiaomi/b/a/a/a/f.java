package com.xiaomi.b.a.a.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum f
{
  private static final Map<String, f> e;
  private final short f;
  private final String g;
  
  static
  {
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(f.class).iterator();
    while (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      e.put(localf.g, localf);
    }
  }
  
  private f(short paramShort, String paramString)
  {
    this.f = paramShort;
    this.g = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */