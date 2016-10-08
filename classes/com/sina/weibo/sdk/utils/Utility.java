package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.Locale;
import java.util.UUID;

public class Utility
{
  private static final String DEFAULT_CHARSET = "UTF-8";
  
  public static Bundle decodeUrl(String paramString)
  {
    Bundle localBundle = new Bundle();
    int j;
    int i;
    if (paramString != null)
    {
      paramString = paramString.split("&");
      j = paramString.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        return localBundle;
      }
      String[] arrayOfString = paramString[i].split("=");
      try
      {
        localBundle.putString(URLDecoder.decode(arrayOfString[0], "UTF-8"), URLDecoder.decode(arrayOfString[1], "UTF-8"));
        i += 1;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        for (;;)
        {
          localUnsupportedEncodingException.printStackTrace();
        }
      }
    }
  }
  
  public static String generateGUID()
  {
    return UUID.randomUUID().toString().replace("-", "");
  }
  
  public static String getSign(Context paramContext, String paramString)
  {
    for (;;)
    {
      int i;
      try
      {
        paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 64);
        i = 0;
        if (i >= paramContext.signatures.length) {
          return null;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        return null;
      }
      paramString = paramContext.signatures[i].toByteArray();
      if (paramString != null) {
        return MD5.hexdigest(paramString);
      }
      i += 1;
    }
  }
  
  public static boolean isChineseLocale(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getResources().getConfiguration().locale;
      boolean bool;
      if ((!Locale.CHINA.equals(paramContext)) && (!Locale.CHINESE.equals(paramContext)) && (!Locale.SIMPLIFIED_CHINESE.equals(paramContext))) {
        bool = Locale.TAIWAN.equals(paramContext);
      }
      return bool;
    }
    catch (Exception paramContext) {}
    return true;
  }
  
  public static Bundle parseUrl(String paramString)
  {
    try
    {
      paramString = new URL(paramString);
      Bundle localBundle = decodeUrl(paramString.getQuery());
      localBundle.putAll(decodeUrl(paramString.getRef()));
      return localBundle;
    }
    catch (MalformedURLException paramString) {}
    return new Bundle();
  }
  
  public static String safeString(String paramString)
  {
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      str = "";
    }
    return str;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\utils\Utility.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */