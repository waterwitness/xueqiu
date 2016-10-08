package com.xueqiu.android.base.util;

import android.os.Bundle;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

public final class az
{
  public static Bundle a(String paramString)
  {
    try
    {
      paramString = new URL(paramString);
      Bundle localBundle = d(paramString.getQuery());
      localBundle.putAll(d(paramString.getRef()));
      return localBundle;
    }
    catch (MalformedURLException paramString) {}
    return new Bundle();
  }
  
  public static String b(String paramString)
  {
    return URLEncoder.encode(paramString, "UTF-8").replaceAll("\\%28", "(").replaceAll("\\%29", ")").replaceAll("\\+", "%20").replaceAll("\\%27", "'").replaceAll("\\%21", "!").replaceAll("\\%7E", "~");
  }
  
  public static Map<String, String> c(String paramString)
  {
    Object localObject = paramString;
    if (paramString.startsWith("?")) {
      localObject = paramString.substring(1);
    }
    paramString = ((String)localObject).split("&");
    localObject = new HashMap();
    int i = 0;
    while (i < paramString.length)
    {
      String[] arrayOfString = paramString[i].split("=");
      if (arrayOfString.length == 2) {
        ((Map)localObject).put(arrayOfString[0], arrayOfString[1]);
      }
      i += 1;
    }
    return (Map<String, String>)localObject;
  }
  
  private static Bundle d(String paramString)
  {
    Bundle localBundle = new Bundle();
    if (paramString != null)
    {
      paramString = paramString.split("&");
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        String[] arrayOfString = paramString[i].split("=");
        localBundle.putString(URLDecoder.decode(arrayOfString[0]), URLDecoder.decode(arrayOfString[1]));
        i += 1;
      }
    }
    return localBundle;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\az.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */