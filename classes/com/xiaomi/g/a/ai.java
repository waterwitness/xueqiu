package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ai
{
  private static final Map<String, ai> i;
  private final short j;
  private final String k;
  
  static
  {
    i = new HashMap();
    Iterator localIterator = EnumSet.allOf(ai.class).iterator();
    while (localIterator.hasNext())
    {
      ai localai = (ai)localIterator.next();
      i.put(localai.k, localai);
    }
  }
  
  private ai(short paramShort, String paramString)
  {
    this.j = paramShort;
    this.k = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */