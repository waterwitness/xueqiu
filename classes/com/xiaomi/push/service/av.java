package com.xiaomi.push.service;

import com.xiaomi.a.a.b.c;
import com.xiaomi.e.t;
import com.xiaomi.g.a.d;
import com.xiaomi.g.a.n;

final class av
  extends f
{
  av(XMPushService paramXMPushService, n paramn, String paramString)
  {
    super(4);
  }
  
  public final void a()
  {
    try
    {
      n localn = aq.a(this.b);
      localn.h.a("absent_target_package", this.c);
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
    return "send app absent ack message for message.";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */