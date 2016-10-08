package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class ie$a
  implements lb<ie>
{
  public ie a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new DataInputStream(paramInputStream)
    {
      public void close() {}
    };
    ie localie = new ie();
    ie.a(localie, paramInputStream.readLong());
    ie.a(localie, paramInputStream.readBoolean());
    ie.a(localie, new byte[paramInputStream.readInt()]);
    paramInputStream.readFully(ie.c(localie));
    return localie;
  }
  
  public void a(OutputStream paramOutputStream, ie paramie)
  {
    if ((paramOutputStream == null) || (paramie == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    paramOutputStream.writeLong(ie.a(paramie));
    paramOutputStream.writeBoolean(ie.b(paramie));
    paramOutputStream.writeInt(ie.c(paramie).length);
    paramOutputStream.write(ie.c(paramie));
    paramOutputStream.flush();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ie$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */