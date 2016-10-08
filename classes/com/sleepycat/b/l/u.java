package com.sleepycat.b.l;

import com.sleepycat.b.c.ao;
import com.sleepycat.b.d.b;
import java.util.concurrent.atomic.AtomicLong;

public final class u
  extends r
{
  final short[] b = new short[4];
  final ac[] c = new ac[4];
  
  static
  {
    if (!r.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  public u()
  {
    short[] arrayOfShort1 = this.b;
    short[] arrayOfShort2 = this.b;
    short[] arrayOfShort3 = this.b;
    this.b[3] = -1;
    arrayOfShort3[2] = -1;
    arrayOfShort2[1] = -1;
    arrayOfShort1[0] = -1;
  }
  
  private ac b(int paramInt)
  {
    if ((!d) && ((paramInt < 0) || (paramInt > 32767))) {
      throw new AssertionError();
    }
    if (this.b[0] == paramInt) {
      return this.c[0];
    }
    if (this.b[1] == paramInt) {
      return this.c[1];
    }
    if (this.b[2] == paramInt) {
      return this.c[2];
    }
    if (this.b[3] == paramInt) {
      return this.c[3];
    }
    return null;
  }
  
  public final void a(boolean paramBoolean, b paramb)
  {
    if (paramBoolean)
    {
      paramb.m.incrementAndGet();
      return;
    }
    paramb.m.decrementAndGet();
  }
  
  public final long b()
  {
    return ao.z;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */