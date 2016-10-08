package org.apache.a.c;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class a
  extends d
{
  protected InputStream a = null;
  protected OutputStream b = null;
  
  protected a() {}
  
  public a(OutputStream paramOutputStream)
  {
    this.b = paramOutputStream;
  }
  
  public final int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.a == null) {
      throw new e("Cannot read from null inputStream");
    }
    try
    {
      paramInt1 = this.a.read(paramArrayOfByte, paramInt1, paramInt2);
      if (paramInt1 < 0) {
        throw new e((byte)0);
      }
    }
    catch (IOException paramArrayOfByte)
    {
      throw new e(paramArrayOfByte);
    }
    return paramInt1;
  }
  
  public final void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.b == null) {
      throw new e("Cannot write to null outputStream");
    }
    try
    {
      this.b.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      throw new e(paramArrayOfByte);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\a\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */