package com.tencent.stat.common;

public class StatBase64
{
  static
  {
    if (!StatBase64.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public static byte[] decode(byte[] paramArrayOfByte, int paramInt)
  {
    return decode(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }
  
  public static byte[] decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    c localc = new c(paramInt3, new byte[paramInt2 * 3 / 4]);
    if (localc.c == 6) {
      paramInt1 = 0;
    }
    while (paramInt1 == 0)
    {
      throw new IllegalArgumentException("bad base-64");
      int n = paramInt2 + paramInt1;
      paramInt2 = localc.c;
      paramInt3 = localc.d;
      int i = 0;
      byte[] arrayOfByte = localc.a;
      int[] arrayOfInt = localc.e;
      label77:
      int k = i;
      int m = paramInt3;
      if (paramInt1 < n)
      {
        int j = i;
        k = paramInt3;
        m = paramInt1;
        if (paramInt2 == 0)
        {
          j = paramInt1;
          for (paramInt1 = paramInt3; j + 4 <= n; paramInt1 = paramInt3)
          {
            paramInt3 = arrayOfInt[(paramArrayOfByte[j] & 0xFF)] << 18 | arrayOfInt[(paramArrayOfByte[(j + 1)] & 0xFF)] << 12 | arrayOfInt[(paramArrayOfByte[(j + 2)] & 0xFF)] << 6 | arrayOfInt[(paramArrayOfByte[(j + 3)] & 0xFF)];
            paramInt1 = paramInt3;
            if (paramInt3 < 0) {
              break;
            }
            arrayOfByte[(i + 2)] = ((byte)paramInt3);
            arrayOfByte[(i + 1)] = ((byte)(paramInt3 >> 8));
            arrayOfByte[i] = ((byte)(paramInt3 >> 16));
            i += 3;
            j += 4;
          }
          k = i;
          m = paramInt1;
          if (j < n)
          {
            m = j;
            k = paramInt1;
            j = i;
          }
        }
        else
        {
          paramInt1 = m + 1;
          paramInt3 = arrayOfInt[(paramArrayOfByte[m] & 0xFF)];
          switch (paramInt2)
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
                      i = j;
                      paramInt3 = k;
                      break;
                      if (paramInt3 >= 0)
                      {
                        paramInt2 += 1;
                        i = j;
                        break;
                      }
                    } while (paramInt3 == -1);
                    localc.c = 6;
                    paramInt1 = 0;
                    break;
                    if (paramInt3 >= 0)
                    {
                      paramInt3 = k << 6 | paramInt3;
                      paramInt2 += 1;
                      i = j;
                      break label77;
                    }
                  } while (paramInt3 == -1);
                  localc.c = 6;
                  paramInt1 = 0;
                  break;
                  if (paramInt3 >= 0)
                  {
                    paramInt3 = k << 6 | paramInt3;
                    paramInt2 += 1;
                    i = j;
                    break label77;
                  }
                  if (paramInt3 == -2)
                  {
                    arrayOfByte[j] = ((byte)(k >> 4));
                    paramInt2 = 4;
                    i = j + 1;
                    paramInt3 = k;
                    break label77;
                  }
                } while (paramInt3 == -1);
                localc.c = 6;
                paramInt1 = 0;
                break;
                if (paramInt3 >= 0)
                {
                  paramInt3 = k << 6 | paramInt3;
                  arrayOfByte[(j + 2)] = ((byte)paramInt3);
                  arrayOfByte[(j + 1)] = ((byte)(paramInt3 >> 8));
                  arrayOfByte[j] = ((byte)(paramInt3 >> 16));
                  i = j + 3;
                  paramInt2 = 0;
                  break label77;
                }
                if (paramInt3 == -2)
                {
                  arrayOfByte[(j + 1)] = ((byte)(k >> 2));
                  arrayOfByte[j] = ((byte)(k >> 10));
                  i = j + 2;
                  paramInt2 = 5;
                  paramInt3 = k;
                  break label77;
                }
              } while (paramInt3 == -1);
              localc.c = 6;
              paramInt1 = 0;
              break;
              if (paramInt3 == -2)
              {
                paramInt2 += 1;
                i = j;
                paramInt3 = k;
                break label77;
              }
            } while (paramInt3 == -1);
            localc.c = 6;
            paramInt1 = 0;
            break;
          } while (paramInt3 == -1);
          localc.c = 6;
          paramInt1 = 0;
          continue;
        }
      }
      paramInt1 = k;
      switch (paramInt2)
      {
      default: 
        paramInt1 = k;
      case 0: 
      case 1: 
      case 2: 
      case 3: 
        for (;;)
        {
          localc.c = paramInt2;
          localc.b = paramInt1;
          paramInt1 = 1;
          break;
          localc.c = 6;
          paramInt1 = 0;
          break;
          arrayOfByte[k] = ((byte)(m >> 4));
          paramInt1 = k + 1;
          continue;
          paramInt3 = k + 1;
          arrayOfByte[k] = ((byte)(m >> 10));
          paramInt1 = paramInt3 + 1;
          arrayOfByte[paramInt3] = ((byte)(m >> 2));
        }
      }
      localc.c = 6;
      paramInt1 = 0;
    }
    if (localc.b == localc.a.length) {
      return localc.a;
    }
    paramArrayOfByte = new byte[localc.b];
    System.arraycopy(localc.a, 0, paramArrayOfByte, 0, localc.b);
    return paramArrayOfByte;
  }
  
  public static byte[] encode(byte[] paramArrayOfByte, int paramInt)
  {
    return encode(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }
  
  public static byte[] encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    d locald = new d(paramInt3);
    int i = paramInt2 / 3 * 4;
    int k;
    int j;
    label76:
    byte[] arrayOfByte1;
    byte[] arrayOfByte2;
    int i1;
    if (locald.f)
    {
      paramInt3 = i;
      if (paramInt2 % 3 > 0) {
        paramInt3 = i + 4;
      }
      k = paramInt3;
      if (locald.g)
      {
        k = paramInt3;
        if (paramInt2 > 0)
        {
          j = (paramInt2 - 1) / 57;
          if (!locald.h) {
            break label482;
          }
          i = 2;
          k = paramInt3 + i * (j + 1);
        }
      }
      locald.a = new byte[k];
      arrayOfByte1 = locald.i;
      arrayOfByte2 = locald.a;
      i = 0;
      j = locald.e;
      i1 = paramInt2 + paramInt1;
      switch (locald.d)
      {
      default: 
        label156:
        paramInt3 = paramInt1;
        paramInt1 = -1;
        label160:
        if (paramInt1 != -1)
        {
          arrayOfByte2[0] = arrayOfByte1[(paramInt1 >> 18 & 0x3F)];
          arrayOfByte2[1] = arrayOfByte1[(paramInt1 >> 12 & 0x3F)];
          arrayOfByte2[2] = arrayOfByte1[(paramInt1 >> 6 & 0x3F)];
          paramInt2 = 4;
          arrayOfByte2[3] = arrayOfByte1[(paramInt1 & 0x3F)];
          paramInt1 = j - 1;
          if (paramInt1 == 0)
          {
            paramInt1 = paramInt2;
            if (locald.h)
            {
              paramInt1 = 5;
              arrayOfByte2[4] = 13;
            }
            i = paramInt1 + 1;
            arrayOfByte2[paramInt1] = 10;
            paramInt2 = 19;
            paramInt1 = i;
          }
        }
        break;
      }
    }
    for (;;)
    {
      label264:
      if (paramInt3 + 3 <= i1)
      {
        i = (paramArrayOfByte[paramInt3] & 0xFF) << 16 | (paramArrayOfByte[(paramInt3 + 1)] & 0xFF) << 8 | paramArrayOfByte[(paramInt3 + 2)] & 0xFF;
        arrayOfByte2[paramInt1] = arrayOfByte1[(i >> 18 & 0x3F)];
        arrayOfByte2[(paramInt1 + 1)] = arrayOfByte1[(i >> 12 & 0x3F)];
        arrayOfByte2[(paramInt1 + 2)] = arrayOfByte1[(i >> 6 & 0x3F)];
        arrayOfByte2[(paramInt1 + 3)] = arrayOfByte1[(i & 0x3F)];
        paramInt3 += 3;
        paramInt1 += 4;
        paramInt2 -= 1;
        if (paramInt2 != 0) {
          break label1284;
        }
        if (!locald.h) {
          break label1281;
        }
        paramInt2 = paramInt1 + 1;
        arrayOfByte2[paramInt1] = 13;
        paramInt1 = paramInt2;
      }
      label482:
      label899:
      label928:
      label1115:
      label1278:
      label1281:
      for (;;)
      {
        paramInt2 = paramInt1 + 1;
        arrayOfByte2[paramInt1] = 10;
        i = 19;
        paramInt1 = paramInt2;
        paramInt2 = i;
        break label264;
        paramInt3 = i;
        switch (paramInt2 % 3)
        {
        case 0: 
        default: 
          paramInt3 = i;
          break;
        case 1: 
          paramInt3 = i + 2;
          break;
        case 2: 
          paramInt3 = i + 3;
          break;
          i = 1;
          break label76;
          paramInt2 = -1;
          paramInt3 = paramInt1;
          paramInt1 = paramInt2;
          break label160;
          if (paramInt1 + 2 > i1) {
            break label156;
          }
          paramInt2 = locald.c[0];
          paramInt3 = paramInt1 + 1;
          paramInt1 = paramArrayOfByte[paramInt1];
          int m = paramArrayOfByte[paramInt3];
          locald.d = 0;
          paramInt3 += 1;
          paramInt1 = (paramInt2 & 0xFF) << 16 | (paramInt1 & 0xFF) << 8 | m & 0xFF;
          break label160;
          if (paramInt1 + 1 > i1) {
            break label156;
          }
          paramInt2 = locald.c[0];
          m = locald.c[1];
          paramInt3 = paramInt1 + 1;
          paramInt1 = paramArrayOfByte[paramInt1];
          locald.d = 0;
          paramInt1 = (paramInt2 & 0xFF) << 16 | (m & 0xFF) << 8 | paramInt1 & 0xFF;
          break label160;
          if (paramInt3 - locald.d == i1 - 1)
          {
            i = 0;
            if (locald.d > 0)
            {
              paramArrayOfByte = locald.c;
              i = 1;
              j = paramArrayOfByte[0];
            }
            for (;;)
            {
              j = (j & 0xFF) << 4;
              locald.d -= i;
              m = paramInt1 + 1;
              arrayOfByte2[paramInt1] = arrayOfByte1[(j >> 6 & 0x3F)];
              i = m + 1;
              arrayOfByte2[m] = arrayOfByte1[(j & 0x3F)];
              paramInt1 = i;
              if (locald.f)
              {
                j = i + 1;
                arrayOfByte2[i] = 61;
                paramInt1 = j + 1;
                arrayOfByte2[j] = 61;
              }
              i = paramInt1;
              if (locald.g)
              {
                i = paramInt1;
                if (locald.h)
                {
                  arrayOfByte2[paramInt1] = 13;
                  i = paramInt1 + 1;
                }
                arrayOfByte2[i] = 10;
                i += 1;
              }
              j = paramInt3;
              if ((d.j) || (locald.d == 0)) {
                break;
              }
              throw new AssertionError();
              j = paramArrayOfByte[paramInt3];
              paramInt3 += 1;
            }
          }
          int n;
          if (paramInt3 - locald.d == i1 - 2)
          {
            i = 0;
            if (locald.d > 1)
            {
              byte[] arrayOfByte3 = locald.c;
              m = 1;
              j = arrayOfByte3[0];
              i = paramInt3;
              paramInt3 = m;
              if (locald.d <= 0) {
                break label1115;
              }
              m = locald.c[paramInt3];
              n = paramInt3 + 1;
              paramInt3 = i;
              i = n;
              j = (m & 0xFF) << 2 | (j & 0xFF) << 10;
              locald.d -= i;
              i = paramInt1 + 1;
              arrayOfByte2[paramInt1] = arrayOfByte1[(j >> 12 & 0x3F)];
              m = i + 1;
              arrayOfByte2[i] = arrayOfByte1[(j >> 6 & 0x3F)];
              paramInt1 = m + 1;
              arrayOfByte2[m] = arrayOfByte1[(j & 0x3F)];
              if (!locald.f) {
                break label1278;
              }
              i = paramInt1 + 1;
              arrayOfByte2[paramInt1] = 61;
              paramInt1 = i;
            }
          }
          for (;;)
          {
            i = paramInt1;
            if (locald.g)
            {
              i = paramInt1;
              if (locald.h)
              {
                arrayOfByte2[paramInt1] = 13;
                i = paramInt1 + 1;
              }
              arrayOfByte2[i] = 10;
              i += 1;
            }
            j = paramInt3;
            break;
            j = paramArrayOfByte[paramInt3];
            m = paramInt3 + 1;
            paramInt3 = i;
            i = m;
            break label899;
            m = paramArrayOfByte[i];
            n = i + 1;
            i = paramInt3;
            paramInt3 = n;
            break label928;
            j = paramInt3;
            i = paramInt1;
            if (!locald.g) {
              break;
            }
            j = paramInt3;
            i = paramInt1;
            if (paramInt1 <= 0) {
              break;
            }
            j = paramInt3;
            i = paramInt1;
            if (paramInt2 == 19) {
              break;
            }
            if (locald.h)
            {
              i = paramInt1 + 1;
              arrayOfByte2[paramInt1] = 13;
              paramInt1 = i;
            }
            for (;;)
            {
              i = paramInt1 + 1;
              arrayOfByte2[paramInt1] = 10;
              j = paramInt3;
              break;
              if ((!d.j) && (j != i1)) {
                throw new AssertionError();
              }
              locald.b = i;
              locald.e = paramInt2;
              assert (locald.b == k);
              return locald.a;
            }
          }
        }
      }
      label1284:
      continue;
      paramInt2 = paramInt1;
      paramInt1 = 4;
      continue;
      paramInt2 = j;
      paramInt1 = i;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\common\StatBase64.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */