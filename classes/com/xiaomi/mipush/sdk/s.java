package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings.Global;
import android.provider.Settings.Secure;
import com.xiaomi.a.a.b.c;
import com.xiaomi.g.a.a;
import com.xiaomi.g.a.af;
import com.xiaomi.g.a.an;
import com.xiaomi.g.a.r;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.a.b;

public final class s
{
  private static s c;
  private static final ArrayList<t> e = new ArrayList();
  Context a;
  private boolean b = false;
  private String d;
  private Intent f = null;
  private Integer g = null;
  
  private s(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.d = null;
    this.b = g();
  }
  
  public static s a(Context paramContext)
  {
    if (c == null) {
      c = new s(paramContext);
    }
    return c;
  }
  
  private boolean g()
  {
    Object localObject = this.a.getPackageManager();
    try
    {
      localObject = ((PackageManager)localObject).getPackageInfo("com.xiaomi.xmsf", 4);
      if (localObject == null) {
        return false;
      }
      int i = ((PackageInfo)localObject).versionCode;
      if (i >= 105) {
        return true;
      }
    }
    catch (Exception localException) {}
    return false;
  }
  
  private String h()
  {
    try
    {
      if (this.a.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= 106) {
        return "com.xiaomi.push.service.XMPushService";
      }
    }
    catch (Exception localException) {}
    return "com.xiaomi.xmsf.push.service.XMPushService";
  }
  
  public final void a()
  {
    this.a.startService(b());
  }
  
  public final void a(af paramaf)
  {
    Intent localIntent = b();
    paramaf = an.a(o.a(this.a, paramaf, a.b));
    if (paramaf == null)
    {
      c.a("unregister fail, because msgBytes is null.");
      return;
    }
    localIntent.setAction("com.xiaomi.mipush.UNREGISTER_APP");
    localIntent.putExtra("mipush_app_id", j.a(this.a).b.a);
    localIntent.putExtra("mipush_payload", paramaf);
    this.a.startService(localIntent);
  }
  
  public final void a(r paramr, boolean paramBoolean)
  {
    this.f = null;
    Intent localIntent = b();
    paramr = an.a(o.a(this.a, paramr, a.a));
    if (paramr == null)
    {
      c.a("register fail, because msgBytes is null.");
      return;
    }
    localIntent.setAction("com.xiaomi.mipush.REGISTER_APP");
    localIntent.putExtra("mipush_app_id", j.a(this.a).b.a);
    localIntent.putExtra("mipush_payload", paramr);
    localIntent.putExtra("mipush_session", this.d);
    localIntent.putExtra("mipush_env_chanage", paramBoolean);
    localIntent.putExtra("mipush_env_type", j.a(this.a).b.j);
    if ((com.xiaomi.a.a.d.d.a(this.a)) && (f()))
    {
      this.a.startService(localIntent);
      return;
    }
    this.f = localIntent;
  }
  
  public final <T extends b<T, ?>> void a(T paramT, a parama, com.xiaomi.g.a.d paramd)
  {
    if (!parama.equals(a.a)) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramT, parama, bool, paramd);
      return;
    }
  }
  
  public final <T extends b<T, ?>> void a(T paramT, a parama, boolean paramBoolean, com.xiaomi.g.a.d paramd)
  {
    a(paramT, parama, paramBoolean, true, paramd, true);
  }
  
  public final <T extends b<T, ?>> void a(T paramT, a parama, boolean paramBoolean1, boolean paramBoolean2, com.xiaomi.g.a.d paramd, boolean paramBoolean3)
  {
    a(paramT, parama, paramBoolean1, paramBoolean2, paramd, paramBoolean3, this.a.getPackageName(), j.a(this.a).b.a);
  }
  
  public final <T extends b<T, ?>> void a(T arg1, a parama, boolean paramBoolean1, boolean paramBoolean2, com.xiaomi.g.a.d paramd, boolean paramBoolean3, String paramString1, String paramString2)
  {
    if (!j.a(this.a).b.a())
    {
      if (paramBoolean2)
      {
        paramd = new t();
        paramd.a = ???;
        paramd.b = parama;
        paramd.c = paramBoolean1;
        synchronized (e)
        {
          e.add(paramd);
          if (e.size() > 10) {
            e.remove(0);
          }
          return;
        }
      }
      c.a("drop the message before initialization.");
      return;
    }
    Intent localIntent = b();
    ??? = o.a(this.a, ???, parama, paramBoolean1, paramString1, paramString2);
    if (paramd != null) {
      ???.h = paramd;
    }
    ??? = an.a(???);
    if (??? == null)
    {
      c.a("send message fail, because msgBytes is null.");
      return;
    }
    localIntent.setAction("com.xiaomi.mipush.SEND_MESSAGE");
    localIntent.putExtra("mipush_payload", ???);
    localIntent.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", paramBoolean3);
    this.a.startService(localIntent);
  }
  
  final Intent b()
  {
    Intent localIntent = new Intent();
    String str = this.a.getPackageName();
    if ((c()) && (!"com.xiaomi.xmsf".equals(str)))
    {
      localIntent.setPackage("com.xiaomi.xmsf");
      localIntent.setClassName("com.xiaomi.xmsf", h());
      localIntent.putExtra("mipush_app_package", str);
    }
    for (;;)
    {
      try
      {
        this.a.getPackageManager().setComponentEnabledSetting(new ComponentName(this.a, "com.xiaomi.push.service.XMPushService"), 2, 1);
        return localIntent;
      }
      catch (Throwable localThrowable1) {}
      try
      {
        this.a.getPackageManager().setComponentEnabledSetting(new ComponentName(this.a, "com.xiaomi.push.service.XMPushService"), 1, 1);
        localIntent.setComponent(new ComponentName(this.a, "com.xiaomi.push.service.XMPushService"));
        localIntent.putExtra("mipush_app_package", str);
        return localIntent;
      }
      catch (Throwable localThrowable2) {}
    }
    return localIntent;
  }
  
  public final boolean c()
  {
    return (this.b) && (1 == j.a(this.a).b.j);
  }
  
  public final void d()
  {
    if (this.f != null)
    {
      this.a.startService(this.f);
      this.f = null;
    }
  }
  
  public final void e()
  {
    synchronized (e)
    {
      Iterator localIterator = e.iterator();
      if (localIterator.hasNext())
      {
        t localt = (t)localIterator.next();
        a(localt.a, localt.b, localt.c, false, null, true);
      }
    }
    e.clear();
  }
  
  public final boolean f()
  {
    if (c())
    {
      Object localObject = this.a.getPackageName();
      int i;
      u localu;
      ContentResolver localContentResolver;
      if ((((String)localObject).contains("miui")) || (((String)localObject).contains("xiaomi")))
      {
        i = 1;
        if (i == 0) {
          break label185;
        }
        if (this.g == null)
        {
          this.g = Integer.valueOf(com.xiaomi.push.service.o.a(this.a).a());
          if (this.g.intValue() == 0)
          {
            localu = new u(this, new Handler(Looper.getMainLooper()));
            localContentResolver = this.a.getContentResolver();
            com.xiaomi.push.service.o.a(this.a);
            if (Build.VERSION.SDK_INT < 17) {
              break label173;
            }
          }
        }
      }
      label173:
      for (localObject = Settings.Global.getUriFor("device_provisioned");; localObject = Settings.Secure.getUriFor("device_provisioned"))
      {
        localContentResolver.registerContentObserver((Uri)localObject, false, localu);
        if (this.g.intValue() == 0) {
          break label183;
        }
        return true;
        if ((this.a.getApplicationInfo().flags & 0x1) != 0)
        {
          i = 1;
          break;
        }
        i = 0;
        break;
      }
      label183:
      return false;
    }
    label185:
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */