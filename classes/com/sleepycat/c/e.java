package com.sleepycat.c;

public final class e
{
  public static int a(int paramInt)
  {
    if (paramInt < -119) {
      paramInt = -paramInt - 119;
    }
    while ((paramInt & 0xFF00) == 0)
    {
      return 2;
      if (paramInt > 119) {
        paramInt -= 119;
      } else {
        return 1;
      }
    }
    if ((0xFFFF0000 & paramInt) == 0) {
      return 3;
    }
    if ((paramInt & 0xFF000000) == 0) {
      return 4;
    }
    return 5;
  }
  
  public static int a(long paramLong)
  {
    if (paramLong < -119L) {
      paramLong = -paramLong - 119L;
    }
    while ((0xFFFFFFFFFFFFFF00 & paramLong) == 0L)
    {
      return 2;
      if (paramLong > 119L) {
        paramLong -= 119L;
      } else {
        return 1;
      }
    }
    if ((0xFFFFFFFFFFFF0000 & paramLong) == 0L) {
      return 3;
    }
    if ((0xFFFFFFFFFF000000 & paramLong) == 0L) {
      return 4;
    }
    if ((0xFFFFFFFF00000000 & paramLong) == 0L) {
      return 5;
    }
    if ((0xFFFFFF0000000000 & paramLong) == 0L) {
      return 6;
    }
    if ((0xFFFF000000000000 & paramLong) == 0L) {
      return 7;
    }
    if ((paramLong & 0xFF00000000000000) == 0L) {
      return 8;
    }
    return 9;
  }
  
  public static int a(byte[] paramArrayOfByte, int paramInt)
  {
    int k = paramInt + 1;
    int j = paramArrayOfByte[paramInt];
    int i;
    if (j < -119)
    {
      j = -j - 119;
      i = 1;
      int n = k + 1;
      paramInt = paramArrayOfByte[k] & 0xFF;
      if (j <= 1) {
        break label151;
      }
      int m = n + 1;
      k = (paramArrayOfByte[n] & 0xFF) << 8 | paramInt;
      paramInt = k;
      if (j <= 2) {
        break label148;
      }
      k |= (paramArrayOfByte[m] & 0xFF) << 16;
      paramInt = k;
      if (j <= 3) {
        break label148;
      }
      paramInt = (paramArrayOfByte[(m + 1)] & 0xFF) << 24 | k;
    }
    label148:
    label151:
    for (;;)
    {
      if (i != 0)
      {
        paramInt = -paramInt - 119;
        do
        {
          return paramInt;
          paramInt = j;
        } while (j <= 119);
        i = 0;
        j -= 119;
        break;
      }
      return paramInt + 119;
    }
  }
  
  public static int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int j;
    if (paramInt2 < -119)
    {
      k = 1;
      j = -paramInt2 - 119;
      paramInt2 = k;
      m = paramInt1 + 1;
      k = m + 1;
      paramArrayOfByte[m] = ((byte)j);
      if ((j & 0xFF00) != 0) {
        break label100;
      }
      if (paramInt2 == 0) {
        break label94;
      }
    }
    label94:
    for (int i = -120;; i = 120)
    {
      paramArrayOfByte[paramInt1] = i;
      return k;
      if (paramInt2 > 119)
      {
        j = 0;
        k = paramInt2 - 119;
        paramInt2 = j;
        j = k;
        break;
      }
      paramArrayOfByte[paramInt1] = ((byte)paramInt2);
      return paramInt1 + 1;
    }
    label100:
    int m = k + 1;
    paramArrayOfByte[k] = ((byte)(j >>> 8));
    if ((0xFFFF0000 & j) == 0)
    {
      if (paramInt2 != 0) {}
      for (i = -121;; i = 121)
      {
        paramArrayOfByte[paramInt1] = i;
        return m;
      }
    }
    int k = m + 1;
    paramArrayOfByte[m] = ((byte)(j >>> 16));
    if ((0xFF000000 & j) == 0)
    {
      if (paramInt2 != 0) {}
      for (i = -122;; i = 122)
      {
        paramArrayOfByte[paramInt1] = i;
        return k;
      }
    }
    paramArrayOfByte[k] = ((byte)(j >>> 24));
    if (paramInt2 != 0) {}
    for (i = -123;; i = 123)
    {
      paramArrayOfByte[paramInt1] = i;
      return k + 1;
    }
  }
  
  public static int a(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    int j;
    if (paramLong < -119L)
    {
      j = 1;
      paramLong = -paramLong - 119L;
      m = paramInt + 1;
      k = m + 1;
      paramArrayOfByte[m] = ((byte)(int)paramLong);
      if ((0xFFFFFFFFFFFFFF00 & paramLong) != 0L) {
        break label100;
      }
      if (j == 0) {
        break label93;
      }
    }
    label93:
    for (int i = -120;; i = 120)
    {
      paramArrayOfByte[paramInt] = i;
      return k;
      if (paramLong > 119L)
      {
        j = 0;
        paramLong -= 119L;
        break;
      }
      paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
      return paramInt + 1;
    }
    label100:
    int m = k + 1;
    paramArrayOfByte[k] = ((byte)(int)(paramLong >>> 8));
    if ((0xFFFFFFFFFFFF0000 & paramLong) == 0L)
    {
      if (j != 0) {}
      for (i = -121;; i = 121)
      {
        paramArrayOfByte[paramInt] = i;
        return m;
      }
    }
    int k = m + 1;
    paramArrayOfByte[m] = ((byte)(int)(paramLong >>> 16));
    if ((0xFFFFFFFFFF000000 & paramLong) == 0L)
    {
      if (j != 0) {}
      for (i = -122;; i = 122)
      {
        paramArrayOfByte[paramInt] = i;
        return k;
      }
    }
    m = k + 1;
    paramArrayOfByte[k] = ((byte)(int)(paramLong >>> 24));
    if ((0xFFFFFFFF00000000 & paramLong) == 0L)
    {
      if (j != 0) {}
      for (i = -123;; i = 123)
      {
        paramArrayOfByte[paramInt] = i;
        return m;
      }
    }
    k = m + 1;
    paramArrayOfByte[m] = ((byte)(int)(paramLong >>> 32));
    if ((0xFFFFFF0000000000 & paramLong) == 0L)
    {
      if (j != 0) {}
      for (i = -124;; i = 124)
      {
        paramArrayOfByte[paramInt] = i;
        return k;
      }
    }
    m = k + 1;
    paramArrayOfByte[k] = ((byte)(int)(paramLong >>> 40));
    if ((0xFFFF000000000000 & paramLong) == 0L)
    {
      if (j != 0) {}
      for (i = -125;; i = 125)
      {
        paramArrayOfByte[paramInt] = i;
        return m;
      }
    }
    k = m + 1;
    paramArrayOfByte[m] = ((byte)(int)(paramLong >>> 48));
    if ((0xFF00000000000000 & paramLong) == 0L)
    {
      if (j != 0) {}
      for (i = -126;; i = 126)
      {
        paramArrayOfByte[paramInt] = i;
        return k;
      }
    }
    paramArrayOfByte[k] = ((byte)(int)(paramLong >>> 56));
    if (j != 0) {}
    for (i = -127;; i = 127)
    {
      paramArrayOfByte[paramInt] = i;
      return k + 1;
    }
  }
  
  public static long b(byte[] paramArrayOfByte, int paramInt)
  {
    int j = paramInt + 1;
    paramInt = paramArrayOfByte[paramInt];
    int i;
    long l1;
    if (paramInt < -119)
    {
      paramInt = -paramInt - 119;
      i = 1;
      int k = j + 1;
      l1 = paramArrayOfByte[j] & 0xFF;
      if (paramInt <= 1) {
        break label278;
      }
      j = k + 1;
      long l2 = (paramArrayOfByte[k] & 0xFF) << 8 | l1;
      l1 = l2;
      if (paramInt > 2)
      {
        k = j + 1;
        l2 |= (paramArrayOfByte[j] & 0xFF) << 16;
        l1 = l2;
        if (paramInt > 3)
        {
          j = k + 1;
          l2 |= (paramArrayOfByte[k] & 0xFF) << 24;
          l1 = l2;
          if (paramInt > 4)
          {
            k = j + 1;
            l2 |= (paramArrayOfByte[j] & 0xFF) << 32;
            l1 = l2;
            if (paramInt > 5)
            {
              j = k + 1;
              l2 |= (paramArrayOfByte[k] & 0xFF) << 40;
              l1 = l2;
              if (paramInt > 6)
              {
                l2 |= (paramArrayOfByte[j] & 0xFF) << 48;
                l1 = l2;
                if (paramInt > 7) {
                  l1 = l2 | (paramArrayOfByte[(j + 1)] & 0xFF) << 56;
                }
              }
            }
          }
        }
      }
    }
    label278:
    for (;;)
    {
      if (i != 0)
      {
        return -l1 - 119L;
        if (paramInt > 119)
        {
          i = 0;
          paramInt -= 119;
          break;
        }
        return paramInt;
      }
      return l1 + 119L;
    }
  }
  
  public static int c(byte[] paramArrayOfByte, int paramInt)
  {
    paramInt = paramArrayOfByte[paramInt];
    if (paramInt < -119) {
      return -paramInt - 119 + 1;
    }
    if (paramInt > 119) {
      return paramInt - 119 + 1;
    }
    return 1;
  }
  
  public static int d(byte[] paramArrayOfByte, int paramInt)
  {
    int j = paramArrayOfByte[paramInt];
    int i;
    if (j < -119)
    {
      j = -j - 119;
      i = 1;
      int k = paramInt - 1;
      paramInt = paramArrayOfByte[k] & 0xFF;
      if (j <= 1) {
        break label151;
      }
      int m = k - 1;
      k = (paramArrayOfByte[m] & 0xFF) << 8 | paramInt;
      paramInt = k;
      if (j <= 2) {
        break label148;
      }
      m -= 1;
      k |= (paramArrayOfByte[m] & 0xFF) << 16;
      paramInt = k;
      if (j <= 3) {
        break label148;
      }
      paramInt = (paramArrayOfByte[(m - 1)] & 0xFF) << 24 | k;
    }
    label148:
    label151:
    for (;;)
    {
      if (i != 0)
      {
        i = -paramInt - 119;
        do
        {
          return i;
          i = j;
        } while (j <= 119);
        i = 0;
        j -= 119;
        break;
      }
      return paramInt + 119;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\c\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */