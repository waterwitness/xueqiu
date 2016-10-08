package com.alipay.sdk.i;

import android.text.TextUtils;

public final class a
{
  public static String[] a(String paramString)
  {
    int i = paramString.indexOf('(') + 1;
    int j = paramString.lastIndexOf(')');
    if ((i == 0) || (j == -1)) {
      return null;
    }
    paramString = paramString.substring(i, j).split(",");
    if (paramString != null)
    {
      i = 0;
      while (i < paramString.length)
      {
        if (!TextUtils.isEmpty(paramString[i]))
        {
          paramString[i] = paramString[i].trim();
          paramString[i] = paramString[i].replaceAll("'", "").replaceAll("\"", "");
        }
        i += 1;
      }
    }
    return paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\i\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */