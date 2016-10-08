package com.sleepycat.b.c;

import com.sleepycat.b.l.w;
import com.sleepycat.b.m;
import com.sleepycat.c.e;
import java.util.Comparator;

public class y
{
  static
  {
    if (!y.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public static int a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, Comparator<byte[]> paramComparator)
  {
    int j = e.d(paramArrayOfByte1, paramArrayOfByte1.length - 1);
    int i = j;
    if (j == -1) {
      i = paramArrayOfByte1.length - 1;
    }
    if (paramComparator == null) {
      return w.a(paramArrayOfByte1, 0, i, paramArrayOfByte2, paramInt1, paramInt2);
    }
    byte[] arrayOfByte1 = new byte[i];
    byte[] arrayOfByte2 = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte1, 0, i);
    System.arraycopy(paramArrayOfByte2, paramInt1, arrayOfByte2, 0, paramInt2);
    return paramComparator.compare(arrayOfByte1, arrayOfByte2);
  }
  
  public static int a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, Comparator<byte[]> paramComparator)
  {
    int j = e.d(paramArrayOfByte2, paramArrayOfByte2.length - 1);
    int i = j;
    if (j == -1) {
      i = paramArrayOfByte2.length - 1;
    }
    return a(paramArrayOfByte1, paramArrayOfByte2, 0, i, paramComparator);
  }
  
  public static m a(m paramm1, m paramm2)
  {
    return new m(a(paramm1.a, paramm1.d, paramm1.e, paramm2.a, paramm2.d, paramm2.e));
  }
  
  public static m a(byte[] paramArrayOfByte)
  {
    int i = e.d(paramArrayOfByte, paramArrayOfByte.length - 1);
    if ((!a) && (i == -1)) {
      throw new AssertionError();
    }
    return new m(a(paramArrayOfByte, i));
  }
  
  public static void a(m paramm1, m paramm2, m paramm3)
  {
    if ((!a) && (paramm1.d != 0)) {
      throw new AssertionError();
    }
    byte[] arrayOfByte = paramm1.a;
    int j = paramm1.e;
    int i = e.d(arrayOfByte, j - 1);
    if ((!a) && (i == -1)) {
      throw new AssertionError();
    }
    if (paramm2 != null)
    {
      paramm1 = new byte[i];
      System.arraycopy(arrayOfByte, 0, paramm1, 0, i);
      com.sleepycat.b.l.y.a(paramm2, paramm1);
    }
    if (paramm3 != null)
    {
      j = j - i - e.c(arrayOfByte, j - 1);
      paramm1 = new byte[j];
      System.arraycopy(arrayOfByte, i, paramm1, 0, j);
      com.sleepycat.b.l.y.a(paramm3, paramm1);
    }
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt + 1];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramInt);
    arrayOfByte[paramInt] = -1;
    return arrayOfByte;
  }
  
  private static byte[] a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3, int paramInt4)
  {
    int j = 0;
    byte[] arrayOfByte = new byte[e.a(paramInt2) + paramInt2 + paramInt4];
    System.arraycopy(paramArrayOfByte1, paramInt1, arrayOfByte, 0, paramInt2);
    System.arraycopy(paramArrayOfByte2, paramInt3, arrayOfByte, paramInt2, paramInt4);
    paramInt3 = paramInt2 + paramInt4;
    paramInt1 = e.a(paramInt2) + paramInt3;
    if (paramInt2 < -119)
    {
      paramInt4 = 1;
      paramInt3 = -paramInt2 - 119;
      paramInt2 = paramInt4;
      paramInt4 = paramInt1 - 1;
      j = paramInt4 - 1;
      arrayOfByte[j] = ((byte)paramInt3);
      if ((paramInt3 & 0xFF00) != 0) {
        break label173;
      }
      if (paramInt2 == 0) {
        break label166;
      }
    }
    label166:
    for (int i = -120;; i = 120)
    {
      arrayOfByte[paramInt4] = i;
      for (;;)
      {
        if ((a) || (paramInt1 == arrayOfByte.length)) {
          break label311;
        }
        throw new AssertionError();
        if (paramInt2 > 119)
        {
          paramInt3 = paramInt2 - 119;
          paramInt2 = j;
          break;
        }
        arrayOfByte[paramInt3] = ((byte)paramInt2);
        paramInt1 = paramInt3 + 1;
      }
    }
    label173:
    j -= 1;
    arrayOfByte[j] = ((byte)(paramInt3 >>> 8));
    if ((0xFFFF0000 & paramInt3) == 0)
    {
      if (paramInt2 != 0) {}
      for (i = -121;; i = 121)
      {
        arrayOfByte[paramInt4] = i;
        break;
      }
    }
    j -= 1;
    arrayOfByte[j] = ((byte)(paramInt3 >>> 16));
    if ((0xFF000000 & paramInt3) == 0)
    {
      if (paramInt2 != 0) {}
      for (i = -122;; i = 122)
      {
        arrayOfByte[paramInt4] = i;
        break;
      }
    }
    arrayOfByte[(j - 1)] = ((byte)(paramInt3 >>> 24));
    if (paramInt2 != 0) {}
    for (i = -123;; i = 123)
    {
      arrayOfByte[paramInt4] = i;
      break;
    }
    label311:
    return arrayOfByte;
  }
  
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return a(paramArrayOfByte1, 0, paramArrayOfByte1.length, paramArrayOfByte2, 0, paramArrayOfByte2.length);
  }
  
  public static byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int j = e.d(paramArrayOfByte1, paramArrayOfByte1.length - 1);
    int i = j;
    if (j == -1) {
      i = paramArrayOfByte1.length - 1;
    }
    return a(paramArrayOfByte1, 0, i, paramArrayOfByte2, 0, paramArrayOfByte2.length);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */