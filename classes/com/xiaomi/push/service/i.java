package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.e.o;
import com.xiaomi.e.p;
import com.xiaomi.f.j;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;

final class i
  extends f
{
  private com.xiaomi.e.c.e b = null;
  
  public i(XMPushService paramXMPushService, com.xiaomi.e.c.e parame)
  {
    super(8);
    this.b = parame;
  }
  
  public final void a()
  {
    Object localObject7 = XMPushService.h(this.a);
    Object localObject8 = this.b;
    Object localObject1;
    Object localObject4;
    if (!"5".equals(((com.xiaomi.e.c.e)localObject8).t))
    {
      localObject1 = ((com.xiaomi.e.c.e)localObject8).r;
      localObject4 = ((com.xiaomi.e.c.e)localObject8).t;
      if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!TextUtils.isEmpty((CharSequence)localObject4)))
      {
        localObject1 = bb.a().b((String)localObject4, (String)localObject1);
        if (localObject1 != null) {
          com.xiaomi.e.e.k.a(((a)localObject7).a, ((bd)localObject1).a, com.xiaomi.e.e.k.a(((com.xiaomi.e.c.e)localObject8).a()), true, System.currentTimeMillis());
        }
      }
    }
    Object localObject9;
    Object localObject10;
    if ((localObject8 instanceof com.xiaomi.e.n))
    {
      localObject9 = (com.xiaomi.e.n)localObject8;
      localObject10 = ((com.xiaomi.e.n)localObject9).a;
      localObject1 = ((com.xiaomi.e.c.e)localObject9).t;
      localObject4 = ((com.xiaomi.e.c.e)localObject9).r;
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject8 = bb.a().b((String)localObject1, (String)localObject4);
        if (localObject8 != null)
        {
          if (localObject10 != o.a) {
            break label186;
          }
          ((bd)localObject8).a(bf.c, 1, 0, null, null);
          com.xiaomi.a.a.b.c.a("SMACK: channel bind succeeded, chid=" + (String)localObject1);
        }
      }
    }
    label186:
    Object localObject11;
    boolean bool;
    label764:
    Object localObject2;
    Object localObject5;
    label1027:
    label1130:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return;
                  localObject9 = ((com.xiaomi.e.c.e)localObject9).v;
                  com.xiaomi.a.a.b.c.a("SMACK: channel bind failed, error=" + ((com.xiaomi.e.c.k)localObject9).b());
                } while (localObject9 == null);
                if ("auth".equals(((com.xiaomi.e.c.k)localObject9).a))
                {
                  if ("invalid-sig".equals(((com.xiaomi.e.c.k)localObject9).b))
                  {
                    com.xiaomi.a.a.b.c.a("SMACK: bind error invalid-sig token = " + ((bd)localObject8).c + " sec = " + ((bd)localObject8).i);
                    j.b(com.xiaomi.push.d.a.P.ac, null, 0);
                  }
                  ((bd)localObject8).a(bf.a, 1, 5, ((com.xiaomi.e.c.k)localObject9).b, ((com.xiaomi.e.c.k)localObject9).a);
                  bb.a().a((String)localObject1, (String)localObject4);
                }
                for (;;)
                {
                  com.xiaomi.a.a.b.c.a("SMACK: channel bind failed, chid=" + (String)localObject1 + " reason=" + ((com.xiaomi.e.c.k)localObject9).b);
                  return;
                  if ("cancel".equals(((com.xiaomi.e.c.k)localObject9).a))
                  {
                    ((bd)localObject8).a(bf.a, 1, 7, ((com.xiaomi.e.c.k)localObject9).b, ((com.xiaomi.e.c.k)localObject9).a);
                    bb.a().a((String)localObject1, (String)localObject4);
                  }
                  else if ("wait".equals(((com.xiaomi.e.c.k)localObject9).a))
                  {
                    ((a)localObject7).a.b((bd)localObject8);
                    ((bd)localObject8).a(bf.a, 1, 7, ((com.xiaomi.e.c.k)localObject9).b, ((com.xiaomi.e.c.k)localObject9).a);
                  }
                }
                localObject1 = ((com.xiaomi.e.c.e)localObject8).t;
                localObject4 = localObject1;
                if (TextUtils.isEmpty((CharSequence)localObject1))
                {
                  localObject4 = "1";
                  ((com.xiaomi.e.c.e)localObject8).t = "1";
                }
                if (!((String)localObject4).equals("0")) {
                  break;
                }
              } while (!(localObject8 instanceof com.xiaomi.e.c.b));
              localObject1 = (com.xiaomi.e.c.b)localObject8;
              if (("0".equals(((com.xiaomi.e.c.e)localObject8).d())) && ("result".equals(((com.xiaomi.e.c.b)localObject1).a.toString())))
              {
                localObject4 = ((a)localObject7).a.a;
                if ((localObject4 instanceof p)) {
                  ((p)localObject4).z = SystemClock.uptimeMillis();
                }
                j.b();
              }
              while (((com.xiaomi.e.c.b)localObject1).a("ps") != null) {
                try
                {
                  localObject1 = Base64.decode(((com.xiaomi.e.c.b)localObject1).a("ps"), 8);
                  localObject1 = (com.xiaomi.push.b.d)new com.xiaomi.push.b.d().a((byte[])localObject1, localObject1.length);
                  t.a().a((com.xiaomi.push.b.d)localObject1);
                  return;
                }
                catch (IllegalArgumentException localIllegalArgumentException1)
                {
                  com.xiaomi.a.a.b.c.a("invalid Base64 exception + " + localIllegalArgumentException1.getMessage());
                  return;
                  if ("command".equals(localIllegalArgumentException1.a.toString()))
                  {
                    localObject9 = ((com.xiaomi.e.c.e)localObject8).b("u");
                    if (localObject9 != null)
                    {
                      localObject4 = ((com.xiaomi.e.c.a)localObject9).a("url");
                      localObject8 = ((com.xiaomi.e.c.a)localObject9).a("startts");
                      localObject10 = ((com.xiaomi.e.c.a)localObject9).a("endts");
                      try
                      {
                        localObject8 = new Date(Long.parseLong((String)localObject8));
                        localObject10 = new Date(Long.parseLong((String)localObject10));
                        localObject11 = ((com.xiaomi.e.c.a)localObject9).a("token");
                        bool = "true".equals(((com.xiaomi.e.c.a)localObject9).a("force"));
                        localObject9 = ((com.xiaomi.e.c.a)localObject9).a("maxlen");
                        if (TextUtils.isEmpty((CharSequence)localObject9)) {
                          break label2400;
                        }
                        i = Integer.parseInt((String)localObject9) * 1024;
                        localObject7 = com.xiaomi.push.a.b.a(((a)localObject7).a);
                        ((com.xiaomi.push.a.b)localObject7).a.add(new com.xiaomi.push.a.f((com.xiaomi.push.a.b)localObject7, i, (Date)localObject10, (Date)localObject8, (String)localObject4, (String)localObject11, bool));
                        ((com.xiaomi.push.a.b)localObject7).a(0L);
                      }
                      catch (NumberFormatException localNumberFormatException)
                      {
                        com.xiaomi.a.a.b.c.a("parseLong fail " + localNumberFormatException.getMessage());
                      }
                    }
                  }
                }
                catch (com.google.a.a.d locald)
                {
                  com.xiaomi.a.a.b.c.a("invalid pb exception + " + locald.getMessage());
                  return;
                }
              }
              if (!(localObject8 instanceof com.xiaomi.e.c.b)) {
                break label1027;
              }
              localObject9 = ((com.xiaomi.e.c.e)localObject8).b("kick");
              if (localObject9 == null) {
                break label1130;
              }
              localObject8 = ((com.xiaomi.e.c.e)localObject8).r;
              localObject2 = ((com.xiaomi.e.c.a)localObject9).a("type");
              localObject9 = ((com.xiaomi.e.c.a)localObject9).a("reason");
              com.xiaomi.a.a.b.c.a("kicked by server, chid=" + localNumberFormatException + " userid=" + (String)localObject8 + " type=" + (String)localObject2 + " reason=" + (String)localObject9);
              if (!"wait".equals(localObject2)) {
                break;
              }
              localObject5 = bb.a().b(localNumberFormatException, (String)localObject8);
            } while (localObject5 == null);
            ((a)localObject7).a.b((bd)localObject5);
            ((bd)localObject5).a(bf.a, 3, 0, (String)localObject9, (String)localObject2);
            return;
            ((a)localObject7).a.a((String)localObject5, (String)localObject8, 3, (String)localObject9, (String)localObject2);
            bb.a().a((String)localObject5, (String)localObject8);
            return;
            if (!(localObject8 instanceof com.xiaomi.e.c.d)) {
              break;
            }
            localObject2 = (com.xiaomi.e.c.d)localObject8;
            if (!"redir".equals(((com.xiaomi.e.c.d)localObject2).a)) {
              break;
            }
            localObject2 = ((com.xiaomi.e.c.d)localObject2).b("hosts");
          } while (localObject2 == null);
          localObject2 = ((com.xiaomi.e.c.a)localObject2).a();
        } while (TextUtils.isEmpty((CharSequence)localObject2));
        localObject2 = ((String)localObject2).split(";");
        localObject5 = com.xiaomi.d.f.a().a(com.xiaomi.e.c.b(), false);
      } while ((localObject5 == null) || (localObject2.length <= 0));
      ((com.xiaomi.d.b)localObject5).a((String[])localObject2);
      ((a)localObject7).a.a(20, null);
      ((a)localObject7).a.a(true);
      return;
      localObject2 = ((a)localObject7).a.b;
      localObject7 = ((a)localObject7).a;
      localObject9 = ag.a((com.xiaomi.e.c.e)localObject8);
      if (localObject9 == null)
      {
        com.xiaomi.a.a.b.c.d("error while notify channel closed! channel " + (String)localObject5 + " not registered");
        return;
      }
      if (!"5".equalsIgnoreCase((String)localObject5)) {
        break label2246;
      }
      if (!(localObject8 instanceof com.xiaomi.e.c.d)) {
        break;
      }
      localObject2 = (com.xiaomi.e.c.d)localObject8;
      localObject5 = ((com.xiaomi.e.c.d)localObject2).b("s");
    } while (localObject5 == null);
    try
    {
      localObject9 = q.b(q.a(((bd)localObject9).i, ((com.xiaomi.e.c.d)localObject2).d()), ((com.xiaomi.e.c.a)localObject5).a());
      long l = com.xiaomi.e.e.k.a(((com.xiaomi.e.c.e)localObject8).a());
      localObject5 = Long.valueOf(System.currentTimeMillis());
      localObject8 = new com.xiaomi.g.a.n();
      try
      {
        com.xiaomi.g.a.an.a((org.apache.a.b)localObject8, (byte[])localObject9);
        if (TextUtils.isEmpty(((com.xiaomi.g.a.n)localObject8).f)) {
          break label2232;
        }
        localObject2 = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        ((Intent)localObject2).putExtra("mipush_payload", (byte[])localObject9);
        ((Intent)localObject2).putExtra("mrt", Long.toString(((Long)localObject5).longValue()));
        ((Intent)localObject2).setPackage(((com.xiaomi.g.a.n)localObject8).f);
        localObject11 = ax.a((com.xiaomi.g.a.n)localObject8);
        com.xiaomi.e.e.k.a((XMPushService)localObject7, (String)localObject11, l, true, System.currentTimeMillis());
        localObject10 = ((com.xiaomi.g.a.n)localObject8).h;
        if (localObject10 != null) {
          ((com.xiaomi.g.a.d)localObject10).a("mrt", Long.toString(((Long)localObject5).longValue()));
        }
        if ((com.xiaomi.g.a.a.e == ((com.xiaomi.g.a.n)localObject8).a) && (an.a((Context)localObject7).a(((com.xiaomi.g.a.n)localObject8).f)) && (!ax.b((com.xiaomi.g.a.n)localObject8)))
        {
          localObject2 = "";
          if (localObject10 != null) {
            localObject2 = ((com.xiaomi.g.a.d)localObject10).a;
          }
          com.xiaomi.a.a.b.c.a("Drop a message for unregistered, msgid=" + (String)localObject2);
          ((XMPushService)localObject7).a(new av((XMPushService)localObject7, (com.xiaomi.g.a.n)localObject8, ((com.xiaomi.g.a.n)localObject8).f), 0L);
          return;
        }
      }
      catch (org.apache.a.g localg)
      {
        com.xiaomi.a.a.b.c.a(localg);
        return;
      }
      if (com.xiaomi.g.a.a.e != ((com.xiaomi.g.a.n)localObject8).a) {
        break label1606;
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException2)
    {
      com.xiaomi.a.a.b.c.a(localIllegalArgumentException2);
      return;
    }
    if ((!TextUtils.equals(((XMPushService)localObject7).getPackageName(), "com.xiaomi.xmsf")) && (!TextUtils.equals(((XMPushService)localObject7).getPackageName(), ((com.xiaomi.g.a.n)localObject8).f)))
    {
      com.xiaomi.a.a.b.c.a("Receive a message with wrong package name, expect " + ((XMPushService)localObject7).getPackageName() + ", received " + ((com.xiaomi.g.a.n)localObject8).f);
      ((XMPushService)localObject7).a(new aw((XMPushService)localObject7, (com.xiaomi.g.a.n)localObject8, "unmatched_package", "package should be " + ((XMPushService)localObject7).getPackageName() + ", but got " + ((com.xiaomi.g.a.n)localObject8).f), 0L);
      return;
    }
    label1606:
    if ((localObject10 != null) && (((com.xiaomi.g.a.d)localObject10).a != null)) {
      com.xiaomi.a.a.b.c.a(String.format("receive a message, appid=%1$s, msgid= %2$s", new Object[] { ((com.xiaomi.g.a.n)localObject8).e, ((com.xiaomi.g.a.d)localObject10).a }));
    }
    if (((com.xiaomi.g.a.n)localObject8).h != null)
    {
      if (((com.xiaomi.g.a.n)localObject8).h.j == null) {
        break label2406;
      }
      label1670:
      while ((bool) && (aq.a((Context)localObject7, (String)localObject11)))
      {
        ((XMPushService)localObject7).a(new at((XMPushService)localObject7, (com.xiaomi.g.a.n)localObject8), 0L);
        return;
        bool = "1".equals(((com.xiaomi.g.a.n)localObject8).h.j.get("obslete_ads_message"));
      }
      if ((!"com.xiaomi.xmsf".equals(((com.xiaomi.g.a.n)localObject8).f)) || (((com.xiaomi.g.a.n)localObject8).h == null) || (((com.xiaomi.g.a.n)localObject8).h.j == null) || (!((com.xiaomi.g.a.n)localObject8).h.j.containsKey("miui_package_name"))) {
        break label2412;
      }
    }
    label1984:
    label2043:
    label2232:
    label2246:
    label2387:
    label2392:
    label2400:
    label2406:
    label2412:
    for (int i = 1;; i = 0)
    {
      if ((i != 0) && (!aq.a((Context)localObject7, (String)localObject11)) && (!((com.xiaomi.g.a.n)localObject8).h.j.containsKey("notify_effect")))
      {
        ((XMPushService)localObject7).a(new au((XMPushService)localObject7, (com.xiaomi.g.a.n)localObject8), 0L);
        return;
      }
      Object localObject3;
      if (((ax.b((com.xiaomi.g.a.n)localObject8)) && (aq.b((Context)localObject7, ((com.xiaomi.g.a.n)localObject8).f))) || (aq.a((Context)localObject7, localIllegalArgumentException2)))
      {
        if (com.xiaomi.g.a.a.a == ((com.xiaomi.g.a.n)localObject8).a)
        {
          localObject5 = ((com.xiaomi.g.a.n)localObject8).f;
          localObject11 = ((XMPushService)localObject7).getSharedPreferences("pref_registered_pkg_names", 0).edit();
          ((SharedPreferences.Editor)localObject11).putString((String)localObject5, ((com.xiaomi.g.a.n)localObject8).e);
          ((SharedPreferences.Editor)localObject11).commit();
        }
        if ((localObject10 == null) || (TextUtils.isEmpty(((com.xiaomi.g.a.d)localObject10).d)) || (TextUtils.isEmpty(((com.xiaomi.g.a.d)localObject10).e)) || (((com.xiaomi.g.a.d)localObject10).h == 1) || ((!ax.a(((com.xiaomi.g.a.d)localObject10).j)) && (ax.a((Context)localObject7, ((com.xiaomi.g.a.n)localObject8).f))))
        {
          ((XMPushService)localObject7).sendBroadcast(localIllegalArgumentException2, ag.a(((com.xiaomi.g.a.n)localObject8).f));
          if ((((com.xiaomi.g.a.n)localObject8).a == com.xiaomi.g.a.a.b) && (!"com.xiaomi.xmsf".equals(((XMPushService)localObject7).getPackageName()))) {
            ((XMPushService)localObject7).stopSelf();
          }
        }
        else
        {
          if (localObject10 == null) {
            break label2392;
          }
          if (((com.xiaomi.g.a.d)localObject10).j == null) {
            break label2387;
          }
          localObject3 = (String)((com.xiaomi.g.a.d)localObject10).j.get("jobkey");
          localObject5 = localObject3;
          if (TextUtils.isEmpty((CharSequence)localObject3)) {
            localObject5 = ((com.xiaomi.g.a.d)localObject10).a;
          }
        }
      }
      for (bool = ay.a((XMPushService)localObject7, ((com.xiaomi.g.a.n)localObject8).f, (String)localObject5);; bool = false)
      {
        if (bool) {
          com.xiaomi.a.a.b.c.a("drop a duplicate message, key=" + (String)localObject5);
        }
        for (;;)
        {
          ((XMPushService)localObject7).a(new as((XMPushService)localObject7, (com.xiaomi.g.a.n)localObject8), 0L);
          break label1984;
          break;
          ax.a((Context)localObject7, (com.xiaomi.g.a.n)localObject8, (byte[])localObject9);
          if (!ax.b((com.xiaomi.g.a.n)localObject8))
          {
            localObject3 = new Intent("com.xiaomi.mipush.MESSAGE_ARRIVED");
            ((Intent)localObject3).putExtra("mipush_payload", (byte[])localObject9);
            ((Intent)localObject3).setPackage(((com.xiaomi.g.a.n)localObject8).f);
            try
            {
              localObject5 = ((XMPushService)localObject7).getPackageManager().queryBroadcastReceivers((Intent)localObject3, 0);
              if ((localObject5 != null) && (!((List)localObject5).isEmpty())) {
                ((XMPushService)localObject7).sendBroadcast((Intent)localObject3, ag.a(((com.xiaomi.g.a.n)localObject8).f));
              }
            }
            catch (Exception localException)
            {
              ((XMPushService)localObject7).sendBroadcast((Intent)localObject3, ag.a(((com.xiaomi.g.a.n)localObject8).f));
            }
          }
        }
        ((XMPushService)localObject7).a(new ar((XMPushService)localObject7, (com.xiaomi.g.a.n)localObject8), 0L);
        return;
        com.xiaomi.a.a.b.c.a("receive a mipush message without package name");
        return;
        com.xiaomi.a.a.b.c.a("not a mipush message");
        return;
        localObject10 = ((bd)localObject9).a;
        if ((localObject8 instanceof com.xiaomi.e.c.d)) {
          localObject3 = "com.xiaomi.push.new_msg";
        }
        for (;;)
        {
          localObject11 = new Intent();
          ((Intent)localObject11).setAction((String)localObject3);
          ((Intent)localObject11).setPackage((String)localObject10);
          ((Intent)localObject11).putExtra("ext_chid", localException);
          ((Intent)localObject11).putExtra("ext_packet", ((com.xiaomi.e.c.e)localObject8).b());
          ((Intent)localObject11).putExtra(bh.B, ((bd)localObject9).j);
          ((Intent)localObject11).putExtra(bh.u, ((bd)localObject9).i);
          ag.a((Context)localObject7, (Intent)localObject11, (String)localObject10);
          return;
          if ((localObject8 instanceof com.xiaomi.e.c.b))
          {
            localObject3 = "com.xiaomi.push.new_iq";
          }
          else
          {
            if (!(localObject8 instanceof com.xiaomi.e.c.g)) {
              break;
            }
            localObject3 = "com.xiaomi.push.new_pres";
          }
        }
        com.xiaomi.a.a.b.c.d("unknown packet type, drop it");
        return;
        localObject3 = null;
        break label2043;
        Object localObject6 = null;
      }
      i = 0;
      break label764;
      bool = false;
      break label1670;
    }
  }
  
  public final String b()
  {
    return "receive a message.";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */