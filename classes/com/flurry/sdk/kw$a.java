package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class kw$a
  implements lb<kw>
{
  public kw a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new DataInputStream(paramInputStream)
    {
      public void close() {}
    };
    kw localkw = new kw(null);
    kw.a(localkw, paramInputStream.readUTF());
    return localkw;
  }
  
  public void a(OutputStream paramOutputStream, kw paramkw)
  {
    if ((paramOutputStream == null) || (paramkw == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    paramOutputStream.writeUTF(kw.a(paramkw));
    paramOutputStream.flush();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\kw$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */