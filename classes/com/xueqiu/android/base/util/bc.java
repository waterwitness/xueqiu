package com.xueqiu.android.base.util;

public final class bc
{
  public static boolean a(String paramString)
  {
    try
    {
      int i = paramString.getBytes("GBK").length;
      if (i >= 4)
      {
        if (i > 16) {
          return false;
        }
        boolean bool = paramString.matches("^[a-zA-Z0-9一-龥_-]*$");
        return bool;
      }
    }
    catch (Exception paramString)
    {
      v.a("validateScreenName", paramString.toString());
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\bc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */