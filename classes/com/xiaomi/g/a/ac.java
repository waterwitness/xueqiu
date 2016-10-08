package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ac
{
  private static final Map<String, ac> h;
  private final short i;
  private final String j;
  
  static
  {
    h = new HashMap();
    Iterator localIterator = EnumSet.allOf(ac.class).iterator();
    while (localIterator.hasNext())
    {
      ac localac = (ac)localIterator.next();
      h.put(localac.j, localac);
    }
  }
  
  private ac(short paramShort, String paramString)
  {
    this.i = paramShort;
    this.j = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */