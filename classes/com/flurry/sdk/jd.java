package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Arrays;

public class jd
{
  private static String a = jd.class.getName();
  
  public static String a(String paramString)
  {
    String str2 = "a=" + js.a().d();
    String str1 = str2;
    if (!TextUtils.isEmpty(paramString)) {
      str1 = String.format("%s&%s", new Object[] { str2, "cid=" + b(paramString) });
    }
    return str1;
  }
  
  private static String b(String paramString)
  {
    if ((paramString != null) && (paramString.trim().length() > 0)) {}
    for (;;)
    {
      try
      {
        paramString = lt.f(paramString);
        if (paramString != null)
        {
          int i = paramString.length;
          if (i != 20) {}
        }
      }
      catch (Exception paramString)
      {
        paramString = null;
      }
      try
      {
        kg.a(5, a, "syndication hashedId is:" + new String(paramString));
        return lt.a(paramString);
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
      kg.a(6, a, "sha1 is not 20 bytes long: " + Arrays.toString(paramString));
      paramString = null;
      continue;
      kg.a(6, a, "Exception in getHashedSyndicationIdString()");
      continue;
      paramString = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\jd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */