package com.xiaomi.push.service;

import com.xiaomi.a.a.b.c;
import com.xiaomi.e.t;
import com.xiaomi.g.a.d;
import com.xiaomi.g.a.n;

final class at
  extends f
{
  at(XMPushService paramXMPushService, n paramn)
  {
    super(4);
  }
  
  public final void a()
  {
    try
    {
      n localn = aq.a(this.b);
      localn.h.a("message_obsleted", "1");
      this.a.a(localn);
      return;
    }
    catch (t localt)
    {
      c.a(localt);
      this.a.a(10, localt);
    }
  }
  
  public final String b()
  {
    return "send ack message for obsleted message.";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */