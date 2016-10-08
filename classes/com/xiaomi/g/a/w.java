package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum w
{
  private static final Map<String, w> g;
  private final short h;
  private final String i;
  
  static
  {
    g = new HashMap();
    Iterator localIterator = EnumSet.allOf(w.class).iterator();
    while (localIterator.hasNext())
    {
      w localw = (w)localIterator.next();
      g.put(localw.i, localw);
    }
  }
  
  private w(short paramShort, String paramString)
  {
    this.h = paramShort;
    this.i = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */