package com.sleepycat.b.a;

import com.sleepycat.b.c.ao;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class w
  implements at
{
  private short[] b;
  private int c;
  
  static
  {
    if (!w.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public w()
  {
    if ((!a) && (e() != 0)) {
      throw new AssertionError();
    }
  }
  
  public final int a()
  {
    if (this.b != null) {}
    for (int i = this.b.length;; i = 0) {
      return i * 2 + (ar.a(this.c) + ar.a(i));
    }
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    if (this.c > 0)
    {
      x localx = c();
      paramStringBuilder.append("<offsets size=\"");
      paramStringBuilder.append(this.c);
      paramStringBuilder.append("\">");
      while (localx.a())
      {
        paramStringBuilder.append("0x");
        paramStringBuilder.append(Long.toHexString(localx.b()));
        paramStringBuilder.append(' ');
      }
      paramStringBuilder.append("</offsets>");
      return;
    }
    paramStringBuilder.append("<offsets size=\"0\"/>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    int i = 0;
    ar.b(paramByteBuffer, this.c);
    if (this.b != null)
    {
      ar.b(paramByteBuffer, this.b.length);
      while (i < this.b.length)
      {
        ar.a(paramByteBuffer, this.b[i]);
        i += 1;
      }
    }
    ar.b(paramByteBuffer, 0);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    int i = 0;
    if (paramInt < 6) {}
    for (boolean bool = true;; bool = false)
    {
      this.c = ar.a(paramByteBuffer, bool);
      int j = ar.a(paramByteBuffer, bool);
      if (j <= 0) {
        break;
      }
      this.b = new short[j];
      paramInt = i;
      while (paramInt < j)
      {
        this.b[paramInt] = ar.b(paramByteBuffer);
        paramInt += 1;
      }
    }
  }
  
  public final void a(long[] paramArrayOfLong)
  {
    short[] arrayOfShort = new short[paramArrayOfLong.length * 3];
    Arrays.sort(paramArrayOfLong);
    int k = 0;
    long l1 = 0L;
    int j = 0;
    while (k < paramArrayOfLong.length)
    {
      long l2 = paramArrayOfLong[k];
      long l3 = l2 - l1;
      l1 = l3;
      int m = j;
      if (!a)
      {
        l1 = l3;
        m = j;
        if (l3 < 0L) {
          throw new AssertionError();
        }
      }
      int i;
      for (;;)
      {
        i = (short)(int)(0x7FFF & l1);
        l1 >>>= 15;
        if (l1 <= 0L) {
          break;
        }
        arrayOfShort[m] = ((short)(-1 - i));
        m += 1;
      }
      arrayOfShort[m] = i;
      k += 1;
      j = m + 1;
      l1 = l2;
    }
    this.b = new short[j];
    System.arraycopy(arrayOfShort, 0, this.b, 0, j);
    this.c = paramArrayOfLong.length;
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  public final long b()
  {
    return -1L;
  }
  
  final x c()
  {
    return new x(this, (byte)0);
  }
  
  final long[] d()
  {
    long[] arrayOfLong = new long[this.c];
    int i = 0;
    x localx = c();
    while (localx.a())
    {
      arrayOfLong[i] = localx.b();
      i += 1;
    }
    if ((!a) && (i != this.c)) {
      throw new AssertionError();
    }
    return arrayOfLong;
  }
  
  public final int e()
  {
    if (this.b != null) {
      return ao.b(this.b.length);
    }
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    a(localStringBuilder, true);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */