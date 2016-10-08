package com.xueqiu.android.base.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.nio.charset.Charset;

public final class s
{
  public static String a(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("com.xueqiu.keychain", 0);
    String str = localSharedPreferences.getString("com.xueqiu.sqlcipher", "");
    paramContext = str;
    if (localSharedPreferences.getInt("com.xueqiu.sqlcipher.version", 0) > 0) {
      paramContext = a(str);
    }
    return paramContext;
  }
  
  public static String a(String paramString)
  {
    paramString = paramString.getBytes(Charset.forName("UTF-8"));
    int i = 0;
    while (i < paramString.length - 1)
    {
      paramString[i] = ((byte)(paramString[i] & 0x0));
      i += 2;
    }
    return new String(paramString, Charset.forName("UTF-8"));
  }
  
  public static void b(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("com.xueqiu.keychain", 0).edit();
    paramContext.putInt("com.xueqiu.sqlcipher.version", 1);
    paramContext.commit();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */