package org.apache.commons.a.a.a;

import java.io.IOException;
import java.math.BigInteger;
import org.apache.commons.a.a.b.b;
import org.apache.commons.a.a.b.c;

public final class e
{
  static final b a = ;
  static final b b = new b()
  {
    public final String a(byte[] paramAnonymousArrayOfByte)
    {
      int j = paramAnonymousArrayOfByte.length;
      StringBuffer localStringBuffer = new StringBuffer(j);
      int i = 0;
      while (i < j)
      {
        int k = paramAnonymousArrayOfByte[i];
        if (k == 0) {
          break;
        }
        localStringBuffer.append((char)(k & 0xFF));
        i += 1;
      }
      return localStringBuffer.toString();
    }
  };
  
  public static long a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    long l2 = 0L;
    int j = paramInt1 + paramInt2;
    if (paramInt2 < 2) {
      throw new IllegalArgumentException("Length " + paramInt2 + " must be at least 2");
    }
    if (paramArrayOfByte[paramInt1] == 0) {
      return 0L;
    }
    for (;;)
    {
      int i;
      if ((i < j) && (paramArrayOfByte[i] == 32))
      {
        i += 1;
      }
      else
      {
        byte b1 = paramArrayOfByte[(j - 1)];
        int k;
        long l1;
        if ((b1 == 0) || (b1 == 32))
        {
          j -= 1;
          for (;;)
          {
            int m = paramArrayOfByte[(j - 1)];
            k = i;
            l1 = l2;
            if (i >= j - 1) {
              break;
            }
            if (m != 0)
            {
              k = i;
              l1 = l2;
              if (m != 32) {
                break;
              }
            }
            j -= 1;
          }
        }
        throw new IllegalArgumentException(a(paramArrayOfByte, paramInt1, paramInt2, j - 1, b1));
        do
        {
          l1 = (l1 << 3) + (b1 - 48);
          k += 1;
          if (k >= j) {
            break;
          }
          b1 = paramArrayOfByte[k];
        } while ((b1 >= 48) && (b1 <= 55));
        throw new IllegalArgumentException(a(paramArrayOfByte, paramInt1, paramInt2, k, b1));
        return l1;
        i = paramInt1;
      }
    }
  }
  
  private static String a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, byte paramByte)
  {
    paramArrayOfByte = new String(paramArrayOfByte, paramInt1, paramInt2).replaceAll("\000", "{NUL}");
    return "Invalid byte " + paramByte + " at offset " + (paramInt3 - paramInt1) + " in '" + paramArrayOfByte + "' len=" + paramInt2;
  }
  
  public static String a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, b paramb)
  {
    while ((paramInt2 > 0) && (paramArrayOfByte[(paramInt1 + paramInt2 - 1)] == 0)) {
      paramInt2 -= 1;
    }
    if (paramInt2 > 0)
    {
      byte[] arrayOfByte = new byte[paramInt2];
      System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
      return paramb.a(arrayOfByte);
    }
    return "";
  }
  
  public static boolean a(byte[] paramArrayOfByte)
  {
    boolean bool = false;
    int k = 0;
    long l3 = 0L;
    long l4 = 0L;
    long l1 = 0L;
    int i = 0;
    int m;
    int j;
    long l2;
    if (k < paramArrayOfByte.length)
    {
      m = paramArrayOfByte[k];
      if ((148 > k) || (k >= 156)) {
        break label169;
      }
      j = i;
      if (48 <= m)
      {
        j = i;
        if (m <= 55)
        {
          j = i + 1;
          if (i < 6)
          {
            l2 = l1 * 8L + m - 48L;
            i = j;
            label87:
            j = 32;
            l1 = l2;
          }
        }
      }
    }
    for (;;)
    {
      l4 += (j & 0xFF);
      l3 += j;
      k += 1;
      break;
      i = j;
      l2 = l1;
      if (j <= 0) {
        break label87;
      }
      i = 6;
      l2 = l1;
      break label87;
      if ((l1 == l4) || (l1 == l3) || (l1 > l4)) {
        bool = true;
      }
      return bool;
      label169:
      j = m;
    }
  }
  
  public static boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[paramInt] == 1;
  }
  
  public static long b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int j = 1;
    long l2;
    if ((paramArrayOfByte[paramInt1] & 0x80) == 0) {
      l2 = a(paramArrayOfByte, paramInt1, paramInt2);
    }
    int i;
    long l1;
    do
    {
      return l2;
      if (paramArrayOfByte[paramInt1] == -1) {}
      for (i = 1;; i = 0)
      {
        if (paramInt2 >= 9) {
          break label172;
        }
        if (paramInt2 < 9) {
          break;
        }
        throw new IllegalArgumentException("At offset " + paramInt1 + ", " + paramInt2 + " byte binary number exceeds maximum signed long value");
      }
      l2 = 0L;
      while (j < paramInt2)
      {
        l2 = (l2 << 8) + (paramArrayOfByte[(paramInt1 + j)] & 0xFF);
        j += 1;
      }
      l1 = l2;
      if (i != 0) {
        l1 = l2 - 1L ^ Math.pow(2.0D, (paramInt2 - 1) * 8) - 1L;
      }
      l2 = l1;
    } while (i == 0);
    return -l1;
    label172:
    Object localObject = new byte[paramInt2 - 1];
    System.arraycopy(paramArrayOfByte, paramInt1 + 1, localObject, 0, paramInt2 - 1);
    localObject = new BigInteger((byte[])localObject);
    paramArrayOfByte = (byte[])localObject;
    if (i != 0) {
      paramArrayOfByte = ((BigInteger)localObject).add(BigInteger.valueOf(-1L)).not();
    }
    if (paramArrayOfByte.bitLength() > 63) {
      throw new IllegalArgumentException("At offset " + paramInt1 + ", " + paramInt2 + " byte binary number exceeds maximum signed long value");
    }
    if (i != 0) {
      return -paramArrayOfByte.longValue();
    }
    return paramArrayOfByte.longValue();
  }
  
  public static String c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      String str = a(paramArrayOfByte, paramInt1, paramInt2, a);
      return str;
    }
    catch (IOException localIOException)
    {
      try
      {
        paramArrayOfByte = a(paramArrayOfByte, paramInt1, paramInt2, b);
        return paramArrayOfByte;
      }
      catch (IOException paramArrayOfByte)
      {
        throw new RuntimeException(paramArrayOfByte);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\a\a\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */