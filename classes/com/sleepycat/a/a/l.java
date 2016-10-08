package com.sleepycat.a.a;

import com.sleepycat.c.c;
import com.sleepycat.c.d;
import com.sleepycat.c.e;
import com.sleepycat.c.f;

public final class l
  extends c
{
  public l(m paramm)
  {
    super(paramm.b, 0, paramm.a);
  }
  
  public l(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    super(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public final String a()
  {
    byte[] arrayOfByte = this.d;
    int i = this.b;
    if ((available() >= 2) && (arrayOfByte[i] == -1) && (arrayOfByte[(i + 1)] == 0))
    {
      skip(2L);
      return null;
    }
    int j = f.a(arrayOfByte, i);
    skip(j + 1);
    return f.a(arrayOfByte, i, j);
  }
  
  public final boolean b()
  {
    int i = k();
    if (i < 0) {
      throw new IndexOutOfBoundsException();
    }
    return i != 0;
  }
  
  public final byte c()
  {
    int i = k();
    if (i < 0) {
      throw new IndexOutOfBoundsException();
    }
    return (byte)(i ^ 0x80);
  }
  
  public final int d()
  {
    return (int)(g() ^ 0xFFFFFFFF80000000);
  }
  
  public final long e()
  {
    return h() ^ 0x8000000000000000;
  }
  
  public final int f()
  {
    int i = k();
    int j = k();
    if ((i | j) < 0) {
      throw new IndexOutOfBoundsException();
    }
    return i << 8 | j;
  }
  
  public final long g()
  {
    long l1 = k();
    long l2 = k();
    long l3 = k();
    long l4 = k();
    if ((l1 | l2 | l3 | l4) < 0L) {
      throw new IndexOutOfBoundsException();
    }
    return l1 << 24 | l2 << 16 | l3 << 8 | l4;
  }
  
  final long h()
  {
    long l1 = k();
    long l2 = k();
    long l3 = k();
    long l4 = k();
    long l5 = k();
    long l6 = k();
    long l7 = k();
    long l8 = k();
    if ((l1 | l2 | l3 | l4 | l5 | l6 | l7 | l8) < 0L) {
      throw new IndexOutOfBoundsException();
    }
    return l1 << 56 | l2 << 48 | l3 << 40 | l4 << 32 | l5 << 24 | l6 << 16 | l7 << 8 | l8;
  }
  
  public final int i()
  {
    int i = e.c(this.d, this.b);
    int j = e.a(this.d, this.b);
    this.b = (i + this.b);
    return j;
  }
  
  public final long j()
  {
    int i = e.c(this.d, this.b);
    long l = e.b(this.d, this.b);
    this.b = (i + this.b);
    return l;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\a\a\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */