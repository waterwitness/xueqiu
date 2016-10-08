package com.xiaomi.a.a.f;

import android.text.TextUtils;
import com.xiaomi.a.a.b.c;
import java.io.UnsupportedEncodingException;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public final class b
{
  private static String a(String paramString)
  {
    try
    {
      paramString = String.valueOf(a.a(MessageDigest.getInstance("SHA1").digest(paramString.getBytes("UTF-8"))));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      c.a("CloudCoder.hash4SHA1 ", paramString);
      throw new IllegalStateException("failed to SHA1");
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;)
      {
        c.a("CloudCoder.hash4SHA1 ", paramString);
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        c.a("CloudCoder.hash4SHA1 ", paramString);
      }
    }
  }
  
  public static String a(String paramString1, Map<String, String> paramMap, String paramString2)
  {
    int i = 1;
    if (TextUtils.isEmpty(paramString2)) {
      throw new InvalidParameterException("security is not nullable");
    }
    ArrayList localArrayList = new ArrayList();
    if (paramString1 != null) {
      localArrayList.add(paramString1.toUpperCase());
    }
    if (!paramMap.isEmpty())
    {
      paramString1 = new TreeMap(paramMap).entrySet().iterator();
      while (paramString1.hasNext())
      {
        paramMap = (Map.Entry)paramString1.next();
        localArrayList.add(String.format("%s=%s", new Object[] { paramMap.getKey(), paramMap.getValue() }));
      }
    }
    localArrayList.add(paramString2);
    paramString1 = new StringBuilder();
    paramMap = localArrayList.iterator();
    while (paramMap.hasNext())
    {
      paramString2 = (String)paramMap.next();
      if (i == 0) {
        paramString1.append('&');
      }
      paramString1.append(paramString2);
      i = 0;
    }
    return a(paramString1.toString());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\f\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */