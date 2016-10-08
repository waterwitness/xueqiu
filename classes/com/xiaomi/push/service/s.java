package com.xiaomi.push.service;

import com.xiaomi.a.a.b.c;
import com.xiaomi.e.a;
import com.xiaomi.e.c.e;
import com.xiaomi.e.t;

public final class s
  extends f
{
  private XMPushService a = null;
  private e b;
  
  public s(XMPushService paramXMPushService, e parame)
  {
    super(4);
    this.a = paramXMPushService;
    this.b = parame;
  }
  
  public final void a()
  {
    try
    {
      XMPushService localXMPushService = this.a;
      e locale = this.b;
      if (localXMPushService.a != null)
      {
        localXMPushService.a.a(locale);
        return;
      }
      throw new t("try send msg while connection is null.");
    }
    catch (t localt)
    {
      c.a(localt);
      this.a.a(10, localt);
    }
  }
  
  public final String b()
  {
    return "send a message.";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */