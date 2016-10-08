package com.tencent.bugly.crashreport;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.bugly.CrashModule;
import com.tencent.bugly.crashreport.common.info.a;
import com.tencent.bugly.crashreport.crash.BuglyBroadcastRecevier;
import com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.w;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class CrashReport
{
  private static Context a;
  
  public static void closeBugly()
  {
    if (!com.tencent.bugly.b.a) {
      Log.w(w.a, "Can not close bugly because bugly is disable.");
    }
    Object localObject;
    do
    {
      do
      {
        return;
        if (!CrashModule.hasInitialized())
        {
          Log.w(w.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
          return;
        }
      } while (a == null);
      localObject = BuglyBroadcastRecevier.getInstance();
      if (localObject != null) {
        ((BuglyBroadcastRecevier)localObject).unregist(a);
      }
      closeCrashReport();
      com.tencent.bugly.crashreport.biz.b.a(a);
      localObject = v.a();
    } while (localObject == null);
    ((v)localObject).b();
  }
  
  public static void closeCrashReport()
  {
    for (;;)
    {
      try
      {
        if (!com.tencent.bugly.b.a)
        {
          Log.w(w.a, "Can not close crash report because bugly is disable.");
          return;
        }
        if (!CrashModule.hasInitialized()) {
          Log.w(w.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
          com.tencent.bugly.crashreport.crash.c.a().d();
        }
      }
      finally {}
    }
  }
  
  public static void closeNativeReport()
  {
    for (;;)
    {
      try
      {
        if (!com.tencent.bugly.b.a)
        {
          Log.w(w.a, "Can not close native report because bugly is disable.");
          return;
        }
        if (!CrashModule.hasInitialized()) {
          Log.e(w.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
          com.tencent.bugly.crashreport.crash.c.a().f();
        }
      }
      finally {}
    }
  }
  
  public static void enableBugly(boolean paramBoolean)
  {
    com.tencent.bugly.b.a = paramBoolean;
  }
  
  public static Set<String> getAllUserDataKeys(Context paramContext)
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not get all keys of user data because bugly is disable.");
      return new HashSet();
    }
    if (paramContext == null)
    {
      Log.e(w.a, "getAllUserDataKeys args context should not be null");
      return new HashSet();
    }
    return a.a(paramContext).z();
  }
  
  /* Error */
  public static String getAppChannel()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 17	com/tencent/bugly/b:a	Z
    //   6: ifne +20 -> 26
    //   9: getstatic 22	com/tencent/bugly/proguard/w:a	Ljava/lang/String;
    //   12: ldc 110
    //   14: invokestatic 30	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   17: pop
    //   18: ldc 112
    //   20: astore_0
    //   21: ldc 2
    //   23: monitorexit
    //   24: aload_0
    //   25: areturn
    //   26: invokestatic 36	com/tencent/bugly/CrashModule:hasInitialized	()Z
    //   29: ifne +18 -> 47
    //   32: getstatic 22	com/tencent/bugly/proguard/w:a	Ljava/lang/String;
    //   35: ldc 38
    //   37: invokestatic 81	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   40: pop
    //   41: ldc 112
    //   43: astore_0
    //   44: goto -23 -> 21
    //   47: getstatic 40	com/tencent/bugly/crashreport/CrashReport:a	Landroid/content/Context;
    //   50: invokestatic 100	com/tencent/bugly/crashreport/common/info/a:a	(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;
    //   53: getfield 115	com/tencent/bugly/crashreport/common/info/a:j	Ljava/lang/String;
    //   56: astore_0
    //   57: goto -36 -> 21
    //   60: astore_0
    //   61: ldc 2
    //   63: monitorexit
    //   64: aload_0
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   20	37	0	str	String
    //   60	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	18	60	finally
    //   26	41	60	finally
    //   47	57	60	finally
  }
  
  /* Error */
  public static String getAppID()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 17	com/tencent/bugly/b:a	Z
    //   6: ifne +20 -> 26
    //   9: getstatic 22	com/tencent/bugly/proguard/w:a	Ljava/lang/String;
    //   12: ldc 118
    //   14: invokestatic 30	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   17: pop
    //   18: ldc 112
    //   20: astore_0
    //   21: ldc 2
    //   23: monitorexit
    //   24: aload_0
    //   25: areturn
    //   26: invokestatic 36	com/tencent/bugly/CrashModule:hasInitialized	()Z
    //   29: ifne +18 -> 47
    //   32: getstatic 22	com/tencent/bugly/proguard/w:a	Ljava/lang/String;
    //   35: ldc 38
    //   37: invokestatic 81	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   40: pop
    //   41: ldc 112
    //   43: astore_0
    //   44: goto -23 -> 21
    //   47: getstatic 40	com/tencent/bugly/crashreport/CrashReport:a	Landroid/content/Context;
    //   50: invokestatic 100	com/tencent/bugly/crashreport/common/info/a:a	(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;
    //   53: invokevirtual 120	com/tencent/bugly/crashreport/common/info/a:e	()Ljava/lang/String;
    //   56: astore_0
    //   57: goto -36 -> 21
    //   60: astore_0
    //   61: ldc 2
    //   63: monitorexit
    //   64: aload_0
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   20	37	0	str	String
    //   60	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	18	60	finally
    //   26	41	60	finally
    //   47	57	60	finally
  }
  
  /* Error */
  public static String getAppVer()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 17	com/tencent/bugly/b:a	Z
    //   6: ifne +20 -> 26
    //   9: getstatic 22	com/tencent/bugly/proguard/w:a	Ljava/lang/String;
    //   12: ldc 123
    //   14: invokestatic 30	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   17: pop
    //   18: ldc 112
    //   20: astore_0
    //   21: ldc 2
    //   23: monitorexit
    //   24: aload_0
    //   25: areturn
    //   26: invokestatic 36	com/tencent/bugly/CrashModule:hasInitialized	()Z
    //   29: ifne +18 -> 47
    //   32: getstatic 22	com/tencent/bugly/proguard/w:a	Ljava/lang/String;
    //   35: ldc 38
    //   37: invokestatic 81	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   40: pop
    //   41: ldc 112
    //   43: astore_0
    //   44: goto -23 -> 21
    //   47: getstatic 40	com/tencent/bugly/crashreport/CrashReport:a	Landroid/content/Context;
    //   50: invokestatic 100	com/tencent/bugly/crashreport/common/info/a:a	(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;
    //   53: getfield 126	com/tencent/bugly/crashreport/common/info/a:i	Ljava/lang/String;
    //   56: astore_0
    //   57: goto -36 -> 21
    //   60: astore_0
    //   61: ldc 2
    //   63: monitorexit
    //   64: aload_0
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   20	37	0	str	String
    //   60	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	18	60	finally
    //   26	41	60	finally
    //   47	57	60	finally
  }
  
  public static String getBuglyVersion(Context paramContext)
  {
    if (paramContext == null)
    {
      w.d("Please call with context.", new Object[0]);
      return "unknown";
    }
    a.a(paramContext);
    return a.b();
  }
  
  public static Map<String, String> getSdkExtraData()
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not get SDK extra data because bugly is disable.");
      return new HashMap();
    }
    return com.tencent.bugly.b.c;
  }
  
  public static String getUserData(Context paramContext, String paramString)
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not get user data because bugly is disable.");
      return "unknown";
    }
    if (paramContext == null)
    {
      Log.e(w.a, "getUserDataValue args context should not be null");
      return "unknown";
    }
    if ((paramString != null) && (paramString.trim().length() > 0)) {}
    for (int i = 0; i != 0; i = 1) {
      return null;
    }
    return a.a(paramContext).g(paramString);
  }
  
  public static int getUserDatasSize(Context paramContext)
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not get size of user data because bugly is disable.");
      return -1;
    }
    if (paramContext == null)
    {
      Log.e(w.a, "getUserDatasSize args context should not be null");
      return -1;
    }
    return a.a(paramContext).y();
  }
  
  /* Error */
  public static String getUserId()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 17	com/tencent/bugly/b:a	Z
    //   6: ifne +20 -> 26
    //   9: getstatic 22	com/tencent/bugly/proguard/w:a	Ljava/lang/String;
    //   12: ldc -78
    //   14: invokestatic 30	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   17: pop
    //   18: ldc 112
    //   20: astore_0
    //   21: ldc 2
    //   23: monitorexit
    //   24: aload_0
    //   25: areturn
    //   26: invokestatic 36	com/tencent/bugly/CrashModule:hasInitialized	()Z
    //   29: ifne +18 -> 47
    //   32: getstatic 22	com/tencent/bugly/proguard/w:a	Ljava/lang/String;
    //   35: ldc 38
    //   37: invokestatic 81	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   40: pop
    //   41: ldc 112
    //   43: astore_0
    //   44: goto -23 -> 21
    //   47: getstatic 40	com/tencent/bugly/crashreport/CrashReport:a	Landroid/content/Context;
    //   50: invokestatic 100	com/tencent/bugly/crashreport/common/info/a:a	(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;
    //   53: invokevirtual 180	com/tencent/bugly/crashreport/common/info/a:f	()Ljava/lang/String;
    //   56: astore_0
    //   57: goto -36 -> 21
    //   60: astore_0
    //   61: ldc 2
    //   63: monitorexit
    //   64: aload_0
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   20	37	0	str	String
    //   60	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	18	60	finally
    //   26	41	60	finally
    //   47	57	60	finally
  }
  
  public static int getUserSceneTagId(Context paramContext)
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not get user scene tag because bugly is disable.");
      return -1;
    }
    if (paramContext == null)
    {
      Log.e(w.a, "getUserSceneTagId args context should not be null");
      return -1;
    }
    return a.a(paramContext).B();
  }
  
  public static void initCrashReport(Context paramContext)
  {
    try
    {
      a = paramContext;
      com.tencent.bugly.b.a(CrashModule.getInstance());
      com.tencent.bugly.b.a(paramContext);
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public static void initCrashReport(Context paramContext, CrashReport.UserStrategy paramUserStrategy)
  {
    try
    {
      a = paramContext;
      com.tencent.bugly.b.a(CrashModule.getInstance());
      com.tencent.bugly.b.a(paramContext, paramUserStrategy);
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public static void initCrashReport(Context paramContext, String paramString, boolean paramBoolean)
  {
    try
    {
      initCrashReport(paramContext, paramString, paramBoolean, null);
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public static void initCrashReport(Context paramContext, String paramString, boolean paramBoolean, CrashReport.UserStrategy paramUserStrategy)
  {
    if (paramContext == null) {}
    for (;;)
    {
      return;
      try
      {
        a = paramContext;
        com.tencent.bugly.b.a(CrashModule.getInstance());
        com.tencent.bugly.b.a(paramContext, paramString, paramBoolean, paramUserStrategy);
      }
      finally {}
    }
  }
  
  public static boolean isLastSessionCrash()
  {
    boolean bool = false;
    for (;;)
    {
      try
      {
        if (!com.tencent.bugly.b.a)
        {
          Log.w(w.a, "The info 'isLastSessionCrash' is not accurate because bugly is disable.");
          return bool;
        }
        if (!CrashModule.hasInitialized()) {
          Log.e(w.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
          bool = com.tencent.bugly.crashreport.crash.c.a().b();
        }
      }
      finally {}
    }
  }
  
  public static void postCatchedException(Throwable paramThrowable)
  {
    try
    {
      postCatchedException(paramThrowable, false);
      return;
    }
    finally
    {
      paramThrowable = finally;
      throw paramThrowable;
    }
  }
  
  public static void postCatchedException(Throwable paramThrowable, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (!com.tencent.bugly.b.a)
        {
          Log.w(w.a, "Can not post crash caught because bugly is disable.");
          return;
        }
        if (!CrashModule.hasInitialized())
        {
          Log.e(w.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
          continue;
        }
        if (paramThrowable != null) {
          break label63;
        }
      }
      finally {}
      w.d("throwable is null, just return", new Object[0]);
      continue;
      label63:
      com.tencent.bugly.crashreport.crash.c.a().a(Thread.currentThread(), paramThrowable, false, null, null);
      if (paramBoolean)
      {
        w.a("clear user datas", new Object[0]);
        a.a(a).x();
      }
    }
  }
  
  private static void putSdkData(Context paramContext, String paramString1, String paramString2)
  {
    if (paramContext != null)
    {
      if ((paramString1 == null) || (paramString1.trim().length() <= 0)) {
        break label49;
      }
      i = 0;
      if (i == 0) {
        if ((paramString2 == null) || (paramString2.trim().length() <= 0)) {
          break label55;
        }
      }
    }
    label49:
    label55:
    for (int i = 0;; i = 1)
    {
      if (i == 0) {
        break label61;
      }
      return;
      i = 1;
      break;
    }
    label61:
    String str = paramString1.replace("[a-zA-Z[0-9]]+", "");
    paramString1 = str;
    if (str.length() > 100)
    {
      Log.w(w.a, String.format("putSdkData key length over limit %d, will be cutted.", new Object[] { Integer.valueOf(50) }));
      paramString1 = str.substring(0, 50);
    }
    str = paramString2;
    if (paramString2.length() > 500)
    {
      Log.w(w.a, String.format("putSdkData value length over limit %d, will be cutted!", new Object[] { Integer.valueOf(200) }));
      str = paramString2.substring(0, 200);
    }
    a.a(paramContext).b(paramString1, str);
    w.b(String.format("[param] putSdkData data: %s - %s", new Object[] { paramString1, str }), new Object[0]);
  }
  
  public static void putUserData(Context paramContext, String paramString1, String paramString2)
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not put user data because bugly is disable.");
      return;
    }
    if (paramContext == null)
    {
      Log.w(w.a, "putUserData args context should not be null");
      return;
    }
    if (paramString1 == null)
    {
      w.d("putUserData args key should not be null or empty", new Object[0]);
      return;
    }
    if (paramString2 == null)
    {
      w.d("putUserData args value should not be null", new Object[0]);
      return;
    }
    if (!paramString1.matches("[a-zA-Z[0-9]]+"))
    {
      w.d("putUserData args key should match [a-zA-Z[0-9]]+  {" + paramString1 + "}", new Object[0]);
      return;
    }
    String str = paramString2;
    if (paramString2.length() > 200)
    {
      w.d("user data value length over limit %d, it will be cutted!", new Object[] { Integer.valueOf(200) });
      str = paramString2.substring(0, 200);
    }
    paramString2 = a.a(paramContext);
    if (paramString2.z().contains(paramString1))
    {
      paramString2 = NativeCrashHandler.getInstance();
      if (paramString2 != null) {
        paramString2.putKeyValueToNative(paramString1, str);
      }
      a.a(paramContext).a(paramString1, str);
      w.c("replace KV %s %s", new Object[] { paramString1, str });
      return;
    }
    if (paramString2.y() >= 10)
    {
      w.d("user data size is over limit %d, it will be cutted!", new Object[] { Integer.valueOf(10) });
      return;
    }
    paramString2 = paramString1;
    if (paramString1.length() > 50)
    {
      w.d("user data key length over limit %d , will drop this new key %s", new Object[] { Integer.valueOf(50), paramString1 });
      paramString2 = paramString1.substring(0, 50);
    }
    paramString1 = NativeCrashHandler.getInstance();
    if (paramString1 != null) {
      paramString1.putKeyValueToNative(paramString2, str);
    }
    a.a(paramContext).a(paramString2, str);
    w.b("[param] set user data: %s - %s", new Object[] { paramString2, str });
  }
  
  public static String removeUserData(Context paramContext, String paramString)
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not remove user data because bugly is disable.");
      return "unknown";
    }
    if (paramContext == null)
    {
      Log.e(w.a, "removeUserData args context should not be null");
      return "unknown";
    }
    if ((paramString != null) && (paramString.trim().length() > 0)) {}
    for (int i = 0; i != 0; i = 1) {
      return null;
    }
    w.b("[param] remove user data: %s", new Object[] { paramString });
    return a.a(paramContext).f(paramString);
  }
  
  public static void setAppVersion(Context paramContext, String paramString)
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not set APP version because bugly is disable.");
      return;
    }
    if (paramContext == null)
    {
      Log.w(w.a, "setAppVersion args context should not be null");
      return;
    }
    if (paramString == null)
    {
      Log.w(w.a, "Version is null, will not set");
      return;
    }
    a.a(paramContext).i = paramString;
  }
  
  public static void setContext(Context paramContext)
  {
    try
    {
      a = paramContext;
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public static void setIsAppForeground(Context paramContext, boolean paramBoolean)
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not set 'isAppForeground' because bugly is disable.");
      return;
    }
    if (paramContext == null)
    {
      w.d("Context should not be null.", new Object[0]);
      return;
    }
    if (paramBoolean) {
      w.c("App is in foreground.", new Object[0]);
    }
    for (;;)
    {
      a.a(paramContext).n = paramBoolean;
      return;
      w.c("App is in background.", new Object[0]);
    }
  }
  
  public static void setIsDevelopmentDevice(Context paramContext, boolean paramBoolean)
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not set 'isDevelopmentDevice' because bugly is disable.");
      return;
    }
    if (paramContext == null)
    {
      w.d("Context should not be null.", new Object[0]);
      return;
    }
    if (paramBoolean) {
      w.c("This is a development device.", new Object[0]);
    }
    for (;;)
    {
      a.a(paramContext).x = paramBoolean;
      return;
      w.c("This is not a development device.", new Object[0]);
    }
  }
  
  public static boolean setJavascriptMonitor(WebView paramWebView, boolean paramBoolean)
  {
    return setJavascriptMonitor(paramWebView, paramBoolean, false);
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public static boolean setJavascriptMonitor(WebView paramWebView, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramWebView == null) {
      Log.w(w.a, "Webview is null.");
    }
    do
    {
      return false;
      if (!CrashModule.hasInitialized())
      {
        w.e("CrashReport has not been initialed! please to call method 'initCrashReport' first!", new Object[0]);
        return false;
      }
      w.a("Set Javascript exception monitor of webview.", new Object[0]);
      if (!com.tencent.bugly.b.a)
      {
        Log.w(w.a, "Can not set JavaScript monitor because bugly is disable.");
        return false;
      }
      w.c("URL of webview is %s", new Object[] { paramWebView.getUrl() });
    } while (paramWebView.getUrl() == null);
    if ((!paramBoolean2) && (Build.VERSION.SDK_INT < 19))
    {
      w.e("This interface is only available for Android 4.4 or later.", new Object[0]);
      return false;
    }
    Object localObject = paramWebView.getSettings();
    if (!((WebSettings)localObject).getJavaScriptEnabled())
    {
      w.a("Enable the javascript needed by webview monitor.", new Object[0]);
      ((WebSettings)localObject).setJavaScriptEnabled(true);
    }
    localObject = H5JavaScriptInterface.getInstance(paramWebView);
    if (localObject != null)
    {
      w.a("Add a secure javascript interface to the webview.", new Object[0]);
      paramWebView.addJavascriptInterface(localObject, "exceptionUploader");
    }
    if (paramBoolean1)
    {
      w.a("Inject bugly.js(v%s) to the webview.", new Object[] { com.tencent.bugly.crashreport.crash.h5.c.b() });
      localObject = com.tencent.bugly.crashreport.crash.h5.c.a();
      if (localObject == null)
      {
        w.e("Failed to inject Bugly.js.", new Object[] { com.tencent.bugly.crashreport.crash.h5.c.b() });
        return false;
      }
      paramWebView.loadUrl("javascript:" + (String)localObject);
    }
    return true;
  }
  
  public static void setSdkExtraData(Context paramContext, String paramString1, String paramString2)
  {
    int j = 0;
    for (;;)
    {
      try
      {
        if (!com.tencent.bugly.b.a)
        {
          Log.w(w.a, "Can not put SDK extra data because bugly is disable.");
          return;
        }
        if (paramContext == null) {
          continue;
        }
        if ((paramString1 != null) && (paramString1.trim().length() > 0))
        {
          i = 0;
          if (i != 0) {
            continue;
          }
          if ((paramString2 == null) || (paramString2.trim().length() <= 0)) {
            break label236;
          }
          i = j;
          if (i != 0) {
            continue;
          }
          Object localObject = com.tencent.bugly.b.c;
          if (localObject == null)
          {
            localObject = new HashMap();
            ((Map)localObject).put(paramString1, paramString2);
            if (((Map)localObject).size() > 0)
            {
              paramString2 = ((Map)localObject).entrySet().iterator();
              paramString1 = "";
              if (paramString2.hasNext())
              {
                Map.Entry localEntry = (Map.Entry)paramString2.next();
                paramString1 = paramString1 + "[" + (String)localEntry.getKey() + "," + (String)localEntry.getValue() + "] ";
                continue;
              }
              putSdkData(paramContext, "SDK_INFO", paramString1);
            }
            com.tencent.bugly.b.c = (Map)localObject;
            continue;
          }
          continue;
        }
      }
      finally {}
      int i = 1;
      continue;
      label236:
      i = 1;
    }
  }
  
  public static void setSessionIntervalMills(long paramLong)
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not set 'SessionIntervalMills' because bugly is disable.");
      return;
    }
    com.tencent.bugly.crashreport.biz.b.a(paramLong);
  }
  
  public static void setUserId(Context paramContext, String paramString)
  {
    if (!com.tencent.bugly.b.a) {
      Log.w(w.a, "Can not set user ID because bugly is disable.");
    }
    do
    {
      String str;
      do
      {
        return;
        if (paramContext == null)
        {
          Log.e(w.a, "Context should not be null when bugly has not been initialed!");
          return;
        }
        if (paramString == null)
        {
          w.d("userId should not be null", new Object[0]);
          return;
        }
        str = paramString;
        if (paramString.length() > 100)
        {
          str = paramString.substring(0, 100);
          w.d("userId %s length is over limit %d substring to %s", new Object[] { paramString, Integer.valueOf(100), str });
        }
      } while (str.equals(a.a(paramContext).f()));
      a.a(paramContext).b(str);
      w.b("[user] set userId : %s", new Object[] { str });
    } while (!CrashModule.hasInitialized());
    com.tencent.bugly.crashreport.biz.b.a();
  }
  
  public static void setUserId(String paramString)
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not set user ID because bugly is disable.");
      return;
    }
    if (!CrashModule.hasInitialized())
    {
      Log.e(w.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
      return;
    }
    setUserId(a, paramString);
  }
  
  public static void setUserSceneTag(Context paramContext, int paramInt)
  {
    if (!com.tencent.bugly.b.a)
    {
      Log.w(w.a, "Can not set tag caught because bugly is disable.");
      return;
    }
    if (paramContext == null)
    {
      Log.e(w.a, "setTag args context should not be null");
      return;
    }
    if (paramInt <= 0) {
      w.d("setTag args tagId should > 0", new Object[0]);
    }
    a.a(paramContext).a(paramInt);
    w.b("[param] set user scene tag: %d", new Object[] { Integer.valueOf(paramInt) });
  }
  
  public static void startCrashReport()
  {
    for (;;)
    {
      try
      {
        if (!com.tencent.bugly.b.a)
        {
          Log.w(w.a, "Can not start crash report because bugly is disable.");
          return;
        }
        if (!CrashModule.hasInitialized()) {
          Log.w(w.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
          com.tencent.bugly.crashreport.crash.c.a().c();
        }
      }
      finally {}
    }
  }
  
  public static void testANRCrash()
  {
    for (;;)
    {
      try
      {
        if (!com.tencent.bugly.b.a)
        {
          Log.w(w.a, "Can not test ANR crash because bugly is disable.");
          return;
        }
        if (!CrashModule.hasInitialized())
        {
          Log.e(w.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
          continue;
        }
        w.a("start to create a anr crash for test!", new Object[0]);
      }
      finally {}
      com.tencent.bugly.crashreport.crash.c.a().k();
    }
  }
  
  public static void testJavaCrash()
  {
    try
    {
      if (!com.tencent.bugly.b.a) {
        Log.w(w.a, "Can not test Java crash because bugly is disable.");
      }
      for (;;)
      {
        return;
        if (CrashModule.hasInitialized()) {
          break;
        }
        Log.e(w.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
      }
      throw new RuntimeException("This Crash create for Test! You can go to Bugly see more detail!");
    }
    finally {}
  }
  
  public static void testNativeCrash()
  {
    for (;;)
    {
      try
      {
        if (!com.tencent.bugly.b.a)
        {
          Log.w(w.a, "Can not test native crash because bugly is disable.");
          return;
        }
        if (!CrashModule.hasInitialized())
        {
          Log.e(w.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
          continue;
        }
        w.a("start to create a native crash for test!", new Object[0]);
      }
      finally {}
      com.tencent.bugly.crashreport.crash.c.a().j();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\CrashReport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */