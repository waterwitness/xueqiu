package com.xiaomi.push.service;

import com.xiaomi.a.a.b.c;
import com.xiaomi.e.a;
import com.xiaomi.e.t;
import com.xiaomi.f.j;

final class b
  extends f
{
  bd a = null;
  
  public b(XMPushService paramXMPushService, bd parambd)
  {
    super(9);
    this.a = parambd;
  }
  
  public final void a()
  {
    try
    {
      if (!this.b.b())
      {
        c.d("trying bind while the connection is not created, quit!");
        return;
      }
      bd localbd = bb.a().b(this.a.h, this.a.b);
      if (localbd == null)
      {
        c.a("ignore bind because the channel " + this.a.h + " is removed ");
        return;
      }
    }
    catch (t localt)
    {
      c.a(localt);
      this.b.a(10, localt);
      return;
    }
    if (localt.m == bf.a)
    {
      localt.a(bf.b, 0, 0, null, null);
      XMPushService.e(this.b).a(localt);
      j.a(this.b, localt);
      return;
    }
    c.a("trying duplicate bind, ingore! " + localt.m);
  }
  
  public final String b()
  {
    return "bind the client. " + this.a.h + ", " + this.a.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */