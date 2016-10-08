package com.xiaomi.push.service;

import com.xiaomi.push.b.d;

final class y
  extends com.xiaomi.e.c
{
  y(XMPushService paramXMPushService, String paramString)
  {
    super(paramString);
  }
  
  public final byte[] a()
  {
    try
    {
      Object localObject = new d();
      ((d)localObject).a(t.a().c());
      localObject = ((d)localObject).b();
      return (byte[])localObject;
    }
    catch (Exception localException)
    {
      com.xiaomi.a.a.b.c.a("getOBBString err: " + localException.toString());
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */