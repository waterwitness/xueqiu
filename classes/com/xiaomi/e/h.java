package com.xiaomi.e;

import com.xiaomi.e.c.e;
import com.xiaomi.push.service.XMPushService;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

final class h
{
  Thread a;
  boolean b;
  private p c;
  private XmlPullParser d;
  
  protected h(p paramp)
  {
    this.c = paramp;
    this.b = false;
    this.a = new i(this, "Smack Packet Reader (" + this.c.n + ")");
  }
  
  private void a(int paramInt, Exception paramException)
  {
    this.b = true;
    p localp = this.c;
    localp.x.a(new r(localp, paramInt, paramException), 0L);
  }
  
  private void a(e parame)
  {
    if (parame == null) {}
    for (;;)
    {
      return;
      Iterator localIterator = this.c.g.values().iterator();
      while (localIterator.hasNext()) {
        ((b)localIterator.next()).a(parame);
      }
    }
  }
  
  final void a()
  {
    this.c.g.clear();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */