package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum aa
{
  private static final Map<String, aa> m;
  private final short n;
  private final String o;
  
  static
  {
    m = new HashMap();
    Iterator localIterator = EnumSet.allOf(aa.class).iterator();
    while (localIterator.hasNext())
    {
      aa localaa = (aa)localIterator.next();
      m.put(localaa.o, localaa);
    }
  }
  
  private aa(short paramShort, String paramString)
  {
    this.n = paramShort;
    this.o = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */