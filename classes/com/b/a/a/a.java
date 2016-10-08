package com.b.a.a;

public final class a
{
  private static final byte[] a;
  private static final char[] b;
  
  static
  {
    int k = 0;
    a = new byte[''];
    b = new char[64];
    int i = 0;
    label29:
    label38:
    label47:
    label71:
    int j;
    if (i >= 128)
    {
      i = 90;
      if (i >= 65) {
        break label129;
      }
      i = 122;
      if (i >= 97) {
        break label146;
      }
      i = 57;
      if (i >= 48) {
        break label166;
      }
      a[43] = 62;
      a[47] = 63;
      i = 0;
      if (i <= 25) {
        break label186;
      }
      j = 26;
      i = 0;
      label82:
      if (j <= 51) {
        break label203;
      }
      j = 52;
      i = k;
    }
    for (;;)
    {
      if (j > 61)
      {
        b[62] = '+';
        b[63] = '/';
        return;
        a[i] = -1;
        i += 1;
        break;
        label129:
        a[i] = ((byte)(i - 65));
        i -= 1;
        break label29;
        label146:
        a[i] = ((byte)(i - 97 + 26));
        i -= 1;
        break label38;
        label166:
        a[i] = ((byte)(i - 48 + 52));
        i -= 1;
        break label47;
        label186:
        b[i] = ((char)(i + 65));
        i += 1;
        break label71;
        label203:
        b[j] = ((char)(i + 97));
        j += 1;
        i += 1;
        break label82;
      }
      b[j] = ((char)(i + 48));
      j += 1;
      i += 1;
    }
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    int k = 0;
    if (paramArrayOfByte == null) {
      return null;
    }
    int i = paramArrayOfByte.length * 8;
    if (i == 0) {
      return "";
    }
    int i2 = i % 24;
    int i1 = i / 24;
    char[] arrayOfChar;
    if (i2 != 0)
    {
      i = i1 + 1;
      arrayOfChar = new char[i * 4];
      j = 0;
      i = 0;
      if (j < i1) {
        break label147;
      }
      if (i2 != 8) {
        break label377;
      }
      j = paramArrayOfByte[k];
      k = (byte)(j & 0x3);
      if ((j & 0xFFFFFF80) != 0) {
        break label365;
      }
      j = (byte)(j >> 2);
      m = i + 1;
      arrayOfChar[i] = b[j];
      i = m + 1;
      arrayOfChar[m] = b[(k << 4)];
      arrayOfChar[i] = '=';
      arrayOfChar[(i + 1)] = '=';
    }
    label147:
    label207:
    label222:
    label336:
    label350:
    label365:
    label377:
    while (i2 != 16) {
      for (;;)
      {
        return new String(arrayOfChar);
        i = i1;
        break;
        m = k + 1;
        k = paramArrayOfByte[k];
        int i3 = m + 1;
        m = paramArrayOfByte[m];
        int i4 = paramArrayOfByte[i3];
        int i5 = (byte)(m & 0xF);
        int i6 = (byte)(k & 0x3);
        if ((k & 0xFFFFFF80) == 0)
        {
          k = (byte)(k >> 2);
          if ((m & 0xFFFFFF80) != 0) {
            break label336;
          }
          m = (byte)(m >> 4);
          if ((i4 & 0xFFFFFF80) != 0) {
            break label350;
          }
        }
        for (n = (byte)(i4 >> 6);; n = (byte)(i4 >> 6 ^ 0xFC))
        {
          int i7 = i + 1;
          arrayOfChar[i] = b[k];
          i = i7 + 1;
          arrayOfChar[i7] = b[(m | i6 << 4)];
          k = i + 1;
          arrayOfChar[i] = b[(n | i5 << 2)];
          arrayOfChar[k] = b[(i4 & 0x3F)];
          j += 1;
          i = k + 1;
          k = i3 + 1;
          break;
          k = (byte)(k >> 2 ^ 0xC0);
          break label207;
          m = (byte)(m >> 4 ^ 0xF0);
          break label222;
        }
        j = (byte)(j >> 2 ^ 0xC0);
      }
    }
    int j = paramArrayOfByte[k];
    k = paramArrayOfByte[(k + 1)];
    int m = (byte)(k & 0xF);
    int n = (byte)(j & 0x3);
    if ((j & 0xFFFFFF80) == 0)
    {
      j = (byte)(j >> 2);
      label423:
      if ((k & 0xFFFFFF80) != 0) {
        break label504;
      }
    }
    label504:
    for (k = (byte)(k >> 4);; k = (byte)(k >> 4 ^ 0xF0))
    {
      i1 = i + 1;
      arrayOfChar[i] = b[j];
      i = i1 + 1;
      arrayOfChar[i1] = b[(k | n << 4)];
      arrayOfChar[i] = b[(m << 2)];
      arrayOfChar[(i + 1)] = '=';
      break;
      j = (byte)(j >> 2 ^ 0xC0);
      break label423;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\b\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */