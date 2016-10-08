package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.bugly.proguard.m;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.t;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class b
{
  public static boolean a = true;
  public static boolean b;
  public static Map<String, String> c = null;
  private static List<a> d = new ArrayList();
  private static o e;
  private static m f;
  private static boolean g;
  
  public static void a(Context paramContext)
  {
    try
    {
      a(paramContext, null);
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public static void a(Context paramContext, BuglyStrategy paramBuglyStrategy)
  {
    for (;;)
    {
      try
      {
        if (g)
        {
          w.d("[init] initial Multi-times, ignore this.", new Object[0]);
          return;
        }
        if (paramContext == null)
        {
          Log.w(w.a, "[init] context of init() is null, check it.");
          continue;
        }
        locala = com.tencent.bugly.crashreport.common.info.a.a(paramContext);
      }
      finally {}
      com.tencent.bugly.crashreport.common.info.a locala;
      if (a(locala))
      {
        a = false;
      }
      else
      {
        String str = locala.e();
        if (str == null) {
          Log.e(w.a, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set.");
        } else {
          a(paramContext, str, locala.t, paramBuglyStrategy);
        }
      }
    }
  }
  
  public static void a(Context paramContext, String paramString, boolean paramBoolean, BuglyStrategy paramBuglyStrategy)
  {
    for (;;)
    {
      try
      {
        if (g)
        {
          w.d("[init] initial Multi-times, ignore this.", new Object[0]);
          return;
        }
        if (paramContext == null)
        {
          Log.w(w.a, "[init] context of init() is null, check it.");
          continue;
        }
        if (paramString != null) {
          break;
        }
      }
      finally {}
      Log.e(w.a, "init arg 'crashReportAppID' should not be null!");
    }
    g = true;
    if (paramBoolean)
    {
      b = true;
      w.b = true;
      w.d("Bugly debug模式开启，请在发布时把isDebug关闭。 -- Running in debug model for 'isDebug' is enabled. Please disable it when you release.", new Object[0]);
      w.e("--------------------------------------------------------------------------------------------", new Object[0]);
      w.d("Bugly debug模式将有以下行为特性 -- The following list shows the behaviour of debug model: ", new Object[0]);
      w.d("[1] 输出详细的Bugly SDK的Log -- More detailed log of Bugly SDK will be output to logcat;", new Object[0]);
      w.d("[2] 每一条Crash都会被立即上报 -- Every crash caught by Bugly will be uploaded immediately.", new Object[0]);
      w.d("[3] 自定义日志将会在Logcat中输出 -- Custom log will be output to logcat.", new Object[0]);
      w.e("--------------------------------------------------------------------------------------------", new Object[0]);
      w.b("[init] bugly in debug mode.", new Object[0]);
    }
    for (;;)
    {
      label160:
      x.a(paramContext);
      com.tencent.bugly.crashreport.common.info.a locala = com.tencent.bugly.crashreport.common.info.a.a(paramContext);
      e = o.a(paramContext, d);
      t.a(paramContext);
      com.tencent.bugly.crashreport.common.strategy.a.a(paramContext, d);
      f = m.a(paramContext);
      if (a(locala))
      {
        a = false;
        break;
      }
      label851:
      label854:
      do
      {
        Object localObject = paramContext.getApplicationContext();
        if (localObject == null) {
          break label160;
        }
        paramContext = (Context)localObject;
        break label160;
        localObject = new StringBuilder();
        locala.getClass();
        w.a(" crash report start init!", new Object[0]);
        w.b("[init] bugly start init...", new Object[0]);
        locala.a(paramString);
        w.a("[param] setted APPID:%s", new Object[] { paramString });
        if (paramBuglyStrategy != null)
        {
          paramString = paramBuglyStrategy.getAppVersion();
          if (!TextUtils.isEmpty(paramString))
          {
            if (paramString.length() <= 100) {
              break label854;
            }
            localObject = paramString.substring(0, 100);
            w.d("appVersion %s length is over limit %d substring to %s", new Object[] { paramString, Integer.valueOf(100), localObject });
            paramString = (String)localObject;
          }
        }
        for (;;)
        {
          locala.i = paramString;
          w.a("setted APPVERSION:%s", new Object[] { paramBuglyStrategy.getAppVersion() });
          for (;;)
          {
            try
            {
              if (!paramBuglyStrategy.isReplaceOldChannel()) {
                continue;
              }
              paramString = paramBuglyStrategy.getAppChannel();
              if (!TextUtils.isEmpty(paramString))
              {
                if (paramString.length() <= 100) {
                  break label851;
                }
                localObject = paramString.substring(0, 100);
                w.d("appChannel %s length is over limit %d substring to %s", new Object[] { paramString, Integer.valueOf(100), localObject });
                paramString = (String)localObject;
                e.a(556, "app_channel", paramString.getBytes(), null, false);
                locala.j = paramString;
              }
            }
            catch (Exception paramString)
            {
              try
              {
                int i;
                int j;
                if (f.a(((a)d.get(i)).id)) {
                  ((a)d.get(i)).init(paramContext, paramBoolean, paramBuglyStrategy);
                }
                i += 1;
                continue;
                paramString = e.a(556, null, true);
                if (paramString == null) {
                  continue;
                }
                paramString = (byte[])paramString.get("app_channel");
                if (paramString == null) {
                  continue;
                }
                locala.j = new String(paramString);
                continue;
                paramString = paramString;
                if (!b) {
                  continue;
                }
                paramString.printStackTrace();
              }
              catch (Throwable paramString)
              {
                if (w.a(paramString)) {
                  continue;
                }
                paramString.printStackTrace();
                continue;
              }
              w.a("crash report inited!", new Object[0]);
              w.b("[init] bugly init finished.", new Object[0]);
            }
            w.a("setted APPCHANNEL:%s", new Object[] { locala.j });
            paramString = paramBuglyStrategy.getAppPackageName();
            if (!TextUtils.isEmpty(paramString))
            {
              if (paramString.length() > 100)
              {
                localObject = paramString.substring(0, 100);
                w.d("appPackageName %s length is over limit %d substring to %s", new Object[] { paramString, Integer.valueOf(100), localObject });
                paramString = (String)localObject;
                locala.c = paramString;
                w.a("setted PACKAGENAME:%s", new Object[] { paramBuglyStrategy.getAppPackageName() });
              }
            }
            else
            {
              paramString = paramBuglyStrategy.getDeviceID();
              if (paramString != null)
              {
                if (paramString.length() > 100)
                {
                  localObject = paramString.substring(0, 100);
                  w.d("deviceId %s length is over limit %d substring to %s", new Object[] { paramString, Integer.valueOf(100), localObject });
                  paramString = (String)localObject;
                  locala.c(paramString);
                  w.a("setted deviceId :%s", new Object[] { paramString });
                }
              }
              else
              {
                x.a = paramBuglyStrategy.isBuglyLogUpload();
                com.tencent.bugly.crashreport.biz.b.a(paramContext, paramBuglyStrategy);
                f.b();
                i = 0;
                j = d.size();
                if (i < j) {}
                break;
              }
              continue;
            }
          }
        }
      } while (paramContext != null);
    }
  }
  
  public static void a(a parama)
  {
    if (!d.contains(parama)) {
      d.add(parama);
    }
  }
  
  private static boolean a(com.tencent.bugly.crashreport.common.info.a parama)
  {
    List localList = parama.m;
    parama.getClass();
    return (localList != null) && (localList.contains("bugly"));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */