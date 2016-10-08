package com.tencent.stat.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

public class StatPreferences
{
  private static SharedPreferences defaultPerferences = null;
  
  static SharedPreferences getInstance(Context paramContext)
  {
    if (defaultPerferences == null) {
      defaultPerferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
    }
    return defaultPerferences;
  }
  
  public static long getLong(Context paramContext, String paramString, long paramLong)
  {
    return getInstance(paramContext).getLong(paramString, paramLong);
  }
  
  public static String getString(Context paramContext, String paramString1, String paramString2)
  {
    return getInstance(paramContext).getString(paramString1, paramString2);
  }
  
  public static void putLong(Context paramContext, String paramString, long paramLong)
  {
    paramContext = getInstance(paramContext).edit();
    paramContext.putLong(paramString, paramLong);
    paramContext.commit();
  }
  
  public static void putString(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = getInstance(paramContext).edit();
    paramContext.putString(paramString1, paramString2);
    paramContext.commit();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\common\StatPreferences.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */