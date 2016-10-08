package com.xiaomi.g.a;

import org.apache.a.b.o;
import org.apache.a.f;
import org.apache.a.g;

public final class an
{
  public static <T extends org.apache.a.b<T, ?>> void a(T paramT, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new g("the message byte is empty.");
    }
    f localf = new f(new o(paramArrayOfByte.length));
    try
    {
      org.apache.a.c.c localc = localf.b;
      int i = paramArrayOfByte.length;
      localc.a = paramArrayOfByte;
      localc.b = 0;
      localc.c = (i + 0);
      paramT.a(localf.a);
      return;
    }
    finally
    {
      localf.a.r();
    }
  }
  
  public static <T extends org.apache.a.b<T, ?>> byte[] a(T paramT)
  {
    if (paramT == null) {
      return null;
    }
    try
    {
      paramT = new org.apache.a.h(new org.apache.a.b.b()).a(paramT);
      return paramT;
    }
    catch (g paramT)
    {
      com.xiaomi.a.a.b.c.a("convertThriftObjectToBytes catch TException.", paramT);
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */