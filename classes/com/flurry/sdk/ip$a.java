package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class ip$a
  implements lb<ip>
{
  public ip a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {}
    int i;
    do
    {
      return null;
      paramInputStream = new DataInputStream(paramInputStream)
      {
        public void close() {}
      };
      i = paramInputStream.readShort();
    } while (i == 0);
    ip localip = new ip();
    ip.a(localip, new byte[i]);
    paramInputStream.readFully(ip.a(localip));
    paramInputStream.readUnsignedShort();
    return localip;
  }
  
  public void a(OutputStream paramOutputStream, ip paramip)
  {
    if ((paramOutputStream == null) || (paramip == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    paramOutputStream.writeShort(ip.a(paramip).length);
    paramOutputStream.write(ip.a(paramip));
    paramOutputStream.writeShort(0);
    paramOutputStream.flush();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ip$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */