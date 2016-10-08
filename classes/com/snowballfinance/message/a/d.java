package com.snowballfinance.message.a;

public final class d
{
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int k = 1;
    int[] arrayOfInt = new int[4];
    int j = 0;
    int i = 0;
    int m;
    while (i < 4)
    {
      m = j + 1;
      arrayOfInt[i] = ((paramArrayOfByte2[j] & 0xFF) << 24);
      n = arrayOfInt[i];
      j = m + 1;
      arrayOfInt[i] = (n | (paramArrayOfByte2[m] & 0xFF) << 16);
      n = arrayOfInt[i];
      m = j + 1;
      arrayOfInt[i] = (n | (paramArrayOfByte2[j] & 0xFF) << 8);
      n = arrayOfInt[i];
      j = m + 1;
      arrayOfInt[i] = (paramArrayOfByte2[m] & 0xFF | n);
      i += 1;
    }
    int n = arrayOfInt[0];
    int i1 = arrayOfInt[1];
    int i2 = arrayOfInt[2];
    int i3 = arrayOfInt[3];
    j = 8 - (paramArrayOfByte1.length & 0x7);
    paramArrayOfByte2 = new byte[paramArrayOfByte1.length + j];
    paramArrayOfByte2[0] = ((byte)(j & 0xF));
    i = k;
    while (i < j)
    {
      paramArrayOfByte2[i] = ((byte)(int)System.nanoTime());
      i += 1;
    }
    System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, j, paramArrayOfByte1.length);
    for (i = 0; i < paramArrayOfByte2.length; i = j + 8)
    {
      k = i + 1;
      i = paramArrayOfByte2[i];
      j = k + 1;
      k = paramArrayOfByte2[k];
      int i4 = j + 1;
      m = paramArrayOfByte2[j];
      j = i4 + 1;
      int i5 = paramArrayOfByte2[i4];
      i4 = j + 1;
      j = paramArrayOfByte2[j];
      int i6 = i4 + 1;
      int i7 = paramArrayOfByte2[i4];
      i4 = i6 + 1;
      j = (i7 & 0xFF) << 16 | (j & 0xFF) << 24 | (paramArrayOfByte2[i6] & 0xFF) << 8 | paramArrayOfByte2[i4] & 0xFF;
      i = i5 & 0xFF | (i & 0xFF) << 24 | (k & 0xFF) << 16 | (m & 0xFF) << 8;
      k = 0;
      m = 0;
      while (k < 16)
      {
        m -= 1640531527;
        i += ((j << 4) + n ^ j + m ^ (j >> 5) + i1);
        j += ((i << 4) + i2 ^ i + m ^ (i >> 5) + i3);
        k += 1;
      }
      k = i4 - 1;
      paramArrayOfByte2[i4] = ((byte)j);
      m = k - 1;
      paramArrayOfByte2[k] = ((byte)(j >> 8));
      k = m - 1;
      paramArrayOfByte2[m] = ((byte)(j >> 16));
      m = k - 1;
      paramArrayOfByte2[k] = ((byte)(j >> 24));
      j = m - 1;
      paramArrayOfByte2[m] = ((byte)i);
      k = j - 1;
      paramArrayOfByte2[j] = ((byte)(i >> 8));
      j = k - 1;
      paramArrayOfByte2[k] = ((byte)(i >> 16));
      paramArrayOfByte2[j] = ((byte)(i >> 24));
    }
    return paramArrayOfByte2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */