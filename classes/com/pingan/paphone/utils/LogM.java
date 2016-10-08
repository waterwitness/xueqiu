package com.pingan.paphone.utils;

import android.util.Log;

public class LogM
{
  private static final int DEBUG = 2;
  private static final int ERROR = 5;
  private static final int INFO = 3;
  private static int LOGLEVEL = 0;
  private static final int VERBOSE = 1;
  private static final int WARN = 4;
  static String tag = "LogM";
  
  public static void d(String paramString)
  {
    if (2 > LOGLEVEL)
    {
      String str2 = tag;
      String str1 = paramString;
      if (paramString == null) {
        str1 = "null";
      }
      Log.d(str2, str1);
    }
  }
  
  public static void d(String paramString1, String paramString2)
  {
    if (2 > LOGLEVEL)
    {
      String str = paramString2;
      if (paramString2 == null) {
        str = "null";
      }
      Log.d(paramString1, str);
    }
  }
  
  public static void e(String paramString)
  {
    if (5 > LOGLEVEL)
    {
      String str2 = tag;
      String str1 = paramString;
      if (paramString == null) {
        str1 = "null";
      }
      Log.e(str2, str1);
    }
  }
  
  public static void e(String paramString1, String paramString2)
  {
    if (5 > LOGLEVEL)
    {
      String str = paramString2;
      if (paramString2 == null) {
        str = "null";
      }
      Log.e(paramString1, str);
    }
  }
  
  public static void e(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (5 > LOGLEVEL)
    {
      String str = paramString2;
      if (paramString2 == null) {
        str = "null";
      }
      Log.e(paramString1, str, paramThrowable);
    }
  }
  
  public static void i(String paramString)
  {
    if (3 > LOGLEVEL)
    {
      String str2 = tag;
      String str1 = paramString;
      if (paramString == null) {
        str1 = "null";
      }
      Log.i(str2, str1);
    }
  }
  
  public static void i(String paramString1, String paramString2)
  {
    if (3 > LOGLEVEL)
    {
      String str = paramString2;
      if (paramString2 == null) {
        str = "null";
      }
      Log.i(paramString1, str);
    }
  }
  
  public static void v(String paramString)
  {
    if (LOGLEVEL <= 0)
    {
      String str2 = tag;
      String str1 = paramString;
      if (paramString == null) {
        str1 = "null";
      }
      Log.v(str2, str1);
    }
  }
  
  public static void v(String paramString1, String paramString2)
  {
    if (LOGLEVEL <= 0)
    {
      String str = paramString2;
      if (paramString2 == null) {
        str = "null";
      }
      Log.v(paramString1, str);
    }
  }
  
  public static void w(String paramString)
  {
    if (4 > LOGLEVEL)
    {
      String str2 = tag;
      String str1 = paramString;
      if (paramString == null) {
        str1 = "null";
      }
      Log.w(str2, str1);
    }
  }
  
  public static void w(String paramString1, String paramString2)
  {
    if (4 > LOGLEVEL)
    {
      String str = paramString2;
      if (paramString2 == null) {
        str = "null";
      }
      Log.w(paramString1, str);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\utils\LogM.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */