package com.sleepycat.c;

public final class f
{
  private static byte[] a = new byte[0];
  private static String b = "";
  
  public static int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    while (paramArrayOfByte[paramInt] != 0)
    {
      i += 1;
      paramInt += 1;
    }
    return i;
  }
  
  private static int a(byte[] paramArrayOfByte, int paramInt1, char[] paramArrayOfChar, int paramInt2, int paramInt3)
  {
    int i = paramInt2;
    paramInt2 = paramInt1;
    int j;
    for (;;)
    {
      j = paramInt2;
      if (j >= paramInt3 + paramInt1) {
        break;
      }
      paramInt2 = j + 1;
      int k = paramArrayOfByte[j] & 0xFF;
      switch ((k & 0xFF) >> 4)
      {
      case 8: 
      case 9: 
      case 10: 
      case 11: 
      default: 
        throw new IllegalArgumentException();
      case 0: 
      case 1: 
      case 2: 
      case 3: 
      case 4: 
      case 5: 
      case 6: 
      case 7: 
        paramArrayOfChar[i] = ((char)k);
        i += 1;
        break;
      case 12: 
      case 13: 
        j = paramInt2 + 1;
        paramInt2 = paramArrayOfByte[paramInt2];
        if ((paramInt2 & 0xC0) != 128) {
          throw new IllegalArgumentException();
        }
        paramArrayOfChar[i] = ((char)(paramInt2 & 0x3F | (k & 0x1F) << 6));
        i += 1;
        paramInt2 = j;
        break;
      case 14: 
        j = paramInt2 + 1;
        int m = paramArrayOfByte[paramInt2];
        paramInt2 = j + 1;
        j = paramArrayOfByte[j];
        if (((m & 0xC0) != 128) || ((j & 0xC0) != 128)) {
          throw new IllegalArgumentException();
        }
        paramArrayOfChar[i] = ((char)((m & 0x3F) << 6 | (k & 0xF) << 12 | (j & 0x3F) << 0));
        i += 1;
      }
    }
    return j;
  }
  
  public static int a(char[] paramArrayOfChar)
  {
    int i = 0;
    int k = paramArrayOfChar.length;
    int j = 0;
    if (j < k + 0)
    {
      int m = paramArrayOfChar[j];
      if ((m > 0) && (m <= 127)) {
        i += 1;
      }
      for (;;)
      {
        j += 1;
        break;
        if (m > 2047) {
          i += 3;
        } else {
          i += 2;
        }
      }
    }
    return i;
  }
  
  public static String a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return b;
    }
    int j = 0;
    int i = paramInt1;
    if (i < paramInt2 + paramInt1)
    {
      switch ((paramArrayOfByte[i] & 0xFF) >> 4)
      {
      case 8: 
      case 9: 
      case 10: 
      case 11: 
      default: 
        throw new IllegalArgumentException();
      case 0: 
      case 1: 
      case 2: 
      case 3: 
      case 4: 
      case 5: 
      case 6: 
      case 7: 
        i += 1;
      }
      for (;;)
      {
        j += 1;
        break;
        i += 2;
        continue;
        i += 3;
      }
    }
    char[] arrayOfChar = new char[j];
    a(paramArrayOfByte, paramInt1, arrayOfChar, 0, paramInt2);
    return new String(arrayOfChar, 0, j);
  }
  
  public static void a(char[] paramArrayOfChar, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (i < paramInt2 + 0)
    {
      int k = paramArrayOfChar[i];
      int j;
      if ((k > 0) && (k <= 127))
      {
        j = paramInt1 + 1;
        paramArrayOfByte[paramInt1] = ((byte)k);
        paramInt1 = j;
      }
      for (;;)
      {
        i += 1;
        break;
        if (k > 2047)
        {
          j = paramInt1 + 1;
          paramArrayOfByte[paramInt1] = ((byte)(k >> 12 & 0xF | 0xE0));
          int m = j + 1;
          paramArrayOfByte[j] = ((byte)(k >> 6 & 0x3F | 0x80));
          paramInt1 = m + 1;
          paramArrayOfByte[m] = ((byte)(k >> 0 & 0x3F | 0x80));
        }
        else
        {
          j = paramInt1 + 1;
          paramArrayOfByte[paramInt1] = ((byte)(k >> 6 & 0x1F | 0xC0));
          paramInt1 = j + 1;
          paramArrayOfByte[j] = ((byte)(k >> 0 & 0x3F | 0x80));
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\c\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */