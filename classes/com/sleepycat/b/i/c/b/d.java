package com.sleepycat.b.i.c.b;

import com.sleepycat.b.c.h;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class d
  extends LinkedHashMap<h, e>
{
  private d(c paramc) {}
  
  protected final boolean removeEldestEntry(Map.Entry<h, e> paramEntry)
  {
    if (size() <= c.b(this.a)) {
      return false;
    }
    c.a(this.a, ((e)paramEntry.getValue()).b);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */