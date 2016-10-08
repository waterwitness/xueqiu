package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class lc
  implements lb<String>
{
  public String a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    lt.a(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toString();
  }
  
  public void a(OutputStream paramOutputStream, String paramString)
  {
    if ((paramOutputStream == null) || (paramString == null)) {
      return;
    }
    paramString = paramString.getBytes("utf-8");
    paramOutputStream.write(paramString, 0, paramString.length);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\lc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */