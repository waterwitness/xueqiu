package com.xiaomi.push.service;

import com.xiaomi.a.a.b.c;
import com.xiaomi.e.a;
import com.xiaomi.e.c.d;
import com.xiaomi.e.t;

public final class n
  extends f
{
  private XMPushService a = null;
  private d[] b;
  
  public n(XMPushService paramXMPushService, d[] paramArrayOfd)
  {
    super(4);
    this.a = paramXMPushService;
    this.b = paramArrayOfd;
  }
  
  public final void a()
  {
    try
    {
      XMPushService localXMPushService = this.a;
      d[] arrayOfd = this.b;
      if (localXMPushService.a != null)
      {
        localXMPushService.a.a(arrayOfd);
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
    return "batch send message.";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */