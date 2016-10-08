package com.xiaomi.f;

import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;
import com.xiaomi.push.service.be;
import com.xiaomi.push.service.bf;

final class a
  implements be
{
  XMPushService a;
  bd b;
  com.xiaomi.e.a c;
  bf d;
  int e;
  boolean f = false;
  
  a(XMPushService paramXMPushService, bd parambd)
  {
    this.a = paramXMPushService;
    this.d = bf.b;
    this.b = parambd;
  }
  
  public final void a(bf parambf1, bf parambf2, int paramInt)
  {
    if ((!this.f) && (parambf1 == bf.b))
    {
      this.d = parambf2;
      this.e = paramInt;
      this.f = true;
    }
    this.a.a(new c(this), 0L);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\f\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */