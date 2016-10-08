package com.umeng.analytics;

import android.content.Context;
import u.aly.er;

public class AnalyticsConfig
{
  public static boolean ACTIVITY_DURATION_OPEN;
  public static boolean CATCH_EXCEPTION;
  public static boolean COMPRESS_DATA;
  public static boolean ENABLE_MEMORY_BUFFER;
  public static String GPU_RENDERER;
  public static String GPU_VENDER;
  public static boolean UPDATE_IN_MAIN_PROCESS = true;
  private static String a = null;
  private static String b = null;
  private static double[] c;
  private static int[] d;
  public static long kContinueSessionMillis;
  public static int mVerticalType;
  public static String mWrapperType = null;
  public static String mWrapperVersion = null;
  public static int sAge;
  public static Gender sGender;
  public static String sId;
  public static String sSource;
  
  static
  {
    GPU_VENDER = "";
    GPU_RENDERER = "";
    c = null;
    ACTIVITY_DURATION_OPEN = true;
    COMPRESS_DATA = true;
    ENABLE_MEMORY_BUFFER = true;
    CATCH_EXCEPTION = true;
    kContinueSessionMillis = 30000L;
  }
  
  public static String getAppkey(Context paramContext)
  {
    if (a == null) {
      a = er.j(paramContext);
    }
    return a;
  }
  
  public static String getChannel(Context paramContext)
  {
    if (b == null) {
      b = er.n(paramContext);
    }
    return b;
  }
  
  public static double[] getLocation()
  {
    return c;
  }
  
  public static int[] getReportPolicy(Context paramContext)
  {
    if (d == null) {
      d = g.a(paramContext).a();
    }
    return d;
  }
  
  public static void setAppkey(String paramString)
  {
    a = paramString;
  }
  
  public static void setChannel(String paramString)
  {
    b = paramString;
  }
  
  public static void setLocation(double paramDouble1, double paramDouble2)
  {
    if (c == null) {
      c = new double[2];
    }
    c[0] = paramDouble1;
    c[1] = paramDouble2;
  }
  
  public static void setReportPolicy(int paramInt1, int paramInt2)
  {
    if (d == null) {
      d = new int[2];
    }
    d[0] = paramInt1;
    d[1] = paramInt2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\AnalyticsConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */