package com.xiaomi.push.service;

import com.xiaomi.a.a.b.c;
import com.xiaomi.e.a;
import com.xiaomi.e.t;

final class m
  extends f
{
  bd a = null;
  int b;
  String c;
  String e;
  
  public m(XMPushService paramXMPushService, bd parambd, int paramInt, String paramString1, String paramString2)
  {
    super(9);
    this.a = parambd;
    this.b = paramInt;
    this.c = paramString1;
    this.e = paramString2;
  }
  
  public final void a()
  {
    if ((this.a.m != bf.a) && (XMPushService.e(this.f) != null)) {}
    try
    {
      XMPushService.e(this.f).a(this.a.h, this.a.b);
      this.a.a(bf.a, this.b, 0, this.e, this.c);
      return;
    }
    catch (t localt)
    {
      for (;;)
      {
        c.a(localt);
        this.f.a(10, localt);
      }
    }
  }
  
  public final String b()
  {
    return "unbind the channel. " + this.a.h + ", " + this.a.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */