package com.xiaomi.a.a.f;

public final class a
{
  private static final String a;
  private static char[] b;
  private static byte[] c;
  
  static
  {
    int m = 0;
    a = System.getProperty("line.separator");
    b = new char[64];
    int i = 65;
    int j = 0;
    while (i <= 90)
    {
      b[j] = i;
      i = (char)(i + 1);
      j += 1;
    }
    i = 97;
    while (i <= 122)
    {
      b[j] = i;
      i = (char)(i + 1);
      j += 1;
    }
    i = 48;
    while (i <= 57)
    {
      b[j] = i;
      i = (char)(i + 1);
      j += 1;
    }
    b[j] = '+';
    b[(j + 1)] = '/';
    c = new byte[''];
    j = 0;
    int k;
    for (;;)
    {
      k = m;
      if (j >= c.length) {
        break;
      }
      c[j] = -1;
      j += 1;
    }
    while (k < 64)
    {
      c[b[k]] = ((byte)k);
      k += 1;
    }
  }
  
  public static byte[] a(String paramString)
  {
    int k = 0;
    paramString = paramString.toCharArray();
    int j = paramString.length;
    int i = j;
    if (j % 4 != 0) {
      throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
    }
    while ((i > 0) && (paramString[(i + 0 - 1)] == '=')) {
      i -= 1;
    }
    int n = i * 3 / 4;
    byte[] arrayOfByte = new byte[n];
    int i1 = i + 0;
    j = 0;
    i = k;
    int i2;
    int m;
    if (i < i1)
    {
      k = i + 1;
      i2 = paramString[i];
      i = k + 1;
      int i3 = paramString[k];
      if (i < i1)
      {
        k = paramString[i];
        i += 1;
        if (i >= i1) {
          break label176;
        }
        m = paramString[i];
        i += 1;
      }
      for (;;)
      {
        if ((i2 <= 127) && (i3 <= 127) && (k <= 127) && (m <= 127)) {
          break label183;
        }
        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
        k = 65;
        break;
        label176:
        m = 65;
      }
      label183:
      int i4 = c[i2];
      i3 = c[i3];
      i2 = c[k];
      m = c[m];
      if ((i4 < 0) || (i3 < 0) || (i2 < 0) || (m < 0)) {
        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
      }
      k = j + 1;
      arrayOfByte[j] = ((byte)(i4 << 2 | i3 >>> 4));
      if (k >= n) {
        break label328;
      }
      j = k + 1;
      arrayOfByte[k] = ((byte)((i3 & 0xF) << 4 | i2 >>> 2));
    }
    for (;;)
    {
      if (j < n)
      {
        k = j + 1;
        arrayOfByte[j] = ((byte)((i2 & 0x3) << 6 | m));
        j = k;
      }
      for (;;)
      {
        break;
        return arrayOfByte;
      }
      label328:
      j = k;
    }
  }
  
  public static char[] a(byte[] paramArrayOfByte)
  {
    int j = paramArrayOfByte.length;
    int i2 = (j * 4 + 2) / 3;
    char[] arrayOfChar = new char[(j + 2) / 3 * 4];
    int i3 = j + 0;
    int k = 0;
    j = 0;
    if (j < i3)
    {
      int m = j + 1;
      int i4 = paramArrayOfByte[j] & 0xFF;
      int n;
      if (m < i3)
      {
        j = paramArrayOfByte[m] & 0xFF;
        n = m + 1;
        m = j;
        j = n;
        label80:
        if (j >= i3) {
          break label230;
        }
        n = j + 1;
        int i1 = paramArrayOfByte[j] & 0xFF;
        j = n;
        n = i1;
        label107:
        i1 = k + 1;
        arrayOfChar[k] = b[(i4 >>> 2)];
        k = i1 + 1;
        arrayOfChar[i1] = b[((i4 & 0x3) << 4 | m >>> 4)];
        if (k >= i2) {
          break label236;
        }
        i = b[((m & 0xF) << 2 | n >>> 6)];
        label175:
        arrayOfChar[k] = i;
        k += 1;
        if (k >= i2) {
          break label242;
        }
      }
      label230:
      label236:
      label242:
      for (int i = b[(n & 0x3F)];; i = 61)
      {
        arrayOfChar[k] = i;
        k += 1;
        break;
        n = 0;
        j = m;
        m = n;
        break label80;
        n = 0;
        break label107;
        i = 61;
        break label175;
      }
    }
    return arrayOfChar;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\f\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */