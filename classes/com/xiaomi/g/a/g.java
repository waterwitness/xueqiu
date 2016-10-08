package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum g
{
  private static final Map<String, g> f;
  private final short g;
  private final String h;
  
  static
  {
    f = new HashMap();
    Iterator localIterator = EnumSet.allOf(g.class).iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      f.put(localg.h, localg);
    }
  }
  
  private g(short paramShort, String paramString)
  {
    this.g = paramShort;
    this.h = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */