package com.sleepycat.b.a;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.h;
import com.sleepycat.b.c.i;
import com.sleepycat.b.c.p;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.am;
import com.sleepycat.b.p.j;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;

public final class y
  extends a
{
  public final Map<Long, Long> h = new HashMap();
  private final Map<h, Long> i = new HashMap();
  
  public y(ad paramad)
  {
    super(paramad, new HashMap());
  }
  
  public final int a(int paramInt, long paramLong)
  {
    int j = paramInt;
    if (paramInt == 0)
    {
      j = paramInt;
      if (!this.b.D.O) {}
    }
    try
    {
      j = ((com.sleepycat.b.l.y)this.b.w.d(paramLong)).g;
      j &= 0x7FFFFFFF;
      return j;
    }
    catch (FileNotFoundException localFileNotFoundException) {}
    return paramInt;
  }
  
  final i a(Object paramObject)
  {
    paramObject = (h)paramObject;
    return this.b.q.b((h)paramObject);
  }
  
  public final void a(long paramLong, af paramaf, int paramInt, h paramh)
  {
    a(paramLong, paramh, paramaf, paramInt);
  }
  
  public final void a(h paramh)
  {
    paramh = (g)this.a.remove(paramh);
    if (paramh != null) {
      paramh.a();
    }
  }
  
  public final void a(h paramh, long paramLong)
  {
    this.i.put(paramh, Long.valueOf(paramLong));
  }
  
  final void a(i parami)
  {
    this.b.q.c(parami);
  }
  
  public final boolean a(long paramLong1, long paramLong2, af paramaf, int paramInt, h paramh, boolean paramBoolean)
  {
    boolean bool2 = a(Long.valueOf(j.d(paramLong1)), paramLong2);
    long l = j.a((Long)this.i.get(paramh));
    int j;
    if (l != -1L)
    {
      j = j.b(l, paramLong2);
      if (j >= 0) {
        break label85;
      }
    }
    label85:
    for (boolean bool1 = true;; bool1 = false)
    {
      a(paramLong1, paramh, paramaf, paramInt, bool2, bool1, paramBoolean, false);
      return bool2;
      j = -1;
      break;
    }
  }
  
  final boolean a(Long paramLong, long paramLong1)
  {
    long l = j.a((Long)this.h.get(paramLong));
    if (l != -1L) {}
    for (int j = j.b(l, paramLong1); j < 0; j = -1) {
      return true;
    }
    return false;
  }
  
  public final void b(long paramLong, af paramaf, int paramInt, h paramh)
  {
    a(paramLong, paramh, paramaf, paramInt, true, true, false, false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */