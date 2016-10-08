package com.xiaomi.push.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import com.xiaomi.e.c.i;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class XMPushService
  extends Service
  implements com.xiaomi.e.e
{
  public static int d = 1;
  public com.xiaomi.e.a a;
  ag b;
  ai c = null;
  private com.xiaomi.e.c e;
  private r f;
  private long g = 0L;
  private com.xiaomi.e.p h;
  private a i = null;
  private com.xiaomi.push.service.a.a j = null;
  private com.xiaomi.e.g k = new w(this);
  
  static
  {
    com.xiaomi.d.f.a("app.chat.xiaomi.net", "42.62.94.2");
    com.xiaomi.d.f.a("app.chat.xiaomi.net", "114.54.23.2");
    com.xiaomi.d.f.a("app.chat.xiaomi.net", "111.13.142.2");
    com.xiaomi.d.f.a("app.chat.xiaomi.net", "111.206.200.2");
    com.xiaomi.d.f.a("app.chat.xiaomi.net", "app.chat.xiaomi.net");
    com.xiaomi.e.p.a = true;
  }
  
  private com.xiaomi.e.c.d a(byte[] paramArrayOfByte)
  {
    com.xiaomi.g.a.n localn = new com.xiaomi.g.a.n();
    try
    {
      com.xiaomi.g.a.an.a(localn, paramArrayOfByte);
      paramArrayOfByte = b(localn);
      return paramArrayOfByte;
    }
    catch (org.apache.a.g paramArrayOfByte)
    {
      com.xiaomi.a.a.b.c.a(paramArrayOfByte);
    }
    return null;
  }
  
  private com.xiaomi.e.c.e a(com.xiaomi.e.c.e parame, String paramString1, String paramString2, boolean paramBoolean)
  {
    bb localbb = bb.a();
    List localList = localbb.b(paramString1);
    if (localList.isEmpty())
    {
      com.xiaomi.a.a.b.c.a("open channel should be called first before sending a packet, pkg=" + paramString1);
      paramString1 = null;
    }
    Object localObject;
    do
    {
      do
      {
        return paramString1;
        parame.u = paramString1;
        localObject = parame.t;
        paramString1 = (String)localObject;
        if (TextUtils.isEmpty((CharSequence)localObject))
        {
          paramString1 = (String)localList.get(0);
          parame.t = paramString1;
        }
        localObject = localbb.b(paramString1, parame.s);
        if (!b())
        {
          com.xiaomi.a.a.b.c.a("drop a packet as the channel is not connected, chid=" + paramString1);
          break;
        }
        if ((localObject == null) || (((bd)localObject).m != bf.c))
        {
          com.xiaomi.a.a.b.c.a("drop a packet as the channel is not opened, chid=" + paramString1);
          break;
        }
        if (!TextUtils.equals(paramString2, ((bd)localObject).j))
        {
          com.xiaomi.a.a.b.c.a("invalid session. " + paramString2);
          break;
        }
        paramString1 = parame;
      } while (!(parame instanceof com.xiaomi.e.c.d));
      paramString1 = parame;
    } while (!paramBoolean);
    paramString1 = (com.xiaomi.e.c.d)parame;
    paramString2 = q.a(((bd)localObject).i, paramString1.d());
    parame = new com.xiaomi.e.c.d();
    parame.s = paramString1.s;
    parame.r = paramString1.r;
    parame.q = paramString1.d();
    parame.t = paramString1.t;
    parame.m = true;
    paramString1 = q.a(paramString2, com.xiaomi.e.e.g.c(paramString1.a()));
    paramString2 = new com.xiaomi.e.c.a("s");
    paramString2.b(paramString1);
    parame.a(paramString2);
    return parame;
  }
  
  public static com.xiaomi.g.a.n a(String paramString1, String paramString2)
  {
    com.xiaomi.g.a.p localp = new com.xiaomi.g.a.p();
    localp.d = paramString2;
    localp.e = "package uninstalled";
    localp.c = com.xiaomi.e.c.e.c();
    localp.a();
    return a(paramString1, paramString2, localp, com.xiaomi.g.a.a.i);
  }
  
  public static <T extends org.apache.a.b<T, ?>> com.xiaomi.g.a.n a(String paramString1, String paramString2, T paramT, com.xiaomi.g.a.a parama)
  {
    paramT = com.xiaomi.g.a.an.a(paramT);
    com.xiaomi.g.a.n localn = new com.xiaomi.g.a.n();
    com.xiaomi.g.a.f localf = new com.xiaomi.g.a.f();
    localf.a = 5L;
    localf.b = "fakeid";
    localn.g = localf;
    localn.d = ByteBuffer.wrap(paramT);
    localn.a = parama;
    localn.a();
    localn.f = paramString1;
    localn.a(false);
    localn.e = paramString2;
    return localn;
  }
  
  private bd a(String paramString, Intent paramIntent)
  {
    Object localObject = paramIntent.getStringExtra(bh.p);
    localObject = bb.a().b(paramString, (String)localObject);
    paramString = (String)localObject;
    if (localObject == null) {
      paramString = new bd(this);
    }
    paramString.h = paramIntent.getStringExtra(bh.q);
    paramString.b = paramIntent.getStringExtra(bh.p);
    paramString.c = paramIntent.getStringExtra(bh.s);
    paramString.a = paramIntent.getStringExtra(bh.y);
    paramString.f = paramIntent.getStringExtra(bh.w);
    paramString.g = paramIntent.getStringExtra(bh.x);
    paramString.e = paramIntent.getBooleanExtra(bh.v, false);
    paramString.i = paramIntent.getStringExtra(bh.u);
    paramString.j = paramIntent.getStringExtra(bh.B);
    paramString.d = paramIntent.getStringExtra(bh.t);
    paramString.k = this.b;
    paramString.l = getApplicationContext();
    bb.a().a(paramString);
    return paramString;
  }
  
  private void a(String paramString, int paramInt)
  {
    Object localObject = bb.a().c(paramString);
    if (localObject != null)
    {
      localObject = ((Collection)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        bd localbd = (bd)((Iterator)localObject).next();
        if (localbd != null) {
          a(new m(this, localbd, paramInt, null, null), 0L);
        }
      }
    }
    bb.a().a(paramString);
  }
  
  private com.xiaomi.e.c.d b(com.xiaomi.g.a.n paramn)
  {
    try
    {
      com.xiaomi.e.c.d locald = new com.xiaomi.e.c.d();
      locald.t = "5";
      locald.r = "xiaomi.com";
      locald.s = am.a(this).a;
      locald.m = true;
      locald.a = "push";
      locald.u = paramn.f;
      Object localObject = am.a(this).a;
      paramn.g.b = ((String)localObject).substring(0, ((String)localObject).indexOf("@"));
      paramn.g.d = ((String)localObject).substring(((String)localObject).indexOf("/") + 1);
      localObject = com.xiaomi.g.a.an.a(paramn);
      localObject = String.valueOf(com.xiaomi.a.a.f.a.a(q.a(q.a(am.a(this).c, locald.d()), (byte[])localObject)));
      com.xiaomi.e.c.a locala = new com.xiaomi.e.c.a("s");
      locala.b((String)localObject);
      locald.a(locala);
      com.xiaomi.a.a.b.c.a("try send mi push message. packagename:" + paramn.f + " action:" + paramn.a);
      return locald;
    }
    catch (NullPointerException paramn)
    {
      com.xiaomi.a.a.b.c.a(paramn);
    }
    return null;
  }
  
  private static boolean c()
  {
    boolean bool1 = false;
    try
    {
      Object localObject = Class.forName("miui.os.Build");
      Field localField = ((Class)localObject).getField("IS_CM_CUSTOMIZATION_TEST");
      localObject = ((Class)localObject).getField("IS_CU_CUSTOMIZATION_TEST");
      if (!localField.getBoolean(null))
      {
        boolean bool2 = ((Field)localObject).getBoolean(null);
        if (!bool2) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    }
    catch (Throwable localThrowable) {}
    return false;
  }
  
  private void d()
  {
    if (a())
    {
      if (!this.j.b()) {
        this.j.a(true);
      }
      return;
    }
    this.j.a();
  }
  
  public final void a(int paramInt)
  {
    this.c.a(paramInt);
  }
  
  public final void a(int paramInt, Exception paramException)
  {
    StringBuilder localStringBuilder = new StringBuilder("disconnect ").append(hashCode()).append(", ");
    if (this.a == null) {}
    for (Object localObject = null;; localObject = Integer.valueOf(this.a.hashCode()))
    {
      com.xiaomi.a.a.b.c.a(localObject);
      if (this.a != null)
      {
        localObject = this.a;
        new com.xiaomi.e.c.g(i.b);
        ((com.xiaomi.e.a)localObject).a(paramInt, paramException);
        this.a = null;
      }
      a(7);
      a(4);
      bb.a().a(paramInt);
      return;
    }
  }
  
  public final void a(com.xiaomi.e.a parama)
  {
    parama = this.f;
    parama.c = System.currentTimeMillis();
    parama.a.a(1);
    parama.d = 0;
    parama = bb.a().b().iterator();
    while (parama.hasNext()) {
      a(new b(this, (bd)parama.next()), 0L);
    }
  }
  
  public final void a(com.xiaomi.e.a parama, int paramInt, Exception paramException)
  {
    a(false);
  }
  
  public final void a(com.xiaomi.e.a parama, Exception paramException)
  {
    a(false);
  }
  
  public final void a(com.xiaomi.g.a.n paramn)
  {
    if (this.a != null)
    {
      paramn = b(paramn);
      if (paramn != null) {
        this.a.a(paramn);
      }
      return;
    }
    throw new com.xiaomi.e.t("try send msg while connection is null.");
  }
  
  public final void a(bd parambd)
  {
    parambd.a(new ad(this));
  }
  
  public final void a(f paramf)
  {
    ai localai = this.c;
    int m = paramf.d;
    if (localai.c != null) {
      localai.c.removeMessages(m, paramf);
    }
  }
  
  public final void a(f paramf, long paramLong)
  {
    this.c.a(paramf, paramLong);
  }
  
  public final void a(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4)
  {
    bd localbd = bb.a().b(paramString1, paramString2);
    if (localbd != null) {
      a(new m(this, localbd, paramInt, paramString4, paramString3), 0L);
    }
    bb.a().a(paramString1, paramString2);
  }
  
  public final void a(String paramString, byte[] paramArrayOfByte)
  {
    if (this.a != null)
    {
      com.xiaomi.e.c.d locald = a(paramArrayOfByte);
      if (locald != null)
      {
        this.a.a(locald);
        return;
      }
      ap.a(this, paramString, paramArrayOfByte, 70000003, "not a valid message");
      return;
    }
    throw new com.xiaomi.e.t("try send msg while connection is null.");
  }
  
  public final void a(boolean paramBoolean)
  {
    int m = 40;
    r localr = this.f;
    if (localr.a.a())
    {
      XMPushService localXMPushService;
      if (paramBoolean)
      {
        localr.a.a(1);
        localObject = localr.a;
        localXMPushService = localr.a;
        localXMPushService.getClass();
        ((XMPushService)localObject).a(new d(localXMPushService), 0L);
        localr.d += 1;
        return;
      }
      Object localObject = localr.a.c;
      if (((ai)localObject).c != null)
      {
        paramBoolean = ((ai)localObject).c.hasMessages(1);
        label97:
        if (paramBoolean) {
          break label203;
        }
        if (localr.d <= 8) {
          break label205;
        }
        m = 300;
      }
      for (;;)
      {
        com.xiaomi.a.a.b.c.a("schedule reconnect in " + m + "s");
        localObject = localr.a;
        localXMPushService = localr.a;
        localXMPushService.getClass();
        ((XMPushService)localObject).a(new d(localXMPushService), m * 1000);
        localr.d += 1;
        if (localr.d != 3) {
          break;
        }
        az.a();
        return;
        paramBoolean = false;
        break label97;
        label203:
        break;
        label205:
        if (localr.d > 4)
        {
          m = 60;
        }
        else if (localr.d > 0)
        {
          m = 10;
        }
        else if (localr.c == 0L)
        {
          m = 0;
        }
        else
        {
          long l = System.currentTimeMillis() - localr.c;
          if (l < 300000L)
          {
            if (localr.b >= r.e)
            {
              m = localr.b;
            }
            else
            {
              m = localr.b;
              localr.b = ((int)(localr.b * 1.5D));
            }
          }
          else if (l < 900000L)
          {
            if (localr.b < 40) {
              m = localr.b;
            }
            localr.b = m;
            m = localr.b;
          }
          else
          {
            if (l < 1800000L)
            {
              if (localr.b < 20) {}
              for (m = localr.b;; m = 20)
              {
                localr.b = m;
                m = localr.b;
                break;
              }
            }
            localr.b = 10;
            m = localr.b;
          }
        }
      }
    }
    com.xiaomi.a.a.b.c.c("should not reconnect as no client or network.");
  }
  
  public final void a(byte[] paramArrayOfByte, String paramString)
  {
    if (paramArrayOfByte == null)
    {
      ap.a(this, paramString, paramArrayOfByte, 70000003, "null payload");
      com.xiaomi.a.a.b.c.a("register request without payload");
      return;
    }
    com.xiaomi.g.a.n localn = new com.xiaomi.g.a.n();
    try
    {
      com.xiaomi.g.a.an.a(localn, paramArrayOfByte);
      if (localn.a == com.xiaomi.g.a.a.a)
      {
        com.xiaomi.g.a.r localr = new com.xiaomi.g.a.r();
        try
        {
          com.xiaomi.g.a.an.a(localr, localn.b());
          ap.a(localn.f, paramArrayOfByte);
          a(new ao(this, localn.f, localr.d, localr.g, paramArrayOfByte), 0L);
          return;
        }
        catch (org.apache.a.g localg1)
        {
          com.xiaomi.a.a.b.c.a(localg1);
          ap.a(this, paramString, paramArrayOfByte, 70000003, " data action error.");
          return;
        }
      }
      ap.a(this, paramString, paramArrayOfByte, 70000003, " registration action required.");
    }
    catch (org.apache.a.g localg2)
    {
      com.xiaomi.a.a.b.c.a(localg2);
      ap.a(this, paramString, paramArrayOfByte, 70000003, " data container error.");
      return;
    }
    com.xiaomi.a.a.b.c.a("register request with invalid payload");
  }
  
  public final boolean a()
  {
    return (com.xiaomi.a.a.d.d.a(this)) && (bb.a().c() > 0) && (!c());
  }
  
  public final void b(com.xiaomi.e.a parama)
  {
    com.xiaomi.a.a.b.c.c("begin to connect...");
  }
  
  public final void b(bd parambd)
  {
    if (parambd != null)
    {
      long l = ((Math.random() * 20.0D - 10.0D) + (parambd.n + 1) * 15) * 1000L;
      com.xiaomi.a.a.b.c.a("schedule rebind job in " + l / 1000L);
      a(new b(this, parambd), l);
    }
  }
  
  public final boolean b()
  {
    return (this.a != null) && (this.a.h());
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return new h(this);
  }
  
  public void onCreate()
  {
    super.onCreate();
    com.xiaomi.e.e.h.a = this;
    Object localObject1 = am.a(this);
    if (localObject1 != null) {
      com.xiaomi.a.a.c.a.a(((al)localObject1).g);
    }
    localObject1 = new bi(this);
    t.a().a((u)localObject1);
    Object localObject2 = t.a().a;
    if ((localObject2 != null) && (((com.xiaomi.push.b.b)localObject2).b)) {}
    for (boolean bool = ((com.xiaomi.push.b.b)localObject2).b;; bool = true)
    {
      if (bool) {
        com.xiaomi.d.f.a((com.xiaomi.d.g)localObject1);
      }
      com.xiaomi.d.f.a(this, new bj(), "0", "push", "2.2");
      this.e = new y(this, "xiaomi.com");
      this.e.g = true;
      this.h = new com.xiaomi.e.p(this, this.e);
      this.h.u = ("<iq to='" + "xiaomi.com" + "' id='0' chid='0' type='get'><ping xmlns='urn:xmpp:ping'>%1$s%2$s</ping></iq>");
      new com.xiaomi.d.b("mibind.chat.gslb.mi-idc.com");
      this.b = new ag();
      try
      {
        if (TextUtils.equals((String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class }).invoke(null, new Object[] { "sys.boot_completed" }), "1"))
        {
          localObject1 = new Intent();
          ((Intent)localObject1).setAction("com.xiaomi.push.service_started");
          sendBroadcast((Intent)localObject1);
        }
        this.j = new com.xiaomi.push.service.a.a(this);
        this.h.a(this);
        this.i = new a(this);
        this.f = new r(this);
        localObject1 = new ah();
        localObject2 = com.xiaomi.e.d.c.a();
        String str = com.xiaomi.e.d.c.a("all", "xm:chat");
        ((com.xiaomi.e.d.c)localObject2).a.put(str, localObject1);
        this.c = new ai("Connection Controller Thread");
        this.c.start();
        a(new z(this), 0L);
        localObject1 = bb.a();
        ((bb)localObject1).f();
        ((bb)localObject1).a(new aa(this));
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          com.xiaomi.a.a.b.c.a(localException);
        }
      }
    }
  }
  
  public void onDestroy()
  {
    ai localai = this.c;
    int m = 1;
    while (m < 15)
    {
      localai.a(m);
      m += 1;
    }
    a(new ae(this), 0L);
    a(new g(this), 0L);
    bb.a().f();
    bb.a().a(15);
    bb.a().d();
    this.h.f.remove(this);
    t.a().b();
    this.j.a();
    super.onDestroy();
    com.xiaomi.a.a.b.c.a("Service destroyed");
  }
  
  public void onStart(Intent arg1, int paramInt)
  {
    Object localObject4 = null;
    Object localObject1 = null;
    int i2 = 1;
    int m = 1;
    int n = 0;
    paramInt = 0;
    int i1 = 0;
    if (??? == null) {
      com.xiaomi.a.a.b.c.d("onStart() with intent NULL");
    }
    Object localObject6;
    for (;;)
    {
      localObject6 = bb.a();
      if ((??? != null) && (???.getAction() != null))
      {
        if ((!bh.d.equalsIgnoreCase(???.getAction())) && (!bh.j.equalsIgnoreCase(???.getAction()))) {
          break label409;
        }
        localObject1 = ???.getStringExtra(bh.q);
        if (!TextUtils.isEmpty(???.getStringExtra(bh.u))) {
          break;
        }
        com.xiaomi.a.a.b.c.a("security is empty. ignore.");
      }
      return;
      com.xiaomi.a.a.b.c.c(String.format("onStart() with intent.Action = %s, chid = %s", new Object[] { ???.getAction(), ???.getStringExtra(bh.q) }));
    }
    Object localObject5;
    if (localObject1 != null)
    {
      localObject4 = ???.getStringExtra(bh.p);
      localObject4 = bb.a().b((String)localObject1, (String)localObject4);
      if ((localObject4 == null) || (localObject1 == null)) {
        break label2559;
      }
      localObject5 = ???.getStringExtra(bh.B);
      localObject6 = ???.getStringExtra(bh.u);
      if ((TextUtils.isEmpty(((bd)localObject4).j)) || (TextUtils.equals((CharSequence)localObject5, ((bd)localObject4).j))) {
        break label2554;
      }
      com.xiaomi.a.a.b.c.a("session changed. old session=" + ((bd)localObject4).j + ", new session=" + (String)localObject5);
      paramInt = 1;
      label244:
      if (!((String)localObject6).equals(((bd)localObject4).i)) {
        com.xiaomi.a.a.b.c.a("security changed. ");
      }
    }
    label409:
    label725:
    label930:
    label1013:
    label1018:
    label1562:
    label2554:
    label2559:
    for (paramInt = 1;; paramInt = 0)
    {
      ??? = a((String)localObject1, ???);
      if (!com.xiaomi.a.a.d.d.a(this))
      {
        ag.a(this, ???, false, 2, null);
        return;
      }
      if (b())
      {
        if (???.m == bf.a)
        {
          a(new b(this, ???), 0L);
          return;
        }
        if (paramInt != 0)
        {
          a(new k(this, ???), 0L);
          return;
        }
        if (???.m == bf.b)
        {
          com.xiaomi.a.a.b.c.a(String.format("the client is binding. %1$s %2$s.", new Object[] { ???.h, ???.b }));
          return;
        }
        if (???.m != bf.c) {
          break;
        }
        ag.a(this, ???, true, 0, null);
        return;
      }
      a(true);
      return;
      com.xiaomi.a.a.b.c.d("channel id is empty, do nothing!");
      return;
      if (bh.i.equalsIgnoreCase(???.getAction()))
      {
        localObject1 = ???.getStringExtra(bh.y);
        localObject4 = ???.getStringExtra(bh.q);
        ??? = ???.getStringExtra(bh.p);
        if (TextUtils.isEmpty((CharSequence)localObject4))
        {
          ??? = ((bb)localObject6).b((String)localObject1).iterator();
          while (???.hasNext()) {
            a((String)???.next(), 2);
          }
          break;
        }
        if (TextUtils.isEmpty(???))
        {
          a((String)localObject4, 2);
          return;
        }
        a((String)localObject4, ???, 2, null, null);
        return;
      }
      boolean bool;
      if (bh.e.equalsIgnoreCase(???.getAction()))
      {
        localObject1 = ???.getStringExtra(bh.y);
        localObject4 = ???.getStringExtra(bh.B);
        localObject5 = ???.getBundleExtra("ext_packet");
        bool = ???.getBooleanExtra("ext_encrypt", true);
        ??? = a(new com.xiaomi.e.c.d((Bundle)localObject5), (String)localObject1, (String)localObject4, bool);
        if (??? == null) {
          break;
        }
        a(new s(this, ???), 0L);
        return;
      }
      if (bh.g.equalsIgnoreCase(???.getAction()))
      {
        localObject1 = ???.getStringExtra(bh.y);
        localObject4 = ???.getStringExtra(bh.B);
        localObject5 = ???.getParcelableArrayExtra("ext_packets");
        localObject6 = new com.xiaomi.e.c.d[localObject5.length];
        bool = ???.getBooleanExtra("ext_encrypt", true);
        paramInt = i1;
        for (;;)
        {
          if (paramInt >= localObject5.length) {
            break label725;
          }
          localObject6[paramInt] = new com.xiaomi.e.c.d((Bundle)localObject5[paramInt]);
          localObject6[paramInt] = ((com.xiaomi.e.c.d)a(localObject6[paramInt], (String)localObject1, (String)localObject4, bool));
          if (localObject6[paramInt] == null) {
            break;
          }
          paramInt += 1;
        }
        a(new n(this, (com.xiaomi.e.c.d[])localObject6), 0L);
        return;
      }
      if (bh.f.equalsIgnoreCase(???.getAction()))
      {
        localObject1 = ???.getStringExtra(bh.y);
        localObject4 = ???.getStringExtra(bh.B);
        ??? = new com.xiaomi.e.c.b(???.getBundleExtra("ext_packet"));
        if (a(???, (String)localObject1, (String)localObject4, false) == null) {
          break;
        }
        a(new s(this, ???), 0L);
        return;
      }
      if (bh.h.equalsIgnoreCase(???.getAction()))
      {
        localObject1 = ???.getStringExtra(bh.y);
        localObject4 = ???.getStringExtra(bh.B);
        ??? = new com.xiaomi.e.c.g(???.getBundleExtra("ext_packet"));
        if (a(???, (String)localObject1, (String)localObject4, false) == null) {
          break;
        }
        a(new s(this, ???), 0L);
        return;
      }
      if (("com.xiaomi.push.timer".equalsIgnoreCase(???.getAction())) || ("com.xiaomi.push.check_alive".equalsIgnoreCase(???.getAction())))
      {
        if ("com.xiaomi.push.timer".equalsIgnoreCase(???.getAction()))
        {
          com.xiaomi.a.a.b.c.a("Service called on timer");
          localObject1 = this.c;
          if ((!((ai)localObject1).b) || (System.currentTimeMillis() - ((ai)localObject1).a <= 600000L)) {
            break label1013;
          }
        }
        for (paramInt = 1;; paramInt = 0)
        {
          if (paramInt == 0) {
            break label1018;
          }
          com.xiaomi.a.a.b.c.d("ERROR, the job controller is blocked.");
          bb.a().a(14);
          stopSelf();
          return;
          if (System.currentTimeMillis() - this.g < 30000L) {
            break;
          }
          this.g = System.currentTimeMillis();
          com.xiaomi.a.a.b.c.a("Service called on check alive.");
          break label930;
        }
        if (!b())
        {
          if ("com.xiaomi.push.timer".equalsIgnoreCase(???.getAction()))
          {
            a(false);
            return;
          }
          a(true);
          return;
        }
        ??? = this.a;
        if (System.currentTimeMillis() - ???.q < com.xiaomi.e.k.b()) {}
        for (paramInt = m; paramInt != 0; paramInt = 0)
        {
          a(new j(this), 0L);
          return;
        }
        a(new e(this, 17), 0L);
        return;
      }
      if ("com.xiaomi.push.network_status_changed".equalsIgnoreCase(???.getAction())) {
        for (;;)
        {
          try
          {
            ??? = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
            if (??? != null)
            {
              com.xiaomi.a.a.b.c.a("network changed, " + ???.toString());
              localObject1 = this.h;
            }
          }
          catch (Exception ???)
          {
            synchronized (((com.xiaomi.e.a)localObject1).e)
            {
              ((com.xiaomi.e.a)localObject1).e.clear();
              if (com.xiaomi.a.a.d.d.a(this))
              {
                if (!b())
                {
                  paramInt = n;
                  if (this.a != null)
                  {
                    paramInt = n;
                    if (this.a.g()) {
                      paramInt = 1;
                    }
                  }
                  if (paramInt == 0)
                  {
                    this.c.a(1);
                    a(new d(this), 0L);
                  }
                }
                com.xiaomi.push.a.b.a(this).a();
                d();
                return;
                ??? = ???;
                com.xiaomi.a.a.b.c.a(???);
                ??? = (Intent)localObject1;
                continue;
                com.xiaomi.a.a.b.c.a("network changed, no active network");
              }
            }
          }
          a(new e(this, 2), 0L);
        }
      }
      Object localObject3;
      if (bh.k.equals(???.getAction()))
      {
        localObject3 = ???.getStringExtra(bh.q);
        if (localObject3 != null) {
          a((String)localObject3, ???);
        }
        a(new l(this), 0L);
        return;
      }
      Object localObject7;
      if (bh.l.equals(???.getAction()))
      {
        localObject3 = ???.getStringExtra(bh.y);
        localObject7 = ((bb)localObject6).b((String)localObject3);
        if (((List)localObject7).isEmpty())
        {
          com.xiaomi.a.a.b.c.a("open channel should be called first before update info, pkg=" + (String)localObject3);
          return;
        }
        localObject5 = ???.getStringExtra(bh.q);
        String str4 = ???.getStringExtra(bh.p);
        localObject3 = localObject5;
        if (TextUtils.isEmpty((CharSequence)localObject5)) {
          localObject3 = (String)((List)localObject7).get(0);
        }
        if (TextUtils.isEmpty(str4))
        {
          localObject5 = ((bb)localObject6).c((String)localObject3);
          localObject3 = localObject4;
          if (localObject5 != null)
          {
            localObject3 = localObject4;
            if (((Collection)localObject5).isEmpty()) {}
          }
        }
        for (localObject3 = (bd)((Collection)localObject5).iterator().next();; localObject3 = ((bb)localObject6).b((String)localObject3, str4))
        {
          if (localObject3 == null) {
            break label1562;
          }
          if (???.hasExtra(bh.w)) {
            ((bd)localObject3).f = ???.getStringExtra(bh.w);
          }
          if (!???.hasExtra(bh.x)) {
            break;
          }
          ((bd)localObject3).g = ???.getStringExtra(bh.x);
          return;
        }
        break;
      }
      if ("com.xiaomi.mipush.REGISTER_APP".equals(???.getAction()))
      {
        o.a(getApplicationContext());
        if (("@SHIP.TO.2A2FE0D7@".contains("xmsf")) || ("@SHIP.TO.2A2FE0D7@".contains("xiaomi")) || ("@SHIP.TO.2A2FE0D7@".contains("miui"))) {}
        for (paramInt = 1; (paramInt != 0) && (o.a(getApplicationContext()).a() == 0); paramInt = 0)
        {
          com.xiaomi.a.a.b.c.a("register without being provisioned. " + ???.getStringExtra("mipush_app_package"));
          return;
        }
        localObject3 = ???.getByteArrayExtra("mipush_payload");
        localObject4 = ???.getStringExtra("mipush_app_package");
        bool = ???.getBooleanExtra("mipush_env_chanage", false);
        paramInt = ???.getIntExtra("mipush_env_type", 1);
        localObject5 = an.a(this);
        synchronized (((an)localObject5).b)
        {
          if (((an)localObject5).b.contains(localObject4))
          {
            ((an)localObject5).b.remove(localObject4);
            localObject6 = com.xiaomi.a.a.f.d.a(((an)localObject5).b, ",");
            ((an)localObject5).a.getSharedPreferences("mipush_app_info", 0).edit().putString("unregistered_pkg_names", (String)localObject6).commit();
          }
          if ((bool) && (!"com.xiaomi.xmsf".equals(getPackageName())))
          {
            a(new ab(this, paramInt, (byte[])localObject3, (String)localObject4), 0L);
            return;
          }
        }
        a(arrayOfByte, (String)localObject4);
        return;
      }
      if (("com.xiaomi.mipush.SEND_MESSAGE".equals(???.getAction())) || ("com.xiaomi.mipush.UNREGISTER_APP".equals(???.getAction())))
      {
        String str1 = ???.getStringExtra("mipush_app_package");
        localObject4 = ???.getByteArrayExtra("mipush_payload");
        bool = ???.getBooleanExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
        localObject5 = bb.a().c("5");
        if ("com.xiaomi.mipush.UNREGISTER_APP".equals(???.getAction())) {
          localObject6 = an.a(this);
        }
        synchronized (((an)localObject6).b)
        {
          if (!((an)localObject6).b.contains(str1))
          {
            ((an)localObject6).b.add(str1);
            localObject7 = com.xiaomi.a.a.f.d.a(((an)localObject6).b, ",");
            ((an)localObject6).a.getSharedPreferences("mipush_app_info", 0).edit().putString("unregistered_pkg_names", (String)localObject7).commit();
          }
          if (((Collection)localObject5).isEmpty())
          {
            if (!bool) {
              break;
            }
            ap.b(str1, (byte[])localObject4);
            return;
          }
        }
        if (((bd)((Collection)localObject5).iterator().next()).m != bf.c)
        {
          if (!bool) {
            break;
          }
          ap.b(str2, (byte[])localObject4);
          return;
        }
        a(new ac(this, str2, (byte[])localObject4), 0L);
        return;
      }
      if (p.a.equals(???.getAction()))
      {
        ??? = ???.getStringExtra("uninstall_pkg_name");
        if ((??? == null) || (TextUtils.isEmpty(???.trim()))) {
          break;
        }
      }
      try
      {
        getPackageManager().getPackageInfo(???, 256);
        paramInt = 0;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;)
        {
          String str3;
          paramInt = i2;
        }
      }
      if (("com.xiaomi.channel".equals(???)) && (!bb.a().c("1").isEmpty()) && (paramInt != 0))
      {
        a("1", 0);
        com.xiaomi.a.a.b.c.a("close the miliao channel as the app is uninstalled.");
        return;
      }
      localObject4 = getSharedPreferences("pref_registered_pkg_names", 0);
      str3 = ((SharedPreferences)localObject4).getString(???, null);
      if ((TextUtils.isEmpty(str3)) || (paramInt == 0)) {
        break;
      }
      localObject4 = ((SharedPreferences)localObject4).edit();
      ((SharedPreferences.Editor)localObject4).remove(???);
      ((SharedPreferences.Editor)localObject4).commit();
      if (ax.d(this, ???)) {
        ax.c(this, ???);
      }
      ax.b(this, ???);
      if ((!b()) || (str3 == null)) {
        break;
      }
      try
      {
        a(a(???, str3));
        com.xiaomi.a.a.b.c.a("uninstall " + ??? + " msg sent");
        return;
      }
      catch (com.xiaomi.e.t ???)
      {
        com.xiaomi.a.a.b.c.d("Fail to send Message: " + ???.getMessage());
        a(10, ???);
        return;
      }
      if ("com.xiaomi.mipush.CLEAR_NOTIFICATION".equals(???.getAction()))
      {
        str3 = ???.getStringExtra(bh.y);
        paramInt = ???.getIntExtra(bh.z, 0);
        if (TextUtils.isEmpty(str3)) {
          break;
        }
        if (paramInt >= 0)
        {
          ax.a(this, str3, paramInt);
          return;
        }
        if (paramInt != -1) {
          break;
        }
        ax.b(this, str3);
        return;
      }
      if (!"com.xiaomi.mipush.SET_NOTIFICATION_TYPE".equals(???.getAction())) {
        break;
      }
      str3 = ???.getStringExtra(bh.y);
      localObject4 = ???.getStringExtra(bh.C);
      if (???.hasExtra(bh.A))
      {
        n = ???.getIntExtra(bh.A, 0);
        ??? = com.xiaomi.a.a.f.c.b(str3 + n);
        m = paramInt;
        paramInt = n;
      }
      while ((TextUtils.isEmpty(str3)) || (!TextUtils.equals((CharSequence)localObject4, ???)))
      {
        com.xiaomi.a.a.b.c.d("invalid notification for " + str3);
        return;
        ??? = com.xiaomi.a.a.f.c.b(str3);
        paramInt = 0;
        m = 1;
      }
      if (m != 0)
      {
        ax.c(this, str3);
        return;
      }
      ax.b(this, str3, paramInt);
      return;
      paramInt = 0;
      break label244;
    }
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    onStart(paramIntent, paramInt2);
    return d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\XMPushService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */