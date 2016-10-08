package com.snowballfinance.message.io.b;

import com.snowballfinance.message.io.b;
import com.snowballfinance.message.io.d;

public final class c
{
  public static b a(byte[] paramArrayOfByte, int paramInt)
  {
    boolean bool2 = true;
    if (paramArrayOfByte.length - paramInt <= 0) {
      throw new a();
    }
    if ((paramArrayOfByte[paramInt] >> 4 & 0xFF) != 2) {
      throw new e();
    }
    long l = d.a(paramArrayOfByte, paramInt + 8);
    if (paramArrayOfByte.length - paramInt < l) {
      throw new a();
    }
    int j = (paramArrayOfByte[paramInt] & 0xF) * 4;
    int i = paramInt + j;
    j = (int)(l - j);
    if ((paramArrayOfByte[(paramInt + 3)] & 0xFF) != d.a(paramArrayOfByte, i, j)) {
      throw new a();
    }
    b localb = new b();
    localb.h = System.currentTimeMillis();
    if ((paramArrayOfByte[(paramInt + 1)] & 0x80) > 0)
    {
      bool1 = true;
      localb.f = bool1;
      if ((paramArrayOfByte[(paramInt + 1)] & 0x40) <= 0) {
        break label264;
      }
      bool1 = true;
      label171:
      localb.e = bool1;
      localb.b = (paramArrayOfByte[(paramInt + 2)] >> 4 & 0xFF);
      if ((paramArrayOfByte[(paramInt + 2)] & 0x8) <= 0) {
        break label270;
      }
    }
    label264:
    label270:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localb.c = bool1;
      localb.d = (paramArrayOfByte[(paramInt + 2)] & 0x7);
      localb.a = d.a(paramArrayOfByte, paramInt + 4);
      byte[] arrayOfByte = new byte[j];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, j);
      localb.g = arrayOfByte;
      return localb;
      bool1 = false;
      break;
      bool1 = false;
      break label171;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */