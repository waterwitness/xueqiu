package com.f.a.a.a;

final class e
  extends c
{
  private static final byte[] k;
  private static final byte[] l;
  final byte[] c;
  int d;
  int e;
  public final boolean f;
  public final boolean g;
  public final boolean h;
  final byte[] i;
  
  static
  {
    if (!b.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      j = bool;
      k = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      l = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      return;
    }
  }
  
  public e(int paramInt)
  {
    this.a = null;
    boolean bool1;
    label33:
    label47:
    byte[] arrayOfByte;
    if ((paramInt & 0x1) == 0)
    {
      bool1 = true;
      this.f = bool1;
      if ((paramInt & 0x2) != 0) {
        break label101;
      }
      bool1 = true;
      this.g = bool1;
      if ((paramInt & 0x4) == 0) {
        break label106;
      }
      bool1 = bool2;
      this.h = bool1;
      if ((paramInt & 0x8) != 0) {
        break label111;
      }
      arrayOfByte = k;
      label63:
      this.i = arrayOfByte;
      this.c = new byte[2];
      this.d = 0;
      if (!this.g) {
        break label118;
      }
    }
    label101:
    label106:
    label111:
    label118:
    for (paramInt = 19;; paramInt = -1)
    {
      this.e = paramInt;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label33;
      bool1 = false;
      break label47;
      arrayOfByte = l;
      break label63;
    }
  }
  
  public final boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    int i1 = 0;
    byte[] arrayOfByte1 = this.i;
    byte[] arrayOfByte2 = this.a;
    int n = this.e;
    int i4 = paramInt + 0;
    int m;
    label61:
    int i2;
    switch (this.d)
    {
    default: 
      paramInt = -1;
      m = 0;
      if (paramInt != -1)
      {
        arrayOfByte2[0] = arrayOfByte1[(paramInt >> 18 & 0x3F)];
        arrayOfByte2[1] = arrayOfByte1[(paramInt >> 12 & 0x3F)];
        arrayOfByte2[2] = arrayOfByte1[(paramInt >> 6 & 0x3F)];
        i2 = 4;
        arrayOfByte2[3] = arrayOfByte1[(paramInt & 0x3F)];
        n -= 1;
        if (n == 0)
        {
          paramInt = i2;
          if (this.h)
          {
            paramInt = 5;
            arrayOfByte2[4] = 13;
          }
          i2 = paramInt + 1;
          arrayOfByte2[paramInt] = 10;
          n = 19;
          paramInt = i2;
        }
      }
      break;
    }
    for (;;)
    {
      label165:
      if (m + 3 <= i4)
      {
        i2 = (paramArrayOfByte[m] & 0xFF) << 16 | (paramArrayOfByte[(m + 1)] & 0xFF) << 8 | paramArrayOfByte[(m + 2)] & 0xFF;
        arrayOfByte2[paramInt] = arrayOfByte1[(i2 >> 18 & 0x3F)];
        arrayOfByte2[(paramInt + 1)] = arrayOfByte1[(i2 >> 12 & 0x3F)];
        arrayOfByte2[(paramInt + 2)] = arrayOfByte1[(i2 >> 6 & 0x3F)];
        arrayOfByte2[(paramInt + 3)] = arrayOfByte1[(i2 & 0x3F)];
        m += 3;
        paramInt += 4;
        n -= 1;
        if (n != 0) {
          break label1047;
        }
        if (!this.h) {
          break label1044;
        }
        n = paramInt + 1;
        arrayOfByte2[paramInt] = 13;
        paramInt = n;
      }
      label713:
      label735:
      label910:
      label1041:
      label1044:
      for (;;)
      {
        n = paramInt + 1;
        arrayOfByte2[paramInt] = 10;
        i2 = 19;
        paramInt = n;
        n = i2;
        break label165;
        paramInt = -1;
        m = 0;
        break label61;
        if (2 > i4) {
          break;
        }
        paramInt = this.c[0];
        m = paramArrayOfByte[0];
        i2 = paramArrayOfByte[1];
        this.d = 0;
        paramInt = (paramInt & 0xFF) << 16 | (m & 0xFF) << 8 | i2 & 0xFF;
        m = 2;
        break label61;
        if (i4 <= 0) {
          break;
        }
        paramInt = this.c[0];
        m = this.c[1];
        i2 = paramArrayOfByte[0];
        this.d = 0;
        paramInt = (paramInt & 0xFF) << 16 | (m & 0xFF) << 8 | i2 & 0xFF;
        m = 1;
        break label61;
        int i3;
        if (m - this.d == i4 - 1)
        {
          if (this.d > 0)
          {
            i2 = this.c[0];
            i1 = 1;
          }
          for (;;)
          {
            i2 = (i2 & 0xFF) << 4;
            this.d -= i1;
            i3 = paramInt + 1;
            arrayOfByte2[paramInt] = arrayOfByte1[(i2 >> 6 & 0x3F)];
            i1 = i3 + 1;
            arrayOfByte2[i3] = arrayOfByte1[(i2 & 0x3F)];
            paramInt = i1;
            if (this.f)
            {
              i2 = i1 + 1;
              arrayOfByte2[i1] = 61;
              paramInt = i2 + 1;
              arrayOfByte2[i2] = 61;
            }
            i1 = paramInt;
            if (this.g)
            {
              i1 = paramInt;
              if (this.h)
              {
                arrayOfByte2[paramInt] = 13;
                i1 = paramInt + 1;
              }
              arrayOfByte2[i1] = 10;
              i1 += 1;
            }
            i2 = m;
            if ((j) || (this.d == 0)) {
              break;
            }
            throw new AssertionError();
            i2 = paramArrayOfByte[m];
            i1 = 0;
            m += 1;
          }
        }
        if (m - this.d == i4 - 2) {
          if (this.d > 1)
          {
            i2 = this.c[0];
            i1 = 1;
            if (this.d <= 0) {
              break label910;
            }
            i3 = this.c[i1];
            i1 += 1;
            i2 = (i3 & 0xFF) << 2 | (i2 & 0xFF) << 10;
            this.d -= i1;
            i1 = paramInt + 1;
            arrayOfByte2[paramInt] = arrayOfByte1[(i2 >> 12 & 0x3F)];
            i3 = i1 + 1;
            arrayOfByte2[i1] = arrayOfByte1[(i2 >> 6 & 0x3F)];
            paramInt = i3 + 1;
            arrayOfByte2[i3] = arrayOfByte1[(i2 & 0x3F)];
            if (!this.f) {
              break label1041;
            }
            i1 = paramInt + 1;
            arrayOfByte2[paramInt] = 61;
            paramInt = i1;
          }
        }
        for (;;)
        {
          i1 = paramInt;
          if (this.g)
          {
            i1 = paramInt;
            if (this.h)
            {
              arrayOfByte2[paramInt] = 13;
              i1 = paramInt + 1;
            }
            arrayOfByte2[i1] = 10;
            i1 += 1;
          }
          i2 = m;
          break;
          i2 = paramArrayOfByte[m];
          m += 1;
          break label713;
          i3 = paramArrayOfByte[m];
          m += 1;
          break label735;
          i2 = m;
          i1 = paramInt;
          if (!this.g) {
            break;
          }
          i2 = m;
          i1 = paramInt;
          if (paramInt <= 0) {
            break;
          }
          i2 = m;
          i1 = paramInt;
          if (n == 19) {
            break;
          }
          if (this.h)
          {
            i1 = paramInt + 1;
            arrayOfByte2[paramInt] = 13;
            paramInt = i1;
          }
          for (;;)
          {
            i1 = paramInt + 1;
            arrayOfByte2[paramInt] = 10;
            i2 = m;
            break;
            if ((!j) && (i2 != i4)) {
              throw new AssertionError();
            }
            this.b = i1;
            this.e = n;
            return true;
          }
        }
      }
      label1047:
      continue;
      paramInt = 4;
      continue;
      paramInt = 0;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\f\a\a\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */