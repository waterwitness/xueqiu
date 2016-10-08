package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ak
{
  private static final Map<String, ak> h;
  private final short i;
  private final String j;
  
  static
  {
    h = new HashMap();
    Iterator localIterator = EnumSet.allOf(ak.class).iterator();
    while (localIterator.hasNext())
    {
      ak localak = (ak)localIterator.next();
      h.put(localak.j, localak);
    }
  }
  
  private ak(short paramShort, String paramString)
  {
    this.i = paramShort;
    this.j = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */