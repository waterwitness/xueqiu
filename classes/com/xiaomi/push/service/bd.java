package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bd
{
  public String a;
  public String b;
  public String c;
  public String d;
  public boolean e;
  public String f;
  public String g;
  public String h;
  public String i;
  public String j;
  public ag k;
  public Context l;
  bf m = bf.a;
  int n = 0;
  public List<be> o = new ArrayList();
  XMPushService p;
  c q = new c(this);
  
  public bd(XMPushService paramXMPushService)
  {
    this.p = paramXMPushService;
    a(new bg(this));
  }
  
  public final void a(be parambe)
  {
    synchronized (this.o)
    {
      this.o.add(parambe);
      return;
    }
  }
  
  public final void a(bf parambf, int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    Object localObject2;
    synchronized (this.o)
    {
      localObject2 = this.o.iterator();
      if (((Iterator)localObject2).hasNext()) {
        ((be)((Iterator)localObject2).next()).a(this.m, parambf, paramInt2);
      }
    }
    if (this.m != parambf) {
      localObject2 = this.m;
    }
    switch (paramInt1)
    {
    default: 
      ??? = "unknown";
      com.xiaomi.a.a.b.c.a(String.format("update the client %7$s status. %1$s->%2$s %3$s %4$s %5$s %6$s", new Object[] { localObject2, parambf, ???, bh.a(paramInt2), paramString1, paramString2, this.h }));
      this.m = parambf;
      if (this.k == null) {
        com.xiaomi.a.a.b.c.d("status changed while the client dispatcher is missing");
      }
      break;
    }
    label307:
    do
    {
      do
      {
        return;
        ??? = "OPEN";
        break;
        ??? = "CLOSE";
        break;
        ??? = "KICK";
        break;
        if (paramInt1 != 2) {
          break label307;
        }
        parambf = this.l;
      } while ("5".equalsIgnoreCase(this.h));
      paramString1 = new Intent();
      paramString1.setAction("com.xiaomi.push.channel_closed");
      paramString1.setPackage(this.a);
      paramString1.putExtra(bh.q, this.h);
      paramString1.putExtra("ext_reason", paramInt2);
      paramString1.putExtra(bh.p, this.b);
      paramString1.putExtra(bh.B, this.j);
      ag.a(parambf, paramString1, this.a);
      return;
      if (paramInt1 == 3)
      {
        parambf = this.l;
        if ("5".equalsIgnoreCase(this.h))
        {
          com.xiaomi.a.a.b.c.d("mipush kicked by server");
          return;
        }
        ??? = new Intent();
        ((Intent)???).setAction("com.xiaomi.push.kicked");
        ((Intent)???).setPackage(this.a);
        ((Intent)???).putExtra("ext_kick_type", paramString2);
        ((Intent)???).putExtra("ext_kick_reason", paramString1);
        ((Intent)???).putExtra("ext_chid", this.h);
        ((Intent)???).putExtra(bh.p, this.b);
        ((Intent)???).putExtra(bh.B, this.j);
        ag.a(parambf, (Intent)???, this.a);
        return;
      }
    } while (paramInt1 != 1);
    boolean bool;
    if (parambf == bf.c)
    {
      bool = true;
      if ((bool) || (!"wait".equals(paramString2))) {
        break label491;
      }
      this.n += 1;
    }
    for (;;)
    {
      ag.a(this.l, this, bool, paramInt2, paramString1);
      return;
      bool = false;
      break;
      label491:
      if (bool) {
        this.n = 0;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\bd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */