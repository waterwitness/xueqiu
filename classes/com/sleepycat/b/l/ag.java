package com.sleepycat.b.l;

import com.sleepycat.b.p.j;

public final class ag
{
  public final long a;
  public final long b;
  public final int c;
  public int d;
  
  ag(long paramLong1, long paramLong2, int paramInt)
  {
    this.a = paramLong1;
    this.b = paramLong2;
    this.c = paramInt;
  }
  
  public final String toString()
  {
    return "lsn=" + j.h(this.a) + " node=" + this.b + " entries=" + this.c + " index=" + this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */