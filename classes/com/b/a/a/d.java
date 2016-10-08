package com.b.a.a;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.util.Log;

@SuppressLint({"SimpleDateFormat"})
public final class d
{
  public static String a = "";
  public static boolean b = true;
  public static boolean c = true;
  public static boolean d = true;
  public static boolean e = true;
  public static boolean f = true;
  public static boolean g = true;
  public static e h;
  private static boolean i = true;
  
  public static void a(String paramString)
  {
    if (!i) {}
    for (;;)
    {
      return;
      if (b)
      {
        Object localObject = Thread.currentThread().getStackTrace()[4];
        String str = ((StackTraceElement)localObject).getClassName();
        localObject = String.format("%s.%s(L:%d)", new Object[] { str.substring(str.lastIndexOf(".") + 1), ((StackTraceElement)localObject).getMethodName(), Integer.valueOf(((StackTraceElement)localObject).getLineNumber()) });
        if (TextUtils.isEmpty(a)) {}
        while (h == null)
        {
          Log.d((String)localObject, paramString);
          return;
          localObject = a + ":" + (String)localObject;
        }
      }
    }
  }
  
  public static void b(String paramString)
  {
    Log.d("QHTAPP", paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\b\a\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */