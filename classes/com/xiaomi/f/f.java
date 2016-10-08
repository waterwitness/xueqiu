package com.xiaomi.f;

import com.xiaomi.a.a.d.d;
import com.xiaomi.e.e;
import com.xiaomi.push.service.XMPushService;

public final class f
  implements e
{
  XMPushService a;
  com.xiaomi.e.a b;
  Exception c;
  private int d;
  
  f(XMPushService paramXMPushService)
  {
    this.a = paramXMPushService;
  }
  
  public final void a(com.xiaomi.e.a parama)
  {
    j.a(com.xiaomi.push.d.a.r.ac, parama.c(), parama.i());
  }
  
  public final void a(com.xiaomi.e.a parama, int paramInt, Exception paramException)
  {
    if ((this.d == 0) && (this.c == null))
    {
      this.d = paramInt;
      this.c = paramException;
      j.b(parama.c(), paramException);
    }
  }
  
  public final void a(com.xiaomi.e.a parama, Exception paramException)
  {
    if (d.a(this.a)) {}
    for (int i = 1;; i = 0)
    {
      j.b(com.xiaomi.push.d.a.d.ac, parama.c(), i);
      return;
    }
  }
  
  public final void b(com.xiaomi.e.a parama)
  {
    this.d = 0;
    this.c = null;
    this.b = parama;
    j.a(com.xiaomi.push.d.a.r.ac);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\f\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */