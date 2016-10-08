package com.snowballfinance.message.a;

public final class c
{
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int[] arrayOfInt = new int[4];
    int j = 0;
    int i = 0;
    int k;
    int m;
    while (i < 4)
    {
      k = j + 1;
      arrayOfInt[i] = ((paramArrayOfByte2[j] & 0xFF) << 24);
      m = arrayOfInt[i];
      j = k + 1;
      arrayOfInt[i] = (m | (paramArrayOfByte2[k] & 0xFF) << 16);
      m = arrayOfInt[i];
      k = j + 1;
      arrayOfInt[i] = (m | (paramArrayOfByte2[j] & 0xFF) << 8);
      m = arrayOfInt[i];
      j = k + 1;
      arrayOfInt[i] = (paramArrayOfByte2[k] & 0xFF | m);
      i += 1;
    }
    int n = arrayOfInt[0];
    int i1 = arrayOfInt[1];
    int i2 = arrayOfInt[2];
    int i3 = arrayOfInt[3];
    for (i = 0; i < paramArrayOfByte1.length; i = j + 8)
    {
      j = i + 1;
      i = paramArrayOfByte1[i];
      k = j + 1;
      j = paramArrayOfByte1[j];
      m = k + 1;
      k = paramArrayOfByte1[k];
      int i5 = m + 1;
      m = paramArrayOfByte1[m];
      int i4 = i5 + 1;
      i5 = paramArrayOfByte1[i5];
      int i7 = i4 + 1;
      int i6 = paramArrayOfByte1[i4];
      i4 = i7 + 1;
      i7 = paramArrayOfByte1[i7];
      int i8 = paramArrayOfByte1[i4];
      i = (i & 0xFF) << 24 | (j & 0xFF) << 16 | (k & 0xFF) << 8 | m & 0xFF;
      j = i8 & 0xFF | (i6 & 0xFF) << 16 | (i5 & 0xFF) << 24 | (i7 & 0xFF) << 8;
      m = -478700656;
      k = 0;
      while (k < 16)
      {
        j -= ((i << 4) + i2 ^ i + m ^ (i >> 5) + i3);
        i -= ((j << 4) + n ^ j + m ^ (j >> 5) + i1);
        m += 1640531527;
        k += 1;
      }
      k = i4 - 1;
      paramArrayOfByte1[i4] = ((byte)j);
      m = k - 1;
      paramArrayOfByte1[k] = ((byte)(j >> 8));
      k = m - 1;
      paramArrayOfByte1[m] = ((byte)(j >> 16));
      m = k - 1;
      paramArrayOfByte1[k] = ((byte)(j >> 24));
      j = m - 1;
      paramArrayOfByte1[m] = ((byte)i);
      k = j - 1;
      paramArrayOfByte1[j] = ((byte)(i >> 8));
      j = k - 1;
      paramArrayOfByte1[k] = ((byte)(i >> 16));
      paramArrayOfByte1[j] = ((byte)(i >> 24));
    }
    i = paramArrayOfByte1[0] & 0xF;
    paramArrayOfByte2 = new byte[paramArrayOfByte1.length - i];
    System.arraycopy(paramArrayOfByte1, i, paramArrayOfByte2, 0, paramArrayOfByte2.length);
    return paramArrayOfByte2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */