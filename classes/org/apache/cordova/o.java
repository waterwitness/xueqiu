package org.apache.cordova;

import android.util.Log;

public final class o
{
  public static int a = 6;
  
  public static void a(String paramString)
  {
    if ("VERBOSE".equals(paramString)) {
      a = 2;
    }
    for (;;)
    {
      Log.i("CordovaLog", "Changing log level to " + paramString + "(" + a + ")");
      return;
      if ("DEBUG".equals(paramString)) {
        a = 3;
      } else if ("INFO".equals(paramString)) {
        a = 4;
      } else if ("WARN".equals(paramString)) {
        a = 5;
      } else if ("ERROR".equals(paramString)) {
        a = 6;
      }
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if (3 >= a) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (6 >= a) {
      Log.e(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void a(String paramString1, String paramString2, Object... paramVarArgs)
  {
    if (3 >= a) {
      Log.d(paramString1, String.format(paramString2, paramVarArgs));
    }
  }
  
  public static boolean a()
  {
    return 3 >= a;
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (4 >= a) {
      Log.i(paramString1, paramString2);
    }
  }
  
  public static void b(String paramString1, String paramString2, Object... paramVarArgs)
  {
    if (4 >= a) {
      Log.i(paramString1, String.format(paramString2, paramVarArgs));
    }
  }
  
  public static void c(String paramString1, String paramString2)
  {
    if (5 >= a) {
      Log.w(paramString1, paramString2);
    }
  }
  
  public static void d(String paramString1, String paramString2)
  {
    if (6 >= a) {
      Log.e(paramString1, paramString2);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */