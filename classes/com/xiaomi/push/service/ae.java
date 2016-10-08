package com.xiaomi.push.service;

import com.xiaomi.e.a;
import com.xiaomi.e.c.g;
import com.xiaomi.e.c.i;

final class ae
  extends f
{
  ae(XMPushService paramXMPushService)
  {
    super(2);
  }
  
  public final void a()
  {
    if (XMPushService.e(this.a) != null)
    {
      a locala = XMPushService.e(this.a);
      new g(i.b);
      locala.a(15, null);
      XMPushService.f(this.a);
    }
  }
  
  public final String b()
  {
    return "disconnect for service destroy.";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */