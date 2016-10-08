package com.sleepycat.c.a;

import com.sleepycat.b.m;

public final class a
{
  public static final byte[] a = new byte[0];
  m b;
  m c;
  boolean d;
  boolean e;
  boolean f;
  
  public static byte[] a(m paramm, int paramInt)
  {
    byte[] arrayOfByte1 = paramm.a;
    if (arrayOfByte1 == null) {
      return null;
    }
    paramInt = Math.min(paramm.e, paramInt);
    if (paramInt == 0) {
      return a;
    }
    byte[] arrayOfByte2 = new byte[paramInt];
    System.arraycopy(arrayOfByte1, paramm.d, arrayOfByte2, 0, paramInt);
    return arrayOfByte2;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("[KeyRange ").append(this.b).append(' ').append(this.e).append(this.c).append(' ').append(this.f);
    if (this.d) {}
    for (String str = " single";; str = "") {
      return str;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\c\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */