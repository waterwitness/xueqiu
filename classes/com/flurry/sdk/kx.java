package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class kx
  implements lb<byte[]>
{
  public void a(OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    if ((paramOutputStream == null) || (paramArrayOfByte == null)) {
      return;
    }
    paramOutputStream.write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public byte[] a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    lt.a(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\kx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */