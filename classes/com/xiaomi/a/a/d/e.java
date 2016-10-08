package com.xiaomi.a.a.d;

import java.io.FilterInputStream;
import java.io.InputStream;

public final class e
  extends FilterInputStream
{
  private boolean a;
  
  public e(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.a)
    {
      paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
      if (paramInt1 != -1) {
        return paramInt1;
      }
    }
    this.a = true;
    return -1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\d\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */