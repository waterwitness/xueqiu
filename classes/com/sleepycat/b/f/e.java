package com.sleepycat.b.f;

import java.util.HashSet;
import java.util.Set;

public final class e
{
  ThreadLocal<Set<Object>> a = new ThreadLocal();
  
  final boolean a(Object paramObject)
  {
    Set localSet = (Set)this.a.get();
    Object localObject = localSet;
    if (localSet == null)
    {
      localObject = new HashSet();
      this.a.set(localObject);
    }
    ((Set)localObject).add(paramObject);
    return true;
  }
  
  public final boolean b(Object paramObject)
  {
    Set localSet = (Set)this.a.get();
    if (localSet == null) {
      return false;
    }
    return localSet.remove(paramObject);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\f\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */