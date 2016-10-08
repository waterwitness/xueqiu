package com.sleepycat.b.p;

import com.sleepycat.b.aa;
import java.util.IdentityHashMap;
import java.util.Map.Entry;
import java.util.Set;

public final class n<K, V>
  extends IdentityHashMap<K, V>
{
  public final Set<Map.Entry<K, V>> entrySet()
  {
    throw aa.c("IdentityHashMap.entrySet() should not be used. See [#18167].");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */