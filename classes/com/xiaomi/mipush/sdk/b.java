package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.xiaomi.g.a.af;
import com.xiaomi.g.a.p;
import com.xiaomi.g.a.r;
import com.xiaomi.push.service.bh;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class b
{
  private static boolean a = true;
  private static Context b;
  private static long c = System.currentTimeMillis();
  
  protected static String a()
  {
    try
    {
      String str = com.xiaomi.a.a.f.d.a(4) + c;
      c += 1L;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  static void a(Context paramContext, String paramString)
  {
    try
    {
      paramContext.getSharedPreferences("mipush_extra", 0).edit().putLong("alias_" + paramString, System.currentTimeMillis()).commit();
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  static void a(Context paramContext, String paramString1, com.xiaomi.g.a.d paramd, String paramString2)
  {
    p localp = new p();
    if (TextUtils.isEmpty(paramString2)) {
      if (!j.a(paramContext).a()) {}
    }
    for (localp.d = j.a(paramContext).b.a;; localp.d = paramString2)
    {
      localp.e = "bar:click";
      localp.c = paramString1;
      localp.a();
      s.a(paramContext).a(localp, com.xiaomi.g.a.a.i, false, paramd);
      return;
      com.xiaomi.a.a.b.c.d("do not report clicked message");
      return;
    }
  }
  
  static void a(Context paramContext, String paramString1, com.xiaomi.g.a.d paramd, String paramString2, String paramString3)
  {
    p localp = new p();
    if (TextUtils.isEmpty(paramString3))
    {
      com.xiaomi.a.a.b.c.d("do not report clicked message");
      return;
    }
    localp.d = paramString3;
    localp.e = "bar:click";
    localp.c = paramString1;
    localp.a();
    s.a(paramContext).a(localp, com.xiaomi.g.a.a.i, false, true, paramd, true, paramString2, paramString3);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    new Thread(new l(paramContext, paramString1, paramString2)).start();
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isEmpty(paramString2)) {
      localArrayList.add(paramString2);
    }
    if (("set-alias".equalsIgnoreCase(paramString1)) && (System.currentTimeMillis() - h(paramContext, paramString2) < 3600000L))
    {
      if (1 == g.a(paramContext))
      {
        PushMessageHandler.a(paramString3);
        return;
      }
      g.a(paramContext, g.a("set-alias", localArrayList, 0L, null, null));
      return;
    }
    if (("unset-alias".equalsIgnoreCase(paramString1)) && (h(paramContext, paramString2) < 0L))
    {
      com.xiaomi.a.a.b.c.a("Don't cancel alias for " + localArrayList + " is unseted");
      return;
    }
    if (("set-account".equalsIgnoreCase(paramString1)) && (System.currentTimeMillis() - i(paramContext, paramString2) < 3600000L))
    {
      if (1 == g.a(paramContext))
      {
        PushMessageHandler.a(paramString3);
        return;
      }
      g.a(paramContext, g.a("set-account", localArrayList, 0L, null, null));
      return;
    }
    if (("unset-account".equalsIgnoreCase(paramString1)) && (i(paramContext, paramString2) < 0L))
    {
      com.xiaomi.a.a.b.c.a("Don't cancel account for " + localArrayList + " is unseted");
      return;
    }
    a(paramContext, paramString1, localArrayList, paramString3);
  }
  
  private static void a(Context paramContext, String paramString1, ArrayList<String> paramArrayList, String paramString2)
  {
    if (TextUtils.isEmpty(j.a(paramContext).b.a)) {
      return;
    }
    com.xiaomi.g.a.j localj = new com.xiaomi.g.a.j();
    localj.c = a();
    localj.d = j.a(paramContext).b.a;
    localj.e = paramString1;
    paramString1 = paramArrayList.iterator();
    while (paramString1.hasNext())
    {
      paramArrayList = (String)paramString1.next();
      if (localj.f == null) {
        localj.f = new ArrayList();
      }
      localj.f.add(paramArrayList);
    }
    localj.h = paramString2;
    localj.g = paramContext.getPackageName();
    s.a(paramContext).a(localj, com.xiaomi.g.a.a.j, null);
  }
  
  private static void a(Object paramObject, String paramString)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("param " + paramString + " is not nullable");
    }
  }
  
  public static boolean a(Context paramContext)
  {
    return s.a(paramContext).c();
  }
  
  protected static void b(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("mipush_extra", 0);
    long l = paramContext.getLong("wake_up", 0L);
    paramContext = paramContext.edit();
    paramContext.clear();
    if (l > 0L) {
      paramContext.putLong("wake_up", l);
    }
    paramContext.commit();
  }
  
  static void b(Context paramContext, String paramString)
  {
    try
    {
      paramContext.getSharedPreferences("mipush_extra", 0).edit().remove("alias_" + paramString).commit();
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  @Deprecated
  public static void b(Context paramContext, String paramString1, String paramString2)
  {
    a(paramContext, "context");
    a(paramString1, "appID");
    a(paramString2, "appToken");
    for (;;)
    {
      try
      {
        localObject1 = paramContext.getApplicationContext();
        b = (Context)localObject1;
        if (localObject1 == null) {
          b = paramContext;
        }
        if (j.a(b).b.j == com.xiaomi.a.a.c.a.c()) {
          break label865;
        }
        bool = true;
        if (!bool)
        {
          localObject1 = b.getSharedPreferences("mipush_extra", 0);
          if (System.currentTimeMillis() - ((SharedPreferences)localObject1).getLong("last_reg_request", -1L) <= 5000L) {
            break label871;
          }
          i = 1;
          if (i == 0)
          {
            s.a(paramContext).a();
            com.xiaomi.a.a.b.c.a("Could not send  register message within 5s repeatly .");
            return;
          }
        }
        if ((bool) || (!j.a(b).b.a(paramString1, paramString2)) || (j.a(b).d())) {
          break label710;
        }
        if (1 == g.a(paramContext))
        {
          a(null, "callback");
          j.a(paramContext);
          s.a(paramContext).a();
          paramString1 = j.a(b);
          if (TextUtils.equals(j.a(paramString1.a, paramString1.a.getPackageName()), paramString1.b.e)) {
            break label877;
          }
          i = 1;
          if (i != 0)
          {
            paramString1 = new p();
            paramString1.d = j.a(paramContext).b.a;
            paramString1.e = "client_info_update";
            paramString1.c = a();
            paramString1.h = new HashMap();
            paramString1.h.put("app_version", j.a(b, b.getPackageName()));
            paramString2 = j.a(b).b.g;
            if (!TextUtils.isEmpty(paramString2)) {
              paramString1.h.put("deviceid", paramString2);
            }
            s.a(paramContext).a(paramString1, com.xiaomi.g.a.a.i, false, null);
          }
          if (!PreferenceManager.getDefaultSharedPreferences(b).getBoolean("update_devId", false))
          {
            new Thread(new m()).start();
            PreferenceManager.getDefaultSharedPreferences(b).edit().putBoolean("update_devId", true).commit();
          }
          if (s.a(b).c())
          {
            paramContext = b.getSharedPreferences("mipush_extra", 0);
            if (System.currentTimeMillis() - paramContext.getLong("last_pull_notification", -1L) <= 300000L) {
              break label883;
            }
            i = 1;
            if (i != 0)
            {
              paramContext = new p();
              paramContext.d = j.a(b).b.a;
              paramContext.e = "pull";
              paramContext.c = a();
              paramContext.a();
              s.a(b).a(paramContext, com.xiaomi.g.a.a.i, false, true, null, false);
              b.getSharedPreferences("mipush_extra", 0).edit().putLong("last_pull_notification", System.currentTimeMillis()).commit();
            }
          }
          if (a)
          {
            paramContext = b;
            paramString1 = paramContext.getSharedPreferences("mipush_extra", 0);
            if (System.currentTimeMillis() - 600000L >= paramString1.getLong("wake_up", 0L))
            {
              paramString1.edit().putLong("wake_up", System.currentTimeMillis()).commit();
              new Thread(new n(paramContext)).start();
            }
          }
          b.getSharedPreferences("mipush_extra", 0).edit().putLong("last_reg_request", System.currentTimeMillis()).commit();
          return;
        }
      }
      catch (Throwable paramContext)
      {
        com.xiaomi.a.a.b.c.a(paramContext);
        return;
      }
      paramString1 = new ArrayList();
      paramString1.add(j.a(paramContext).b.c);
      paramString1 = g.a("register", paramString1, 0L, null, null);
      g.a(b, paramString1);
      continue;
      label710:
      Object localObject1 = com.xiaomi.a.a.f.d.a(6);
      j.a(b).b();
      Object localObject2 = j.a(b);
      int i = com.xiaomi.a.a.c.a.c();
      ((j)localObject2).b.j = i;
      ((j)localObject2).c().edit().putInt("envType", i).commit();
      j.a(b).a(paramString1, paramString2, (String)localObject1);
      b(b);
      localObject2 = new r();
      ((r)localObject2).c = a();
      ((r)localObject2).d = paramString1;
      ((r)localObject2).g = paramString2;
      ((r)localObject2).f = paramContext.getPackageName();
      ((r)localObject2).h = ((String)localObject1);
      ((r)localObject2).e = j.a(paramContext, paramContext.getPackageName());
      s.a(b).a((r)localObject2, bool);
      continue;
      label865:
      boolean bool = false;
      continue;
      label871:
      i = 0;
      continue;
      label877:
      i = 0;
      continue;
      label883:
      i = 0;
    }
  }
  
  static void c(Context paramContext)
  {
    if (!j.a(paramContext).b.a()) {
      return;
    }
    String str1 = com.xiaomi.a.a.f.d.a(6);
    String str2 = j.a(paramContext).b.a;
    String str3 = j.a(paramContext).b.b;
    j.a(paramContext).b();
    j.a(paramContext).a(str2, str3, str1);
    r localr = new r();
    localr.c = a();
    localr.d = str2;
    localr.g = str3;
    localr.h = str1;
    localr.f = paramContext.getPackageName();
    localr.e = j.a(paramContext, paramContext.getPackageName());
    s.a(paramContext).a(localr, false);
  }
  
  static void c(Context paramContext, String paramString)
  {
    try
    {
      paramContext.getSharedPreferences("mipush_extra", 0).edit().putLong("account_" + paramString, System.currentTimeMillis()).commit();
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public static void c(Context paramContext, String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString1)) {
      a(paramContext, "set-account", paramString1, paramString2);
    }
  }
  
  public static void d(Context paramContext)
  {
    if (!j.a(paramContext).a()) {
      return;
    }
    Object localObject = new af();
    ((af)localObject).c = a();
    ((af)localObject).d = j.a(paramContext).b.a;
    ((af)localObject).e = j.a(paramContext).b.c;
    ((af)localObject).h = j.a(paramContext).b.b;
    ((af)localObject).g = paramContext.getPackageName();
    s.a(paramContext).a((af)localObject);
    PushMessageHandler.a();
    localObject = j.a(paramContext).b;
    ((k)localObject).h = false;
    ((k)localObject).k.c().edit().putBoolean("valid", ((k)localObject).h).commit();
    b(paramContext);
    localObject = s.a(paramContext);
    Intent localIntent = ((s)localObject).b();
    localIntent.setAction("com.xiaomi.mipush.SET_NOTIFICATION_TYPE");
    localIntent.putExtra(bh.y, ((s)localObject).a.getPackageName());
    localIntent.putExtra(bh.C, com.xiaomi.a.a.f.c.b(((s)localObject).a.getPackageName()));
    ((s)localObject).a.startService(localIntent);
    paramContext = s.a(paramContext);
    localObject = paramContext.b();
    ((Intent)localObject).setAction("com.xiaomi.mipush.CLEAR_NOTIFICATION");
    ((Intent)localObject).putExtra(bh.y, paramContext.a.getPackageName());
    ((Intent)localObject).putExtra(bh.z, -1);
    paramContext.a.startService((Intent)localObject);
  }
  
  static void d(Context paramContext, String paramString)
  {
    try
    {
      paramContext.getSharedPreferences("mipush_extra", 0).edit().remove("account_" + paramString).commit();
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public static void d(Context paramContext, String paramString1, String paramString2)
  {
    a(paramContext, "unset-account", paramString1, paramString2);
  }
  
  static void e(Context paramContext, String paramString)
  {
    try
    {
      paramContext.getSharedPreferences("mipush_extra", 0).edit().putLong("topic_" + paramString, System.currentTimeMillis()).commit();
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  static void e(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramContext.getSharedPreferences("mipush_extra", 0).edit().putString("accept_time", paramString1 + "," + paramString2).commit();
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  static void f(Context paramContext, String paramString)
  {
    try
    {
      paramContext.getSharedPreferences("mipush_extra", 0).edit().remove("topic_" + paramString).commit();
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public static long g(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences("mipush_extra", 0).getLong("topic_" + paramString, -1L);
  }
  
  public static long h(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences("mipush_extra", 0).getLong("alias_" + paramString, -1L);
  }
  
  private static long i(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences("mipush_extra", 0).getLong("account_" + paramString, -1L);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */