package com.tencent.bugly.crashreport.biz;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.t;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.w;
import java.util.List;

public final class b
{
  public static a a;
  private static boolean b;
  private static int c = 10;
  private static long d = 300000L;
  private static long e = 30000L;
  private static long f = 0L;
  private static int g;
  private static long h;
  private static long i;
  private static long j = 0L;
  private static Application.ActivityLifecycleCallbacks k = null;
  private static Class<?> l = null;
  
  public static void a()
  {
    if (a != null) {
      a.a(2, false, 0L);
    }
  }
  
  public static void a(long paramLong)
  {
    long l1 = paramLong;
    if (paramLong < 0L) {
      l1 = com.tencent.bugly.crashreport.common.strategy.a.a().c().m;
    }
    f = l1;
  }
  
  public static void a(Context paramContext)
  {
    if ((!b) || (paramContext == null)) {
      return;
    }
    Application localApplication = null;
    if (Build.VERSION.SDK_INT >= 14)
    {
      if ((paramContext.getApplicationContext() instanceof Application)) {
        localApplication = (Application)paramContext.getApplicationContext();
      }
      if (localApplication == null) {}
    }
    try
    {
      if (k != null) {
        localApplication.unregisterActivityLifecycleCallbacks(k);
      }
      b = false;
      return;
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
  }
  
  public static void a(Context paramContext, final BuglyStrategy paramBuglyStrategy)
  {
    if (b) {
      return;
    }
    e = com.tencent.bugly.crashreport.common.strategy.a.a().c().m;
    c = com.tencent.bugly.crashreport.common.strategy.a.a().c().s;
    a = new a(paramContext);
    b = true;
    if (paramBuglyStrategy != null) {
      l = paramBuglyStrategy.getUserInfoActivity();
    }
    for (long l1 = paramBuglyStrategy.getAppReportDelay();; l1 = 0L)
    {
      if (l1 <= 0L)
      {
        c(paramContext, paramBuglyStrategy);
        return;
      }
      v.a().a(new Runnable()
      {
        public final void run()
        {
          b.b(b.this, paramBuglyStrategy);
        }
      }, l1);
      return;
    }
  }
  
  public static void a(StrategyBean paramStrategyBean)
  {
    if (paramStrategyBean == null) {}
    do
    {
      return;
      if (paramStrategyBean.m > 0L) {
        e = paramStrategyBean.m;
      }
      if (paramStrategyBean.s > 0) {
        c = paramStrategyBean.s;
      }
    } while (paramStrategyBean.t <= 0L);
    d = paramStrategyBean.t;
  }
  
  private static void c(Context paramContext, BuglyStrategy paramBuglyStrategy)
  {
    boolean bool2;
    boolean bool1;
    if (paramBuglyStrategy != null)
    {
      bool2 = paramBuglyStrategy.recordUserInfoOnceADay();
      bool1 = paramBuglyStrategy.isEnableUserInfo();
    }
    for (;;)
    {
      int m;
      Object localObject2;
      if (bool2)
      {
        paramBuglyStrategy = com.tencent.bugly.crashreport.common.info.a.a(paramContext);
        localObject1 = paramBuglyStrategy.d;
        localObject1 = a.a((String)localObject1);
        if (localObject1 != null)
        {
          m = 0;
          if (m < ((List)localObject1).size())
          {
            localObject2 = (UserInfoBean)((List)localObject1).get(m);
            if ((((UserInfoBean)localObject2).n.equals(paramBuglyStrategy.i)) && (((UserInfoBean)localObject2).b == 1))
            {
              long l1 = com.tencent.bugly.proguard.a.o();
              if (l1 <= 0L) {
                break label146;
              }
              if (((UserInfoBean)localObject2).e >= l1) {
                if (((UserInfoBean)localObject2).f <= 0L) {
                  a.b();
                }
              }
            }
          }
        }
        label146:
        for (m = 0;; m = 1)
        {
          if (m != 0) {
            break label152;
          }
          return;
          m += 1;
          break;
        }
        label152:
        bool1 = false;
      }
      Object localObject1 = com.tencent.bugly.crashreport.common.info.a.a();
      if (localObject1 != null)
      {
        int n = 0;
        localObject2 = Thread.currentThread().getStackTrace();
        int i1 = localObject2.length;
        paramBuglyStrategy = null;
        m = 0;
        while (m < i1)
        {
          Object localObject3 = localObject2[m];
          if (((StackTraceElement)localObject3).getMethodName().equals("onCreate")) {
            paramBuglyStrategy = ((StackTraceElement)localObject3).getClassName();
          }
          if (((StackTraceElement)localObject3).getClassName().equals("android.app.Activity")) {
            n = 1;
          }
          m += 1;
        }
        if (paramBuglyStrategy == null) {
          break label392;
        }
        if (n == 0) {
          break label386;
        }
        ((com.tencent.bugly.crashreport.common.info.a)localObject1).n = true;
      }
      for (;;)
      {
        ((com.tencent.bugly.crashreport.common.info.a)localObject1).o = paramBuglyStrategy;
        if (bool1)
        {
          paramBuglyStrategy = null;
          if (Build.VERSION.SDK_INT >= 14)
          {
            if ((paramContext.getApplicationContext() instanceof Application)) {
              paramBuglyStrategy = (Application)paramContext.getApplicationContext();
            }
            if (paramBuglyStrategy == null) {}
          }
        }
        try
        {
          if (k == null) {
            k = new Application.ActivityLifecycleCallbacks()
            {
              public final void onActivityCreated(Activity paramAnonymousActivity, Bundle paramAnonymousBundle) {}
              
              public final void onActivityDestroyed(Activity paramAnonymousActivity) {}
              
              public final void onActivityPaused(Activity paramAnonymousActivity)
              {
                Object localObject = "unknown";
                if (paramAnonymousActivity != null) {
                  localObject = paramAnonymousActivity.getClass().getName();
                }
                if ((b.b() != null) && (!b.b().getName().equals(localObject))) {}
                do
                {
                  return;
                  w.c(">>> %s onPaused <<<", new Object[] { localObject });
                  localObject = com.tencent.bugly.crashreport.common.info.a.a();
                } while (localObject == null);
                ((com.tencent.bugly.crashreport.common.info.a)localObject).n = false;
                ((com.tencent.bugly.crashreport.common.info.a)localObject).q = System.currentTimeMillis();
                ((com.tencent.bugly.crashreport.common.info.a)localObject).r = (((com.tencent.bugly.crashreport.common.info.a)localObject).q - ((com.tencent.bugly.crashreport.common.info.a)localObject).p);
                b.c(((com.tencent.bugly.crashreport.common.info.a)localObject).q);
                if (((com.tencent.bugly.crashreport.common.info.a)localObject).r < 0L) {
                  ((com.tencent.bugly.crashreport.common.info.a)localObject).r = 0L;
                }
                if (paramAnonymousActivity != null)
                {
                  ((com.tencent.bugly.crashreport.common.info.a)localObject).o = "background";
                  return;
                }
                ((com.tencent.bugly.crashreport.common.info.a)localObject).o = "unknown";
              }
              
              public final void onActivityResumed(Activity paramAnonymousActivity)
              {
                String str = "unknown";
                if (paramAnonymousActivity != null) {
                  str = paramAnonymousActivity.getClass().getName();
                }
                if ((b.b() != null) && (!b.b().getName().equals(str))) {}
                label185:
                do
                {
                  for (;;)
                  {
                    return;
                    w.c(">>> %s onResumed <<<", new Object[] { str });
                    paramAnonymousActivity = com.tencent.bugly.crashreport.common.info.a.a();
                    if (paramAnonymousActivity != null)
                    {
                      paramAnonymousActivity.n = true;
                      paramAnonymousActivity.o = str;
                      paramAnonymousActivity.p = System.currentTimeMillis();
                      paramAnonymousActivity.s = (paramAnonymousActivity.p - b.c());
                      long l2 = paramAnonymousActivity.p - b.d();
                      if (b.e() > 0L) {}
                      for (l1 = b.e(); l2 > l1; l1 = b.f())
                      {
                        paramAnonymousActivity.c();
                        b.g();
                        w.a("[session] launch app one times (app in background %d seconds and over %d seconds)", new Object[] { Long.valueOf(l2 / 1000L), Long.valueOf(b.f() / 1000L) });
                        if (b.h() % b.i() != 0) {
                          break label185;
                        }
                        b.a.a(4, true, 0L);
                        return;
                      }
                    }
                  }
                  b.a.a(4, false, 0L);
                  l1 = System.currentTimeMillis();
                } while (l1 - b.j() <= b.k());
                b.b(l1);
                w.a("add a timer to upload hot start user info", new Object[0]);
                paramAnonymousActivity = b.a;
                long l1 = b.k();
                v.a().a(new c(paramAnonymousActivity, null, true), l1);
              }
              
              public final void onActivitySaveInstanceState(Activity paramAnonymousActivity, Bundle paramAnonymousBundle) {}
              
              public final void onActivityStarted(Activity paramAnonymousActivity) {}
              
              public final void onActivityStopped(Activity paramAnonymousActivity) {}
            };
          }
          paramBuglyStrategy.registerActivityLifecycleCallbacks(k);
        }
        catch (Exception paramContext)
        {
          for (;;) {}
        }
        i = System.currentTimeMillis();
        a.a(1, true, 0L);
        t.a().a(1001, System.currentTimeMillis());
        w.a("[session] launch app, new start", new Object[0]);
        a.a();
        paramContext = a;
        v.a().a(new c(paramContext, null, true), 21600000L);
        return;
        label386:
        paramBuglyStrategy = "background";
        continue;
        label392:
        paramBuglyStrategy = "unknown";
      }
      bool1 = true;
      bool2 = false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\biz\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */