package com.sleepycat.b.p;

import java.util.zip.Adler32;

public final class c
  extends Adler32
{
  int a = 0;
  
  public c(int paramInt)
  {
    this.a = paramInt;
  }
  
  public final void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 < this.a) {
      super.update(paramArrayOfByte, paramInt1, paramInt2);
    }
    for (;;)
    {
      return;
      int i = 0;
      while (i < paramInt2)
      {
        int j = Math.min(paramInt2 - i, this.a);
        super.update(paramArrayOfByte, paramInt1 + i, j);
        i += j;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */