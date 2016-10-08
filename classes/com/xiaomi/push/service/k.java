package com.xiaomi.push.service;

import com.xiaomi.a.a.b.c;
import com.xiaomi.e.a;
import com.xiaomi.e.t;

final class k
  extends f
{
  bd a = null;
  
  public k(XMPushService paramXMPushService, bd parambd)
  {
    super(4);
    this.a = parambd;
  }
  
  public final void a()
  {
    try
    {
      this.a.a(bf.a, 1, 16, null, null);
      XMPushService.e(this.b).a(this.a.h, this.a.b);
      this.a.a(bf.b, 1, 16, null, null);
      XMPushService.e(this.b).a(this.a);
      return;
    }
    catch (t localt)
    {
      c.a(localt);
      this.b.a(10, localt);
    }
  }
  
  public final String b()
  {
    return "bind the client. " + this.a.h + ", " + this.a.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */