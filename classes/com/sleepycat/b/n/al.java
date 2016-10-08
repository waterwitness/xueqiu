package com.sleepycat.b.n;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.h;
import com.sleepycat.b.c.i;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.g.am;
import com.sleepycat.b.l.y;
import com.sleepycat.b.p.j;
import java.util.Map;

public final class al
{
  public final k<?> a;
  public final y b;
  public final i c;
  private final long d;
  
  public al(k<?> paramk, y paramy, long paramLong, i parami)
  {
    this.a = paramk;
    this.b = paramy;
    this.d = paramLong;
    this.c = parami;
  }
  
  public static al a(ad paramad, long paramLong, Map<h, i> paramMap)
  {
    k localk = (k)paramad.w.c(paramLong);
    h localh = localk.d;
    paramMap = (i)paramMap.get(localh);
    if (paramMap == null) {
      throw aa.a(paramad, "DB not found during non-recovery undo/rollback, id=" + localh);
    }
    localk.c(paramMap);
    paramad = localk.j();
    paramad.a(paramMap, paramLong);
    return new al(localk, paramad, paramLong, paramMap);
  }
  
  public final String toString()
  {
    return this.b + " lsn=" + j.h(this.d);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */