package com.pingan.b.d;

import android.util.Base64;
import java.io.UnsupportedEncodingException;

public final class d
{
  public static String a(String paramString)
  {
    try
    {
      paramString = Base64.encodeToString(paramString.getBytes("utf-8"), 10);
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\d\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */