package com.xueqiu.android.base.b;

import com.xueqiu.android.base.c.b;

public class a
{
  public static String a = "124.250.3.100";
  public static String b = "xueqiu.com";
  public static String c = "api.xueqiu.com";
  public static String d = "mas.xueqiu.com";
  public static String e = "/v4";
  protected ae f;
  
  protected static String a(String paramString)
  {
    String str = paramString;
    if (!paramString.startsWith("/")) {
      str = paramString + "/";
    }
    paramString = b.a().d(str);
    return String.format("%s://%s%s", new Object[] { b.a().c(), paramString, str });
  }
  
  protected static String a(String paramString1, String paramString2)
  {
    if (!paramString1.contains("/tc/snowx")) {
      throw new RuntimeException("not match '/tc/snowx' path");
    }
    String str = paramString1;
    if (!paramString1.startsWith("/")) {
      str = paramString1 + "/";
    }
    int i = str.indexOf("/tc/snowx");
    paramString1 = new StringBuilder(str);
    paramString1.insert(i + 9, String.format("/%s", new Object[] { paramString2 }));
    paramString2 = paramString1.toString();
    if ((paramString2.endsWith(".json")) || (paramString2.contains("?"))) {}
    for (paramString1 = "";; paramString1 = ".json")
    {
      paramString1 = String.format("%s%s", new Object[] { paramString2, paramString1 });
      paramString2 = b.a().d(paramString1);
      return String.format("%s://%s%s", new Object[] { b.a().c(), paramString2, paramString1 });
    }
  }
  
  static String a(String paramString, boolean paramBoolean)
  {
    String str = paramString;
    if (!paramString.startsWith("/")) {
      str = paramString + "/";
    }
    if ((str.endsWith(".json")) || (str.contains("?"))) {}
    for (paramString = "";; paramString = ".json")
    {
      paramString = String.format("%s%s", new Object[] { str, paramString });
      str = b.a().d(paramString);
      if (!paramBoolean) {
        break;
      }
      return String.format("%s://%s/v4%s", new Object[] { b.a().c(), str, paramString });
    }
    return String.format("%s://%s%s", new Object[] { b.a().c(), str, paramString });
  }
  
  static String b(String paramString, boolean paramBoolean)
  {
    String str = paramString;
    if (!paramString.startsWith("/")) {
      str = paramString + "/";
    }
    if ((str.endsWith(".json")) || (str.contains("?"))) {}
    for (paramString = "";; paramString = ".json")
    {
      paramString = String.format("%s%s", new Object[] { str, paramString });
      str = b.a().c(paramString);
      if (!paramBoolean) {
        break;
      }
      return String.format("%s://%s/v4%s", new Object[] { b.a().c(), str, paramString });
    }
    return String.format("%s://%s%s", new Object[] { b.a().c(), str, paramString });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */