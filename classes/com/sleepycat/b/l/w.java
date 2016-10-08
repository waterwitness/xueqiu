package com.sleepycat.b.l;

import com.sleepycat.b.m;
import com.sleepycat.d.b;
import java.util.Comparator;

public final class w
  implements Comparable<w>
{
  public static x a;
  public static final byte[] b;
  private byte[] d;
  
  static
  {
    if (!w.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      a = x.a;
      b = new byte[0];
      return;
    }
  }
  
  private int a(w paramw)
  {
    return b(this.d, paramw.d);
  }
  
  public static int a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3, int paramInt4)
  {
    int j = Math.min(paramInt2, paramInt4);
    int i = 0;
    while (i < j)
    {
      int k = paramArrayOfByte1[(i + paramInt1)];
      int m = paramArrayOfByte2[(i + paramInt3)];
      if (k != m) {
        return (k & 0xFF) - (m & 0xFF);
      }
      i += 1;
    }
    return paramInt2 - paramInt4;
  }
  
  public static int a(byte[] paramArrayOfByte1, int paramInt, byte[] paramArrayOfByte2)
  {
    if ((!c) && ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null))) {
      throw new AssertionError();
    }
    int i = Math.min(paramInt, paramArrayOfByte2.length);
    paramInt = 0;
    while (paramInt < i)
    {
      if (paramArrayOfByte1[paramInt] != paramArrayOfByte2[paramInt]) {
        return paramInt;
      }
      paramInt += 1;
    }
    return i;
  }
  
  public static int a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, Comparator<byte[]> paramComparator)
  {
    if (paramComparator != null) {
      return paramComparator.compare(paramArrayOfByte1, paramArrayOfByte2);
    }
    return b(paramArrayOfByte1, paramArrayOfByte2);
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    return "key=" + a(paramArrayOfByte, 0);
  }
  
  public static String a(byte[] paramArrayOfByte, int paramInt)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("                                                                                                                                ".substring(0, paramInt));
    localStringBuilder1.append("<key v=\"");
    if ((a == x.a) || (a == x.b)) {
      if (paramArrayOfByte == null) {
        localStringBuilder1.append("<null>");
      }
    }
    do
    {
      for (;;)
      {
        localStringBuilder1.append("\"/>");
        return localStringBuilder1.toString();
        localStringBuilder1.append(a.a(paramArrayOfByte));
      }
      if (a == x.c)
      {
        if (paramArrayOfByte == null) {}
        for (paramArrayOfByte = "";; paramArrayOfByte = b.a(paramArrayOfByte))
        {
          localStringBuilder1.append(paramArrayOfByte);
          break;
        }
      }
    } while (a != x.d);
    paramInt = paramArrayOfByte.length;
    StringBuilder localStringBuilder2 = localStringBuilder1.append("[").append(paramInt);
    if (paramInt == 1) {}
    for (paramArrayOfByte = " byte]";; paramArrayOfByte = " bytes]")
    {
      localStringBuilder2.append(paramArrayOfByte);
      break;
    }
  }
  
  public static byte[] a(m paramm)
  {
    byte[] arrayOfByte1 = paramm.a;
    if (arrayOfByte1 == null) {
      return b;
    }
    byte[] arrayOfByte2 = new byte[paramm.e];
    System.arraycopy(arrayOfByte1, paramm.d, arrayOfByte2, 0, paramm.e);
    return arrayOfByte2;
  }
  
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = a(paramArrayOfByte1, paramArrayOfByte1.length, paramArrayOfByte2);
    if (i == 0) {
      return null;
    }
    paramArrayOfByte2 = new byte[i];
    System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, 0, i);
    return paramArrayOfByte2;
  }
  
  private static int b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return a(paramArrayOfByte1, 0, paramArrayOfByte1.length, paramArrayOfByte2, 0, paramArrayOfByte2.length);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof w)) && (a((w)paramObject) == 0);
  }
  
  public final int hashCode()
  {
    int i = 0;
    int j = 0;
    while (i < this.d.length)
    {
      j += this.d[i];
      i += 1;
    }
    return j;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */