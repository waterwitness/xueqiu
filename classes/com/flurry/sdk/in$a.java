package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class in$a
  implements lb<in>
{
  la<ij> a = new la(new ij.a());
  
  public in a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    Object localObject1 = new DataInputStream(paramInputStream)
    {
      public void close() {}
    };
    long l1 = ((DataInputStream)localObject1).readLong();
    long l2 = ((DataInputStream)localObject1).readLong();
    long l3 = ((DataInputStream)localObject1).readLong();
    Object localObject2 = ir.a(((DataInputStream)localObject1).readInt());
    boolean bool = ((DataInputStream)localObject1).readBoolean();
    int i = ((DataInputStream)localObject1).readInt();
    String str = ((DataInputStream)localObject1).readUTF();
    int j = ((DataInputStream)localObject1).readInt();
    int k = ((DataInputStream)localObject1).readInt();
    localObject1 = new in(str, bool, l1, l3, (ir)localObject2, null);
    in.a((in)localObject1, l2);
    in.a((in)localObject1, i);
    in.b((in)localObject1, j);
    in.a((in)localObject1, new AtomicInteger(k));
    paramInputStream = this.a.a(paramInputStream);
    if (paramInputStream != null)
    {
      in.a((in)localObject1, new HashMap());
      paramInputStream = paramInputStream.iterator();
      while (paramInputStream.hasNext())
      {
        localObject2 = (ij)paramInputStream.next();
        ((ij)localObject2).b = ((in)localObject1);
        in.j((in)localObject1).put(Long.valueOf(((ij)localObject2).e()), localObject2);
      }
    }
    return (in)localObject1;
  }
  
  public void a(OutputStream paramOutputStream, in paramin)
  {
    if ((paramOutputStream == null) || (paramin == null)) {
      return;
    }
    DataOutputStream local1 = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    local1.writeLong(in.a(paramin));
    local1.writeLong(in.b(paramin));
    local1.writeLong(in.c(paramin));
    local1.writeInt(in.d(paramin).a());
    local1.writeBoolean(in.e(paramin));
    local1.writeInt(in.f(paramin));
    if (in.g(paramin) != null) {
      local1.writeUTF(in.g(paramin));
    }
    for (;;)
    {
      local1.writeInt(in.h(paramin));
      local1.writeInt(in.i(paramin).intValue());
      local1.flush();
      this.a.a(paramOutputStream, paramin.d());
      return;
      local1.writeUTF("");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\in$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */