package com.sleepycat.b.n;

import com.sleepycat.b.c.i;
import com.sleepycat.b.p.j;

public final class am
{
  static final am g = new am();
  public long a = -1L;
  public boolean b = false;
  public int c;
  public i d;
  public boolean e = true;
  public boolean f = false;
  
  public final void a(i parami, int paramInt)
  {
    this.d = parami;
    this.c = paramInt;
  }
  
  public final void a(am paramam)
  {
    this.d = paramam.d;
    this.c = paramam.c;
  }
  
  public final String toString()
  {
    return "abortLsn=" + j.h(this.a) + " abortKnownDeleted=" + this.b + " neverLocked=" + this.e + " createdThisTxn=" + this.f + " abortLogSize=" + this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */