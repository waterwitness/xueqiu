package com.tencent.stat.common;

import android.content.Context;

public class SdkProtection
{
  static long valueNotSet = -1L;
  
  public static boolean beginCheck(Context paramContext)
  {
    long l1 = getPreferencesValue(paramContext, "1.0.0_begin_protection");
    long l2 = getPreferencesValue(paramContext, "1.0.0_end__protection");
    if ((l1 > 0L) && (l2 == valueNotSet)) {
      return false;
    }
    if (l1 == valueNotSet) {
      setPreferencesValue(paramContext, "1.0.0_begin_protection", System.currentTimeMillis());
    }
    return true;
  }
  
  public static void endCheck(Context paramContext)
  {
    if (getPreferencesValue(paramContext, "1.0.0_end__protection") == valueNotSet) {
      setPreferencesValue(paramContext, "1.0.0_end__protection", System.currentTimeMillis());
    }
  }
  
  static long getPreferencesValue(Context paramContext, String paramString)
  {
    return StatPreferences.getLong(paramContext, paramString, valueNotSet);
  }
  
  static void setPreferencesValue(Context paramContext, String paramString, long paramLong)
  {
    StatPreferences.putLong(paramContext, paramString, paramLong);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\common\SdkProtection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */