package com.xiaomi.b.a.a.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum j
{
  private static final Map<String, j> e;
  private final short f;
  private final String g;
  
  static
  {
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(j.class).iterator();
    while (localIterator.hasNext())
    {
      j localj = (j)localIterator.next();
      e.put(localj.g, localj);
    }
  }
  
  private j(short paramShort, String paramString)
  {
    this.f = paramShort;
    this.g = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */