package com.sleepycat.b.a;

import com.sleepycat.b.c.ao;
import java.util.SortedMap;
import java.util.TreeMap;

final class i
{
  final SortedMap<Long, r> a = new TreeMap();
  final int b;
  int c;
  
  i(int paramInt)
  {
    this.b = paramInt;
    this.c = ao.q;
  }
  
  final r a(Long paramLong)
  {
    paramLong = (r)this.a.remove(paramLong);
    if (paramLong != null)
    {
      this.c -= paramLong.a();
      this.c -= ao.r;
    }
    return paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */