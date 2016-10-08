package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ld<T>
  implements lb<T>
{
  private final String a;
  private final int b;
  private final le<T> c;
  
  public ld(String paramString, int paramInt, le<T> paramle)
  {
    this.a = paramString;
    this.b = paramInt;
    this.c = paramle;
  }
  
  public void a(OutputStream paramOutputStream, T paramT)
  {
    if ((paramOutputStream == null) || (this.c == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    paramOutputStream.writeUTF(this.a);
    paramOutputStream.writeInt(this.b);
    lb locallb = this.c.a(this.b);
    if (locallb == null) {
      throw new IOException("No serializer for version: " + this.b);
    }
    locallb.a(paramOutputStream, paramT);
    paramOutputStream.flush();
  }
  
  public T b(InputStream paramInputStream)
  {
    if ((paramInputStream == null) || (this.c == null)) {
      return null;
    }
    paramInputStream = new DataInputStream(paramInputStream)
    {
      public void close() {}
    };
    Object localObject = paramInputStream.readUTF();
    if (!this.a.equals(localObject)) {
      throw new IOException("Signature: " + (String)localObject + " is invalid");
    }
    int i = paramInputStream.readInt();
    localObject = this.c.a(i);
    if (localObject == null) {
      throw new IOException("No serializer for version: " + i);
    }
    return (T)((lb)localObject).b(paramInputStream);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ld.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */