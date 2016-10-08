package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class ik$a
  implements lb<ik>
{
  public ik a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    Object localObject = new DataInputStream(paramInputStream)
    {
      public void close() {}
    };
    int i = ((DataInputStream)localObject).readInt();
    long l1 = ((DataInputStream)localObject).readLong();
    long l2 = ((DataInputStream)localObject).readLong();
    boolean bool1 = ((DataInputStream)localObject).readBoolean();
    int j = ((DataInputStream)localObject).readInt();
    paramInputStream = il.a(((DataInputStream)localObject).readInt());
    String str = ((DataInputStream)localObject).readUTF();
    int k = ((DataInputStream)localObject).readInt();
    long l3 = ((DataInputStream)localObject).readLong();
    boolean bool2 = ((DataInputStream)localObject).readBoolean();
    long l4 = ((DataInputStream)localObject).readLong();
    localObject = new ik(null, l1, l2, i);
    ((ik)localObject).d = bool1;
    ((ik)localObject).e = j;
    ((ik)localObject).f = paramInputStream;
    ((ik)localObject).g = str;
    ((ik)localObject).h = k;
    ((ik)localObject).i = l3;
    ((ik)localObject).j = bool2;
    ((ik)localObject).k = l4;
    return (ik)localObject;
  }
  
  public void a(OutputStream paramOutputStream, ik paramik)
  {
    if ((paramOutputStream == null) || (paramik == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    paramOutputStream.writeInt(paramik.a);
    paramOutputStream.writeLong(paramik.b);
    paramOutputStream.writeLong(paramik.c);
    paramOutputStream.writeBoolean(paramik.d);
    paramOutputStream.writeInt(paramik.e);
    paramOutputStream.writeInt(paramik.f.a());
    if (paramik.g != null) {
      paramOutputStream.writeUTF(paramik.g);
    }
    for (;;)
    {
      paramOutputStream.writeInt(paramik.h);
      paramOutputStream.writeLong(paramik.i);
      paramOutputStream.writeBoolean(paramik.j);
      paramOutputStream.writeLong(paramik.k);
      paramOutputStream.flush();
      return;
      paramOutputStream.writeUTF("");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ik$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */