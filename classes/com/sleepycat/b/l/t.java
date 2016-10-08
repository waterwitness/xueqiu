package com.sleepycat.b.l;

import com.sleepycat.b.d.b;
import java.util.concurrent.atomic.AtomicLong;

public final class t
  extends r
{
  public final void a(boolean paramBoolean, b paramb)
  {
    if (paramBoolean)
    {
      paramb.n.incrementAndGet();
      return;
    }
    paramb.n.decrementAndGet();
  }
  
  public final long b()
  {
    return 0L;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */