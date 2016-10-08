package com.f.a.a.a;

import java.io.UnsupportedEncodingException;

public class b
{
  static
  {
    if (!b.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public static String a(byte[] paramArrayOfByte, int paramInt)
  {
    int i;
    int k;
    label73:
    label120:
    label168:
    for (;;)
    {
      int j;
      e locale;
      try
      {
        j = paramArrayOfByte.length;
        locale = new e(paramInt);
        i = j / 3 * 4;
        if (!locale.f) {
          break label120;
        }
        paramInt = i;
        if (j % 3 > 0) {
          paramInt = i + 4;
        }
        if ((!locale.g) || (j <= 0)) {
          break label168;
        }
        k = (j - 1) / 57;
        if (!locale.h) {
          break;
        }
        i = 2;
      }
      catch (UnsupportedEncodingException paramArrayOfByte)
      {
        throw new AssertionError(paramArrayOfByte);
      }
      locale.a = new byte[paramInt];
      locale.a(paramArrayOfByte, j);
      if ((!a) && (locale.b != paramInt))
      {
        throw new AssertionError();
        paramInt = i;
      }
      switch (j % 3)
      {
      case 0: 
        paramArrayOfByte = new String(locale.a, "US-ASCII");
        return paramArrayOfByte;
      }
    }
    for (;;)
    {
      paramInt = i * (k + 1) + paramInt;
      break label73;
      paramInt = i;
      break;
      paramInt = i + 2;
      break;
      paramInt = i + 3;
      break;
      i = 1;
    }
  }
  
  public static byte[] a(String paramString)
  {
    byte[] arrayOfByte1 = paramString.getBytes();
    int i = arrayOfByte1.length;
    paramString = new d(new byte[i * 3 / 4]);
    if (paramString.c == 6) {
      i = 0;
    }
    while (i == 0)
    {
      throw new IllegalArgumentException("bad base-64");
      int i3 = i + 0;
      int j = paramString.c;
      int k = paramString.d;
      byte[] arrayOfByte2 = paramString.a;
      int[] arrayOfInt = paramString.e;
      i = 0;
      int m = 0;
      label86:
      int i1 = m;
      int i2 = k;
      if (i < i3)
      {
        int n = m;
        i1 = k;
        i2 = i;
        if (j == 0)
        {
          n = i;
          for (i = k; n + 4 <= i3; i = k)
          {
            k = arrayOfInt[(arrayOfByte1[n] & 0xFF)] << 18 | arrayOfInt[(arrayOfByte1[(n + 1)] & 0xFF)] << 12 | arrayOfInt[(arrayOfByte1[(n + 2)] & 0xFF)] << 6 | arrayOfInt[(arrayOfByte1[(n + 3)] & 0xFF)];
            i = k;
            if (k < 0) {
              break;
            }
            arrayOfByte2[(m + 2)] = ((byte)k);
            arrayOfByte2[(m + 1)] = ((byte)(k >> 8));
            arrayOfByte2[m] = ((byte)(k >> 16));
            m += 3;
            n += 4;
          }
          i1 = m;
          i2 = i;
          if (n < i3)
          {
            i2 = n;
            i1 = i;
            n = m;
          }
        }
        else
        {
          i = i2 + 1;
          k = arrayOfInt[(arrayOfByte1[i2] & 0xFF)];
          switch (j)
          {
          }
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      m = n;
                      k = i1;
                      break;
                      if (k >= 0)
                      {
                        j += 1;
                        m = n;
                        break;
                      }
                    } while (k == -1);
                    paramString.c = 6;
                    i = 0;
                    break;
                    if (k >= 0)
                    {
                      k = i1 << 6 | k;
                      j += 1;
                      m = n;
                      break label86;
                    }
                  } while (k == -1);
                  paramString.c = 6;
                  i = 0;
                  break;
                  if (k >= 0)
                  {
                    k = i1 << 6 | k;
                    j += 1;
                    m = n;
                    break label86;
                  }
                  if (k == -2)
                  {
                    arrayOfByte2[n] = ((byte)(i1 >> 4));
                    j = 4;
                    m = n + 1;
                    k = i1;
                    break label86;
                  }
                } while (k == -1);
                paramString.c = 6;
                i = 0;
                break;
                if (k >= 0)
                {
                  k = i1 << 6 | k;
                  arrayOfByte2[(n + 2)] = ((byte)k);
                  arrayOfByte2[(n + 1)] = ((byte)(k >> 8));
                  arrayOfByte2[n] = ((byte)(k >> 16));
                  m = n + 3;
                  j = 0;
                  break label86;
                }
                if (k == -2)
                {
                  arrayOfByte2[(n + 1)] = ((byte)(i1 >> 2));
                  arrayOfByte2[n] = ((byte)(i1 >> 10));
                  m = n + 2;
                  j = 5;
                  k = i1;
                  break label86;
                }
              } while (k == -1);
              paramString.c = 6;
              i = 0;
              break;
              if (k == -2)
              {
                j += 1;
                m = n;
                k = i1;
                break label86;
              }
            } while (k == -1);
            paramString.c = 6;
            i = 0;
            break;
          } while (k == -1);
          paramString.c = 6;
          i = 0;
          continue;
        }
      }
      i = i1;
      switch (j)
      {
      default: 
        i = i1;
      case 0: 
      case 1: 
      case 2: 
      case 3: 
        for (;;)
        {
          paramString.c = j;
          paramString.b = i;
          i = 1;
          break;
          paramString.c = 6;
          i = 0;
          break;
          arrayOfByte2[i1] = ((byte)(i2 >> 4));
          i = i1 + 1;
          continue;
          k = i1 + 1;
          arrayOfByte2[i1] = ((byte)(i2 >> 10));
          i = k + 1;
          arrayOfByte2[k] = ((byte)(i2 >> 2));
        }
      }
      paramString.c = 6;
      i = 0;
    }
    if (paramString.b == paramString.a.length) {
      return paramString.a;
    }
    arrayOfByte1 = new byte[paramString.b];
    System.arraycopy(paramString.a, 0, arrayOfByte1, 0, paramString.b);
    return arrayOfByte1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\f\a\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */