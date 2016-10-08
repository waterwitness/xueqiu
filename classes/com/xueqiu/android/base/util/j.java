package com.xueqiu.android.base.util;

import com.google.gson.JsonElement;

public final class j
{
  public static double a(JsonElement paramJsonElement)
  {
    if ((paramJsonElement == null) || ("null".equals(paramJsonElement.toString()))) {
      return 0.0D;
    }
    return b(paramJsonElement.getAsString());
  }
  
  public static boolean a(String paramString)
  {
    try
    {
      Double.valueOf(paramString);
      return true;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  public static double b(String paramString)
  {
    if (a(paramString)) {
      return Double.parseDouble(paramString);
    }
    return 0.0D;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */