package com.tencent.bugly.proguard;

import android.util.Log;
import java.util.Locale;

public final class w
{
  public static String a = "CrashReport";
  public static boolean b = false;
  private static String c = "CrashReportInfo";
  
  private static boolean a(int paramInt, String paramString, Object... paramVarArgs)
  {
    if (!b) {
      return false;
    }
    String str;
    if (paramString == null) {
      str = "null";
    }
    for (;;)
    {
      switch (paramInt)
      {
      case 4: 
      default: 
        return false;
      case 0: 
        Log.i(a, str);
        return true;
        str = paramString;
        if (paramVarArgs != null)
        {
          str = paramString;
          if (paramVarArgs.length != 0) {
            str = String.format(Locale.US, paramString, paramVarArgs);
          }
        }
        break;
      }
    }
    Log.i(c, str);
    return true;
    Log.d(a, str);
    return true;
    Log.w(a, str);
    return true;
    Log.e(a, str);
    return true;
  }
  
  public static boolean a(String paramString, Object... paramVarArgs)
  {
    return a(0, paramString, paramVarArgs);
  }
  
  public static boolean a(Throwable paramThrowable)
  {
    if (!b) {
      return false;
    }
    return a(2, a.a(paramThrowable), new Object[0]);
  }
  
  public static boolean b(String paramString, Object... paramVarArgs)
  {
    return a(5, paramString, paramVarArgs);
  }
  
  public static boolean b(Throwable paramThrowable)
  {
    if (!b) {
      return false;
    }
    return a(3, a.a(paramThrowable), new Object[0]);
  }
  
  public static boolean c(String paramString, Object... paramVarArgs)
  {
    return a(1, paramString, paramVarArgs);
  }
  
  public static boolean d(String paramString, Object... paramVarArgs)
  {
    return a(2, paramString, paramVarArgs);
  }
  
  public static boolean e(String paramString, Object... paramVarArgs)
  {
    return a(3, paramString, paramVarArgs);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */