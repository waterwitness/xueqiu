package com.xueqiu.android.base;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebView;
import com.d.a.a.b.c;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.h5.e;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.av;
import com.xueqiu.android.base.util.ax;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.WelcomeActivity;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.message.client.MessageService;
import java.util.concurrent.TimeUnit;

public final class b
{
  private static b d = new b();
  private static Application e;
  public Bundle a = null;
  public boolean b = false;
  public boolean c = false;
  private SharedPreferences f;
  private int g = -1;
  private int h = -1;
  private long i = 0L;
  
  public static b a()
  {
    if (e == null) {
      throw new RuntimeException("AppEngine has not init");
    }
    return d;
  }
  
  public static void a(Application paramApplication)
  {
    if (e == null)
    {
      e = paramApplication;
      return;
    }
    v.a("AppEngine already has create,there is something wrong ");
  }
  
  public static Context d()
  {
    return e;
  }
  
  public static Application e()
  {
    return e;
  }
  
  public static void g()
  {
    com.d.a.b.f localf = com.d.a.b.f.a();
    localf.c();
    localf.b.n.b();
    System.gc();
  }
  
  public static boolean i()
  {
    return DefaultPrefs.getInt(r.d(2131165664), 0, e) == 1;
  }
  
  public static com.d.a.b.f j()
  {
    com.d.a.b.f localf = com.d.a.b.f.a();
    if (!localf.b()) {
      m();
    }
    return localf;
  }
  
  public static void k()
  {
    if (MessageService.a)
    {
      a();
      Intent localIntent = new Intent(e, MessageService.class);
      a();
      e.stopService(localIntent);
      MessageService.a = false;
    }
  }
  
  public static void l()
  {
    if ((!MessageService.a) && (u.a().c))
    {
      a();
      Application localApplication = e;
      localApplication.startService(new Intent(localApplication, MessageService.class));
    }
  }
  
  private static void m()
  {
    com.d.a.b.f localf = com.d.a.b.f.a();
    if (!localf.b()) {}
    try
    {
      a();
      localf.a(com.xueqiu.android.base.util.n.a(e));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    if (this.c == paramBoolean) {
      return;
    }
    a();
    Object localObject1 = e;
    if (paramBoolean)
    {
      android.support.v4.content.r.a((Context)localObject1).a(new Intent("com.xueqiu.android.action.requestPrimary"));
      android.support.v4.content.r.a((Context)localObject1).a(new Intent("com.xueqiu.android.intent.action.USER_ONLINE"));
    }
    for (;;)
    {
      this.c = paramBoolean;
      q.a().b().a(paramBoolean);
      ax.a(paramBoolean);
      if (paramBoolean) {
        break;
      }
      this.i = System.currentTimeMillis();
      return;
      android.support.v4.content.r.a((Context)localObject1).a(new Intent("com.xueqiu.android.intent.action.USER_OFFLINE"));
      i.a().a(new SNBEvent(1000, 10));
      i.a().c();
    }
    long l1 = System.currentTimeMillis();
    int j;
    if (this.i == 0L) {
      j = 1;
    }
    long l2;
    Object localObject2;
    String str2;
    while ((j != 0) || (l1 - this.i > 300000L)) {
      if (!this.b)
      {
        throw new RuntimeException("must first init base components");
        j = 0;
      }
      else
      {
        l1 = UserLogonDataPrefs.getTokenExpiresIn();
        l2 = UserLogonDataPrefs.getFetchTokenTime();
        if (System.currentTimeMillis() - l2 > l1 - 172800000L) {
          u.a().b();
        }
        localObject1 = s.a();
        localObject2 = e;
        if (s.c)
        {
          String str1 = DefaultPrefs.getString("android_apk_version_config", "{}", (Context)localObject2);
          Object localObject3 = (JsonObject)m.a().fromJson(str1, JsonObject.class);
          l1 = DefaultPrefs.getLong("android_apk_version_cancel_time", 0L, (Context)localObject2);
          l2 = System.currentTimeMillis();
          g.a();
          str2 = f.a((Context)localObject2);
          str1 = com.xueqiu.android.base.util.r.a((JsonObject)localObject3, "apk_version", "");
          if ((TextUtils.isEmpty(str1)) || (str2.equals(str1)) || (l2 - l1 <= 259200000L) || (!com.xueqiu.android.base.util.i.d())) {
            break label596;
          }
          str2 = com.xueqiu.android.base.util.r.a((JsonObject)localObject3, "downloadUrl", null);
          localObject3 = com.xueqiu.android.base.util.r.a((JsonObject)localObject3, "changeLog", null);
          ((s)localObject1).a = str2.substring(str2.lastIndexOf("/") + 1, str2.length());
          ((s)localObject1).b = str1;
          ((s)localObject1).a((Context)localObject2, str2, (String)localObject3, false);
        }
        label395:
        l();
        new av().a();
        com.xueqiu.android.base.h5.f.a().a(false);
        ag.c.a(new rx.c.a()
        {
          public final void a()
          {
            i.a().c();
          }
        }, 1L, TimeUnit.MINUTES);
        localObject1 = n.b(e);
        if (((n)localObject1).c) {
          break label620;
        }
        ((n)localObject1).a(((n)localObject1).a, new n.1((n)localObject1));
      }
    }
    for (;;)
    {
      v.c("AppEngine", "executedTasksWhenAppInForeground");
      localObject1 = a.a();
      l1 = this.i;
      if (j != 0) {
        break label627;
      }
      l2 = System.currentTimeMillis();
      a.a();
      if (!a.d()) {
        break label627;
      }
      if (l2 - l1 <= 3600000L) {
        break;
      }
      v.a(a.a, "should show ad here");
      a();
      localObject2 = new Intent(e, WelcomeActivity.class);
      ((Intent)localObject2).putExtra("extra_just_show_welcome", true);
      ((Intent)localObject2).setFlags(268435456);
      a();
      e.startActivity((Intent)localObject2);
      new Handler(Looper.getMainLooper()).postDelayed(new a.1((a)localObject1), 5000L);
      return;
      label596:
      q.a().b().j(str2, new s.1((s)localObject1, (Context)localObject2));
      break label395;
      label620:
      ((n)localObject1).b();
    }
    label627:
    ((a)localObject1).b();
  }
  
  /* Error */
  public final void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 43	com/xueqiu/android/base/b:b	Z
    //   6: istore 5
    //   8: iload 5
    //   10: ifeq +6 -> 16
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: invokestatic 257	com/xueqiu/android/base/g:a	()Lcom/xueqiu/android/base/f;
    //   19: pop
    //   20: invokestatic 134	com/xueqiu/android/base/u:a	()Lcom/xueqiu/android/base/t;
    //   23: pop
    //   24: invokestatic 327	com/xueqiu/android/base/h5/f:a	()Lcom/xueqiu/android/base/h5/e;
    //   27: pop
    //   28: invokestatic 193	com/xueqiu/android/base/i:a	()Lcom/xueqiu/android/base/h;
    //   31: pop
    //   32: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   35: invokestatic 327	com/xueqiu/android/base/h5/f:a	()Lcom/xueqiu/android/base/h5/e;
    //   38: invokestatic 442	com/xueqiu/android/base/s:a	(Landroid/content/Context;Lcom/xueqiu/android/base/h5/e;)Lcom/xueqiu/android/base/s;
    //   41: pop
    //   42: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   45: invokestatic 257	com/xueqiu/android/base/g:a	()Lcom/xueqiu/android/base/f;
    //   48: invokestatic 445	com/xueqiu/android/base/q:a	(Landroid/content/Context;Lcom/xueqiu/android/base/f;)Lcom/xueqiu/android/base/q;
    //   51: pop
    //   52: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   55: invokestatic 172	com/xueqiu/android/base/q:a	()Lcom/xueqiu/android/base/q;
    //   58: invokestatic 450	com/xueqiu/android/base/c/b:a	(Landroid/content/Context;Lcom/xueqiu/android/base/q;)Lcom/xueqiu/android/base/c/b;
    //   61: pop
    //   62: invokestatic 257	com/xueqiu/android/base/g:a	()Lcom/xueqiu/android/base/f;
    //   65: invokevirtual 453	com/xueqiu/android/base/f:a	()Lcom/xueqiu/android/common/model/ClientInfo;
    //   68: astore_2
    //   69: aload_2
    //   70: invokevirtual 459	com/xueqiu/android/common/model/ClientInfo:getUmengKey	()Ljava/lang/String;
    //   73: astore_1
    //   74: aload_2
    //   75: invokevirtual 462	com/xueqiu/android/common/model/ClientInfo:getChannelId	()Ljava/lang/String;
    //   78: astore_2
    //   79: aload_1
    //   80: invokestatic 467	com/umeng/analytics/AnalyticsConfig:setAppkey	(Ljava/lang/String;)V
    //   83: aload_2
    //   84: invokestatic 470	com/umeng/analytics/AnalyticsConfig:setChannel	(Ljava/lang/String;)V
    //   87: aload_1
    //   88: invokestatic 473	com/umeng/update/UpdateConfig:setAppkey	(Ljava/lang/String;)V
    //   91: aload_2
    //   92: invokestatic 474	com/umeng/update/UpdateConfig:setChannel	(Ljava/lang/String;)V
    //   95: iconst_0
    //   96: invokestatic 479	com/umeng/analytics/MobclickAgent:openActivityDurationTrack	(Z)V
    //   99: iconst_0
    //   100: invokestatic 484	com/umeng/update/UmengUpdateAgent:setUpdateOnlyWifi	(Z)V
    //   103: iconst_0
    //   104: invokestatic 487	com/umeng/update/UmengUpdateAgent:setUpdateAutoPopup	(Z)V
    //   107: iconst_0
    //   108: invokestatic 490	com/umeng/update/UmengUpdateAgent:setUpdateCheckConfig	(Z)V
    //   111: new 492	com/tencent/bugly/crashreport/CrashReport$UserStrategy
    //   114: dup
    //   115: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   118: invokespecial 495	com/tencent/bugly/crashreport/CrashReport$UserStrategy:<init>	(Landroid/content/Context;)V
    //   121: astore_1
    //   122: aload_1
    //   123: ldc2_w 496
    //   126: invokevirtual 501	com/tencent/bugly/crashreport/CrashReport$UserStrategy:setAppReportDelay	(J)Lcom/tencent/bugly/BuglyStrategy;
    //   129: pop
    //   130: aload_1
    //   131: invokestatic 257	com/xueqiu/android/base/g:a	()Lcom/xueqiu/android/base/f;
    //   134: invokevirtual 453	com/xueqiu/android/base/f:a	()Lcom/xueqiu/android/common/model/ClientInfo;
    //   137: invokevirtual 462	com/xueqiu/android/common/model/ClientInfo:getChannelId	()Ljava/lang/String;
    //   140: invokevirtual 505	com/tencent/bugly/crashreport/CrashReport$UserStrategy:setAppChannel	(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;
    //   143: pop
    //   144: aload_1
    //   145: invokestatic 507	com/xueqiu/android/base/util/i:b	()Ljava/lang/String;
    //   148: invokevirtual 510	com/tencent/bugly/crashreport/CrashReport$UserStrategy:setDeviceID	(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;
    //   151: pop
    //   152: aload_1
    //   153: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   156: invokevirtual 516	android/app/Application:getPackageManager	()Landroid/content/pm/PackageManager;
    //   159: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   162: invokevirtual 519	android/app/Application:getPackageName	()Ljava/lang/String;
    //   165: iconst_0
    //   166: invokevirtual 525	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   169: getfield 530	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   172: invokevirtual 533	com/tencent/bugly/crashreport/CrashReport$UserStrategy:setAppVersion	(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;
    //   175: pop
    //   176: invokestatic 257	com/xueqiu/android/base/g:a	()Lcom/xueqiu/android/base/f;
    //   179: invokevirtual 453	com/xueqiu/android/base/f:a	()Lcom/xueqiu/android/common/model/ClientInfo;
    //   182: invokevirtual 536	com/xueqiu/android/common/model/ClientInfo:getBuglyAppId	()Ljava/lang/String;
    //   185: astore_2
    //   186: invokestatic 117	com/xueqiu/android/base/b:a	()Lcom/xueqiu/android/base/b;
    //   189: pop
    //   190: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   193: aload_2
    //   194: iconst_0
    //   195: aload_1
    //   196: invokestatic 542	com/tencent/bugly/crashreport/CrashReport:initCrashReport	(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V
    //   199: invokestatic 134	com/xueqiu/android/base/u:a	()Lcom/xueqiu/android/base/t;
    //   202: pop
    //   203: invokestatic 545	com/xueqiu/android/base/storage/prefs/UserLogonDataPrefs:getLogonUserId	()J
    //   206: invokestatic 549	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   209: invokestatic 552	com/tencent/bugly/crashreport/CrashReport:setUserId	(Ljava/lang/String;)V
    //   212: invokestatic 110	com/xueqiu/android/base/b:m	()V
    //   215: invokestatic 557	com/xueqiu/android/base/l:a	()Lcom/xueqiu/android/base/l;
    //   218: pop
    //   219: invokestatic 560	com/xueqiu/android/base/l:b	()Lcom/xueqiu/android/base/m;
    //   222: pop
    //   223: invokestatic 257	com/xueqiu/android/base/g:a	()Lcom/xueqiu/android/base/f;
    //   226: invokevirtual 453	com/xueqiu/android/base/f:a	()Lcom/xueqiu/android/common/model/ClientInfo;
    //   229: invokevirtual 563	com/xueqiu/android/common/model/ClientInfo:getFlurryApiKey	()Ljava/lang/String;
    //   232: astore_1
    //   233: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   236: aload_1
    //   237: invokestatic 569	com/flurry/android/FlurryAgent:init	(Landroid/content/Context;Ljava/lang/String;)V
    //   240: invokestatic 134	com/xueqiu/android/base/u:a	()Lcom/xueqiu/android/base/t;
    //   243: pop
    //   244: invokestatic 545	com/xueqiu/android/base/storage/prefs/UserLogonDataPrefs:getLogonUserId	()J
    //   247: invokestatic 549	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   250: invokestatic 574	com/xueqiu/android/base/util/w:a	(Ljava/lang/String;)Ljava/lang/String;
    //   253: invokestatic 575	com/flurry/android/FlurryAgent:setUserId	(Ljava/lang/String;)V
    //   256: invokestatic 577	com/xueqiu/android/base/util/i:f	()Z
    //   259: ifeq +113 -> 372
    //   262: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   265: ldc_w 579
    //   268: invokevirtual 583	android/app/Application:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   271: checkcast 585	android/app/ActivityManager
    //   274: invokevirtual 589	android/app/ActivityManager:getRunningAppProcesses	()Ljava/util/List;
    //   277: astore_2
    //   278: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   281: invokevirtual 519	android/app/Application:getPackageName	()Ljava/lang/String;
    //   284: astore_1
    //   285: invokestatic 594	android/os/Process:myPid	()I
    //   288: istore 4
    //   290: aload_2
    //   291: invokeinterface 600 1 0
    //   296: astore_2
    //   297: aload_2
    //   298: invokeinterface 605 1 0
    //   303: ifeq +387 -> 690
    //   306: aload_2
    //   307: invokeinterface 609 1 0
    //   312: checkcast 611	android/app/ActivityManager$RunningAppProcessInfo
    //   315: astore_3
    //   316: aload_3
    //   317: getfield 614	android/app/ActivityManager$RunningAppProcessInfo:pid	I
    //   320: iload 4
    //   322: if_icmpne -25 -> 297
    //   325: aload_1
    //   326: aload_3
    //   327: getfield 617	android/app/ActivityManager$RunningAppProcessInfo:processName	Ljava/lang/String;
    //   330: invokevirtual 283	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   333: ifeq -36 -> 297
    //   336: iconst_1
    //   337: istore 4
    //   339: iload 4
    //   341: ifeq +31 -> 372
    //   344: invokestatic 257	com/xueqiu/android/base/g:a	()Lcom/xueqiu/android/base/f;
    //   347: invokevirtual 453	com/xueqiu/android/base/f:a	()Lcom/xueqiu/android/common/model/ClientInfo;
    //   350: invokevirtual 620	com/xueqiu/android/common/model/ClientInfo:getMiId	()Ljava/lang/String;
    //   353: astore_1
    //   354: invokestatic 257	com/xueqiu/android/base/g:a	()Lcom/xueqiu/android/base/f;
    //   357: invokevirtual 453	com/xueqiu/android/base/f:a	()Lcom/xueqiu/android/common/model/ClientInfo;
    //   360: invokevirtual 623	com/xueqiu/android/common/model/ClientInfo:getMiKey	()Ljava/lang/String;
    //   363: astore_2
    //   364: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   367: aload_1
    //   368: aload_2
    //   369: invokestatic 628	com/xiaomi/mipush/sdk/b:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   372: invokestatic 117	com/xueqiu/android/base/b:a	()Lcom/xueqiu/android/base/b;
    //   375: pop
    //   376: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   379: new 630	com/xueqiu/android/base/p
    //   382: dup
    //   383: invokespecial 631	com/xueqiu/android/base/p:<init>	()V
    //   386: new 633	android/content/IntentFilter
    //   389: dup
    //   390: ldc_w 635
    //   393: invokespecial 636	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   396: invokevirtual 640	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   399: pop
    //   400: invokestatic 117	com/xueqiu/android/base/b:a	()Lcom/xueqiu/android/base/b;
    //   403: pop
    //   404: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   407: new 630	com/xueqiu/android/base/p
    //   410: dup
    //   411: invokespecial 631	com/xueqiu/android/base/p:<init>	()V
    //   414: new 633	android/content/IntentFilter
    //   417: dup
    //   418: ldc_w 642
    //   421: invokespecial 636	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   424: invokevirtual 640	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   427: pop
    //   428: invokestatic 117	com/xueqiu/android/base/b:a	()Lcom/xueqiu/android/base/b;
    //   431: pop
    //   432: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   435: new 630	com/xueqiu/android/base/p
    //   438: dup
    //   439: invokespecial 631	com/xueqiu/android/base/p:<init>	()V
    //   442: new 633	android/content/IntentFilter
    //   445: dup
    //   446: ldc_w 644
    //   449: invokespecial 636	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   452: invokevirtual 640	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   455: pop
    //   456: invokestatic 117	com/xueqiu/android/base/b:a	()Lcom/xueqiu/android/base/b;
    //   459: pop
    //   460: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   463: invokestatic 160	android/support/v4/content/r:a	(Landroid/content/Context;)Landroid/support/v4/content/r;
    //   466: astore_1
    //   467: aload_1
    //   468: new 646	com/xueqiu/android/trade/h
    //   471: dup
    //   472: invokespecial 647	com/xueqiu/android/trade/h:<init>	()V
    //   475: new 633	android/content/IntentFilter
    //   478: dup
    //   479: ldc_w 649
    //   482: invokespecial 636	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   485: invokevirtual 652	android/support/v4/content/r:a	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    //   488: aload_1
    //   489: new 6	com/xueqiu/android/base/b$1
    //   492: dup
    //   493: invokespecial 653	com/xueqiu/android/base/b$1:<init>	()V
    //   496: new 633	android/content/IntentFilter
    //   499: dup
    //   500: ldc_w 655
    //   503: invokespecial 636	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   506: invokevirtual 652	android/support/v4/content/r:a	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    //   509: invokestatic 117	com/xueqiu/android/base/b:a	()Lcom/xueqiu/android/base/b;
    //   512: pop
    //   513: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   516: new 630	com/xueqiu/android/base/p
    //   519: dup
    //   520: invokespecial 631	com/xueqiu/android/base/p:<init>	()V
    //   523: new 633	android/content/IntentFilter
    //   526: dup
    //   527: ldc_w 657
    //   530: invokespecial 636	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   533: invokevirtual 640	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   536: pop
    //   537: invokestatic 117	com/xueqiu/android/base/b:a	()Lcom/xueqiu/android/base/b;
    //   540: pop
    //   541: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   544: ldc_w 659
    //   547: invokevirtual 660	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   550: checkcast 662	android/app/AlarmManager
    //   553: astore_1
    //   554: new 119	android/content/Intent
    //   557: dup
    //   558: ldc_w 657
    //   561: invokespecial 163	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   564: astore_2
    //   565: invokestatic 117	com/xueqiu/android/base/b:a	()Lcom/xueqiu/android/base/b;
    //   568: pop
    //   569: aload_1
    //   570: iconst_2
    //   571: ldc2_w 663
    //   574: ldc2_w 663
    //   577: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   580: iconst_0
    //   581: aload_2
    //   582: ldc_w 665
    //   585: invokestatic 671	android/app/PendingIntent:getBroadcast	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   588: invokevirtual 675	android/app/AlarmManager:setInexactRepeating	(IJJLandroid/app/PendingIntent;)V
    //   591: invokestatic 117	com/xueqiu/android/base/b:a	()Lcom/xueqiu/android/base/b;
    //   594: pop
    //   595: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   598: invokestatic 681	android/webkit/CookieSyncManager:createInstance	(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    //   601: pop
    //   602: invokestatic 687	android/webkit/CookieManager:getInstance	()Landroid/webkit/CookieManager;
    //   605: iconst_0
    //   606: invokevirtual 690	android/webkit/CookieManager:setAcceptCookie	(Z)V
    //   609: getstatic 695	android/os/Build$VERSION:SDK_INT	I
    //   612: bipush 19
    //   614: if_icmplt +54 -> 668
    //   617: invokestatic 117	com/xueqiu/android/base/b:a	()Lcom/xueqiu/android/base/b;
    //   620: pop
    //   621: getstatic 50	com/xueqiu/android/base/b:e	Landroid/app/Application;
    //   624: invokevirtual 699	android/app/Application:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   627: astore_1
    //   628: aload_1
    //   629: getfield 704	android/content/pm/ApplicationInfo:flags	I
    //   632: iconst_2
    //   633: iand
    //   634: istore 4
    //   636: aload_1
    //   637: iload 4
    //   639: putfield 704	android/content/pm/ApplicationInfo:flags	I
    //   642: iload 4
    //   644: ifeq +24 -> 668
    //   647: new 405	android/os/Handler
    //   650: dup
    //   651: invokestatic 411	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   654: invokespecial 414	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   657: new 8	com/xueqiu/android/base/b$2
    //   660: dup
    //   661: invokespecial 705	com/xueqiu/android/base/b$2:<init>	()V
    //   664: invokevirtual 709	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   667: pop
    //   668: ldc_w 368
    //   671: ldc_w 711
    //   674: invokestatic 373	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   677: aload_0
    //   678: iconst_1
    //   679: putfield 43	com/xueqiu/android/base/b:b	Z
    //   682: goto -669 -> 13
    //   685: astore_1
    //   686: aload_0
    //   687: monitorexit
    //   688: aload_1
    //   689: athrow
    //   690: iconst_0
    //   691: istore 4
    //   693: goto -354 -> 339
    //   696: astore_1
    //   697: aload_1
    //   698: invokestatic 714	com/xueqiu/android/base/util/v:a	(Ljava/lang/Throwable;)V
    //   701: goto -33 -> 668
    //   704: astore_2
    //   705: goto -529 -> 176
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	708	0	this	b
    //   73	564	1	localObject1	Object
    //   685	4	1	localObject2	Object
    //   696	2	1	localThrowable	Throwable
    //   68	514	2	localObject3	Object
    //   704	1	2	localNameNotFoundException	android.content.pm.PackageManager.NameNotFoundException
    //   315	12	3	localRunningAppProcessInfo	android.app.ActivityManager.RunningAppProcessInfo
    //   288	404	4	j	int
    //   6	3	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	8	685	finally
    //   16	152	685	finally
    //   152	176	685	finally
    //   176	297	685	finally
    //   297	336	685	finally
    //   344	372	685	finally
    //   372	591	685	finally
    //   591	642	685	finally
    //   647	668	685	finally
    //   668	682	685	finally
    //   697	701	685	finally
    //   591	642	696	java/lang/Throwable
    //   647	668	696	java/lang/Throwable
    //   152	176	704	android/content/pm/PackageManager$NameNotFoundException
  }
  
  public final void c()
  {
    if ((!this.b) && (!this.b)) {
      b();
    }
  }
  
  public final SharedPreferences f()
  {
    if (this.f == null) {
      this.f = e.getSharedPreferences("logon_user_info_file_name", 0);
    }
    return this.f;
  }
  
  public final int h()
  {
    if (this.g < 0)
    {
      WindowManager localWindowManager = (WindowManager)e.getSystemService("window");
      Point localPoint = new Point();
      localWindowManager.getDefaultDisplay().getSize(localPoint);
      return localPoint.x;
    }
    return this.g;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */