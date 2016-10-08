package com.xueqiu.android.base.util;

import android.util.Log;

public final class v
{
  public static boolean a = false;
  
  public static void a(String paramString)
  {
    if ((a) && (paramString != null)) {
      Log.e("snowball_log", paramString);
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if ((a) && (paramString2 != null)) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((a) && (paramString2 != null)) {
      Log.d(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void a(String paramString1, String paramString2, Object... paramVarArgs)
  {
    a(paramString1, String.format(paramString2, paramVarArgs));
  }
  
  public static void a(String paramString, Throwable paramThrowable)
  {
    if (a) {
      Log.w(paramString, paramThrowable);
    }
  }
  
  public static void a(Throwable paramThrowable)
  {
    if (a) {
      Log.e("snowball_log", paramThrowable.toString());
    }
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if ((a) && (paramString2 != null)) {
      Log.v(paramString1, paramString2);
    }
  }
  
  public static void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((a) && (paramString2 != null)) {
      Log.w(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void c(String paramString1, String paramString2)
  {
    if ((a) && (paramString2 != null)) {
      Log.i(paramString1, paramString2);
    }
  }
  
  public static void c(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a) {
      Log.e(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void d(String paramString1, String paramString2)
  {
    if ((a) && (paramString2 != null)) {
      Log.w(paramString1, paramString2);
    }
  }
  
  public static void e(String paramString1, String paramString2)
  {
    if (paramString2 != null) {
      Log.e(paramString1, paramString2);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */