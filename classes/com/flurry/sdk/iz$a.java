package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class iz$a
  implements lb<iz>
{
  public iz a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new DataInputStream(paramInputStream)
    {
      public void close() {}
    };
    iz localiz = new iz(null);
    int i = paramInputStream.readUnsignedShort();
    if (i > 0)
    {
      byte[] arrayOfByte = new byte[i];
      paramInputStream.readFully(arrayOfByte);
      localiz.a = arrayOfByte;
    }
    return localiz;
  }
  
  public void a(OutputStream paramOutputStream, iz paramiz)
  {
    if ((paramOutputStream == null) || (paramiz == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    int i = 0;
    if (paramiz.a != null) {
      i = paramiz.a.length;
    }
    paramOutputStream.writeShort(i);
    if (i > 0) {
      paramOutputStream.write(paramiz.a);
    }
    paramOutputStream.flush();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\iz$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */