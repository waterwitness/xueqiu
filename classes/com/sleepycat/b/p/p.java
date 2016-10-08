package com.sleepycat.b.p;

public final class p
  extends Number
{
  long a;
  long b;
  private long c = 1L;
  
  public p(long paramLong1, long paramLong2)
  {
    this.a = paramLong1;
    this.b = paramLong2;
    this.c = 1000000000L;
  }
  
  public p(long paramLong1, long paramLong2, byte paramByte)
  {
    this.a = paramLong1;
    this.b = paramLong2;
  }
  
  public p(p paramp)
  {
    this.a = paramp.a;
    this.b = paramp.b;
    this.c = paramp.c;
  }
  
  public final long a()
  {
    long l = 0L;
    if (this.b != 0L) {
      l = this.a * this.c / this.b;
    }
    return l;
  }
  
  public final double doubleValue()
  {
    return a();
  }
  
  public final float floatValue()
  {
    return (float)a();
  }
  
  public final int intValue()
  {
    return (int)a();
  }
  
  public final long longValue()
  {
    return a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */