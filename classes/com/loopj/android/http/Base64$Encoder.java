package com.loopj.android.http;

class Base64$Encoder
  extends Base64.Coder
{
  private static final byte[] ENCODE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static final byte[] ENCODE_WEBSAFE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
  public static final int LINE_GROUPS = 19;
  private final byte[] alphabet;
  private int count;
  public final boolean do_cr;
  public final boolean do_newline;
  public final boolean do_padding;
  private final byte[] tail;
  int tailLen;
  
  public Base64$Encoder(int paramInt, byte[] paramArrayOfByte)
  {
    this.output = paramArrayOfByte;
    boolean bool1;
    if ((paramInt & 0x1) == 0)
    {
      bool1 = true;
      this.do_padding = bool1;
      if ((paramInt & 0x2) != 0) {
        break label101;
      }
      bool1 = true;
      label33:
      this.do_newline = bool1;
      if ((paramInt & 0x4) == 0) {
        break label106;
      }
      bool1 = bool2;
      label47:
      this.do_cr = bool1;
      if ((paramInt & 0x8) != 0) {
        break label111;
      }
      paramArrayOfByte = ENCODE;
      label63:
      this.alphabet = paramArrayOfByte;
      this.tail = new byte[2];
      this.tailLen = 0;
      if (!this.do_newline) {
        break label118;
      }
    }
    label101:
    label106:
    label111:
    label118:
    for (paramInt = 19;; paramInt = -1)
    {
      this.count = paramInt;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label33;
      bool1 = false;
      break label47;
      paramArrayOfByte = ENCODE_WEBSAFE;
      break label63;
    }
  }
  
  public int maxOutputSize(int paramInt)
  {
    return paramInt * 8 / 5 + 10;
  }
  
  public boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    byte[] arrayOfByte1 = this.alphabet;
    byte[] arrayOfByte2 = this.output;
    int k = 0;
    int j = this.count;
    int m = paramInt2 + paramInt1;
    int i;
    switch (this.tailLen)
    {
    default: 
      paramInt2 = -1;
      i = paramInt1;
      paramInt1 = paramInt2;
      label63:
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
          if (this.do_cr)
          {
            paramInt1 = 5;
            arrayOfByte2[4] = 13;
          }
          j = paramInt1 + 1;
          arrayOfByte2[paramInt1] = 10;
          paramInt2 = 19;
          paramInt1 = j;
          j = i;
        }
      }
      break;
    }
    for (;;)
    {
      label170:
      if (j + 3 <= m)
      {
        i = (paramArrayOfByte[j] & 0xFF) << 16 | (paramArrayOfByte[(j + 1)] & 0xFF) << 8 | paramArrayOfByte[(j + 2)] & 0xFF;
        arrayOfByte2[paramInt1] = arrayOfByte1[(i >> 18 & 0x3F)];
        arrayOfByte2[(paramInt1 + 1)] = arrayOfByte1[(i >> 12 & 0x3F)];
        arrayOfByte2[(paramInt1 + 2)] = arrayOfByte1[(i >> 6 & 0x3F)];
        arrayOfByte2[(paramInt1 + 3)] = arrayOfByte1[(i & 0x3F)];
        j += 3;
        paramInt1 += 4;
        paramInt2 -= 1;
        if (paramInt2 != 0) {
          break label1126;
        }
        if (!this.do_cr) {
          break label1123;
        }
        paramInt2 = paramInt1 + 1;
        arrayOfByte2[paramInt1] = 13;
        paramInt1 = paramInt2;
      }
      label726:
      label748:
      label925:
      label1120:
      label1123:
      for (;;)
      {
        paramInt2 = paramInt1 + 1;
        arrayOfByte2[paramInt1] = 10;
        i = 19;
        paramInt1 = paramInt2;
        paramInt2 = i;
        break label170;
        paramInt2 = -1;
        i = paramInt1;
        paramInt1 = paramInt2;
        break label63;
        if (paramInt1 + 2 > m) {
          break;
        }
        i = this.tail[0];
        paramInt2 = paramInt1 + 1;
        paramInt1 = paramArrayOfByte[paramInt1];
        int n = paramArrayOfByte[paramInt2];
        this.tailLen = 0;
        paramInt1 = (i & 0xFF) << 16 | (paramInt1 & 0xFF) << 8 | n & 0xFF;
        i = paramInt2 + 1;
        break label63;
        if (paramInt1 + 1 > m) {
          break;
        }
        paramInt2 = this.tail[0];
        n = this.tail[1];
        i = paramInt1 + 1;
        paramInt1 = paramArrayOfByte[paramInt1];
        this.tailLen = 0;
        paramInt1 = (paramInt2 & 0xFF) << 16 | (n & 0xFF) << 8 | paramInt1 & 0xFF;
        break label63;
        if (paramBoolean)
        {
          if (j - this.tailLen == m - 1)
          {
            i = 0;
            if (this.tailLen > 0)
            {
              paramArrayOfByte = this.tail;
              i = 1;
            }
            for (j = paramArrayOfByte[0];; j = paramArrayOfByte[j])
            {
              j = (j & 0xFF) << 4;
              this.tailLen -= i;
              k = paramInt1 + 1;
              arrayOfByte2[paramInt1] = arrayOfByte1[(j >> 6 & 0x3F)];
              i = k + 1;
              arrayOfByte2[k] = arrayOfByte1[(j & 0x3F)];
              paramInt1 = i;
              if (this.do_padding)
              {
                j = i + 1;
                arrayOfByte2[i] = 61;
                paramInt1 = j + 1;
                arrayOfByte2[j] = 61;
              }
              i = paramInt1;
              if (this.do_newline)
              {
                i = paramInt1;
                if (this.do_cr)
                {
                  arrayOfByte2[paramInt1] = 13;
                  i = paramInt1 + 1;
                }
                arrayOfByte2[i] = 10;
                i += 1;
              }
              this.op = i;
              this.count = paramInt2;
              return true;
            }
          }
          if (j - this.tailLen == m - 2) {
            if (this.tailLen > 1)
            {
              m = this.tail[0];
              i = 1;
              k = j;
              j = m;
              if (this.tailLen <= 0) {
                break label925;
              }
              k = this.tail[i];
              i += 1;
              j = (k & 0xFF) << 2 | (j & 0xFF) << 10;
              this.tailLen -= i;
              i = paramInt1 + 1;
              arrayOfByte2[paramInt1] = arrayOfByte1[(j >> 12 & 0x3F)];
              k = i + 1;
              arrayOfByte2[i] = arrayOfByte1[(j >> 6 & 0x3F)];
              paramInt1 = k + 1;
              arrayOfByte2[k] = arrayOfByte1[(j & 0x3F)];
              if (!this.do_padding) {
                break label1120;
              }
              i = paramInt1 + 1;
              arrayOfByte2[paramInt1] = 61;
              paramInt1 = i;
            }
          }
        }
        for (;;)
        {
          i = paramInt1;
          if (this.do_newline)
          {
            i = paramInt1;
            if (this.do_cr)
            {
              arrayOfByte2[paramInt1] = 13;
              i = paramInt1 + 1;
            }
            arrayOfByte2[i] = 10;
            i += 1;
          }
          break;
          k = j + 1;
          j = paramArrayOfByte[j];
          i = 0;
          break label726;
          k = paramArrayOfByte[k];
          break label748;
          i = paramInt1;
          if (!this.do_newline) {
            break;
          }
          i = paramInt1;
          if (paramInt1 <= 0) {
            break;
          }
          i = paramInt1;
          if (paramInt2 == 19) {
            break;
          }
          if (this.do_cr)
          {
            i = paramInt1 + 1;
            arrayOfByte2[paramInt1] = 13;
            paramInt1 = i;
          }
          for (;;)
          {
            i = paramInt1 + 1;
            arrayOfByte2[paramInt1] = 10;
            break;
            if (j == m - 1)
            {
              arrayOfByte1 = this.tail;
              i = this.tailLen;
              this.tailLen = (i + 1);
              arrayOfByte1[i] = paramArrayOfByte[j];
              i = paramInt1;
              break;
            }
            i = paramInt1;
            if (j != m - 2) {
              break;
            }
            arrayOfByte1 = this.tail;
            i = this.tailLen;
            this.tailLen = (i + 1);
            arrayOfByte1[i] = paramArrayOfByte[j];
            arrayOfByte1 = this.tail;
            i = this.tailLen;
            this.tailLen = (i + 1);
            arrayOfByte1[i] = paramArrayOfByte[(j + 1)];
            i = paramInt1;
            break;
          }
        }
      }
      label1126:
      continue;
      paramInt2 = paramInt1;
      paramInt1 = 4;
      j = i;
      continue;
      paramInt2 = j;
      j = i;
      paramInt1 = k;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\Base64$Encoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */