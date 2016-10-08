package com.umeng.update;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import u.a.a;

public class UpdateConfig
{
  public static final String a = "update";
  public static final String b = "2.4.2.20140520";
  public static final String c = "1.4";
  public static final String d = "com.umeng.update.net.DownloadingService";
  public static final String e = "com.umeng.update.UpdateDialogActivity";
  public static final String f = "android.permission.WRITE_EXTERNAL_STORAGE";
  public static final String g = "android.permission.ACCESS_NETWORK_STATE";
  public static final String h = "android.permission.INTERNET";
  public static final String i = "UMUpdateCheck";
  private static final String j = "umeng_update";
  private static final String k = "ignore";
  private static String l;
  private static String m;
  private static boolean n = true;
  private static boolean o = true;
  private static boolean p = false;
  private static boolean q = true;
  private static boolean r = false;
  private static boolean s = true;
  private static boolean t = true;
  private static int u = 0;
  
  public static String getAppkey(Context paramContext)
  {
    if (l == null) {
      l = a.e(paramContext);
    }
    return l;
  }
  
  public static String getChannel(Context paramContext)
  {
    if (m == null) {
      m = a.f(paramContext);
    }
    return m;
  }
  
  public static String getIgnoreMd5(Context paramContext)
  {
    String str = paramContext.getApplicationContext().getSharedPreferences("umeng_update", 0).getString("ignore", "");
    paramContext = str;
    if ("".equals(str)) {
      paramContext = null;
    }
    return paramContext;
  }
  
  public static int getStyle()
  {
    return u;
  }
  
  public static boolean isDeltaUpdate()
  {
    return q;
  }
  
  public static boolean isRichNotification()
  {
    return t;
  }
  
  public static boolean isSilentDownload()
  {
    return r;
  }
  
  public static boolean isUpdateAutoPopup()
  {
    return o;
  }
  
  public static boolean isUpdateCheck()
  {
    return s;
  }
  
  public static boolean isUpdateForce()
  {
    return p;
  }
  
  public static boolean isUpdateOnlyWifi()
  {
    return n;
  }
  
  public static void saveIgnoreMd5(Context paramContext, String paramString)
  {
    paramContext.getApplicationContext().getSharedPreferences("umeng_update", 0).edit().putString("ignore", paramString).commit();
  }
  
  public static void setAppkey(String paramString)
  {
    l = paramString;
  }
  
  public static void setChannel(String paramString)
  {
    m = paramString;
  }
  
  public static void setDebug(boolean paramBoolean)
  {
    u.a.b.a = paramBoolean;
  }
  
  public static void setDeltaUpdate(boolean paramBoolean)
  {
    q = paramBoolean;
  }
  
  public static void setRichNotification(boolean paramBoolean)
  {
    t = paramBoolean;
  }
  
  public static void setSilentDownload(boolean paramBoolean)
  {
    r = paramBoolean;
  }
  
  public static void setStyle(int paramInt)
  {
    u = paramInt;
  }
  
  public static void setUpdateAutoPopup(boolean paramBoolean)
  {
    o = paramBoolean;
  }
  
  public static void setUpdateCheck(boolean paramBoolean)
  {
    s = paramBoolean;
  }
  
  public static void setUpdateForce(boolean paramBoolean)
  {
    p = paramBoolean;
  }
  
  public static void setUpdateOnlyWifi(boolean paramBoolean)
  {
    n = paramBoolean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\UpdateConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */