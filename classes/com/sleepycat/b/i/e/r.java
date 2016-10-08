package com.sleepycat.b.i.e;

import com.sleepycat.b.p.aq;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;

public final class r
{
  public final aq a;
  public final long b;
  public final au c;
  public final long d;
  
  r(aq paramaq, long paramLong1, au paramau, long paramLong2)
  {
    this.a = paramaq;
    this.b = paramLong1;
    this.c = paramau;
    this.d = paramLong2;
  }
  
  public final String toString()
  {
    return "id=" + this.b + " time=" + this.a + " vlsn=" + this.c + " lsn=" + j.h(this.d);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */