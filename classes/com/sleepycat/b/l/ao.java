package com.sleepycat.b.l;

import com.sleepycat.b.p.au;

public final class ao
  extends an
{
  private static long[] c;
  private final byte[] d;
  private final int e;
  
  static
  {
    if (!an.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      c = new long[] { 0L, 255L, 65535L, 16777215L, 4294967295L, 1099511627775L, 281474976710655L, 72057594037927935L, Long.MAX_VALUE };
      return;
    }
  }
  
  public ao(int paramInt1, int paramInt2)
  {
    if ((!b) && (paramInt1 <= 0)) {
      throw new AssertionError();
    }
    if ((!b) && (paramInt2 <= 0)) {
      throw new AssertionError();
    }
    if ((!b) && (paramInt2 > 8)) {
      throw new AssertionError();
    }
    this.e = paramInt2;
    this.d = new byte[this.e * paramInt1];
  }
  
  private ao b(int paramInt, long paramLong, j paramj)
  {
    if ((!b) && (paramInt < 0)) {
      throw new AssertionError();
    }
    if ((!b) && (paramInt >= this.d.length / this.e)) {
      throw new AssertionError();
    }
    if ((!b) && (paramLong == 0L)) {
      throw new AssertionError();
    }
    long l = paramLong;
    if (paramLong == au.a.c) {
      l = 0L;
    }
    if (l > c[this.e])
    {
      j = this.d.length / this.e;
      Object localObject1 = new ao(j, this.e + 1);
      paramj.a(a(), ((ao)localObject1).a());
      localObject1 = ((ao)localObject1).b(paramInt, l, paramj);
      i = 0;
      for (;;)
      {
        localObject2 = localObject1;
        if (i >= j) {
          break;
        }
        localObject2 = localObject1;
        if (i != paramInt) {
          localObject2 = ((ao)localObject1).b(i, a(i), paramj);
        }
        i += 1;
        localObject1 = localObject2;
      }
    }
    int i = (paramInt + 1) * this.e - 1;
    int j = this.e;
    this.d[i] = ((byte)(int)(l & 0xFF));
    paramInt = i - 1;
    while (paramInt > i - j)
    {
      l >>= 8;
      this.d[paramInt] = ((byte)(int)(l & 0xFF));
      paramInt -= 1;
    }
    if ((!b) && ((0xFFFFFFFFFFFFFF00 & l) != 0L)) {
      throw new AssertionError(l);
    }
    Object localObject2 = this;
    return (ao)localObject2;
  }
  
  public final long a()
  {
    return com.sleepycat.b.c.ao.D + com.sleepycat.b.c.ao.a(this.d.length);
  }
  
  public final long a(int paramInt)
  {
    int i = paramInt * this.e;
    int j = this.e;
    long l1 = this.d[i] & 0xFF;
    paramInt = i + 1;
    while (paramInt < i + j)
    {
      l1 = l1 << 8 | this.d[paramInt] & 0xFF;
      paramInt += 1;
    }
    long l2 = l1;
    if (l1 == 0L) {
      l2 = au.a.c;
    }
    return l2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */