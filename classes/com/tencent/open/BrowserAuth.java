package com.tencent.open;

import java.util.HashMap;

public class BrowserAuth
{
  public static BrowserAuth a;
  private static int e;
  public HashMap b = new HashMap();
  public final String c = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  
  static
  {
    if (!BrowserAuth.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      e = 0;
      return;
    }
  }
  
  public static BrowserAuth a()
  {
    if (a == null) {
      a = new BrowserAuth();
    }
    return a;
  }
  
  public static int b()
  {
    int i = e + 1;
    e = i;
    return i;
  }
  
  private String b(String paramString1, String paramString2)
  {
    int i = 0;
    if ((!d) && (paramString1.length() % 2 != 0)) {
      throw new AssertionError();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int k = paramString2.length();
    int m = paramString1.length() / 2;
    int j = 0;
    while (i < m)
    {
      localStringBuilder.append((char)(Integer.parseInt(paramString1.substring(i * 2, i * 2 + 2), 16) ^ paramString2.charAt(j)));
      j = (j + 1) % k;
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public BrowserAuth.Auth a(String paramString)
  {
    return (BrowserAuth.Auth)this.b.get(paramString);
  }
  
  public String a(BrowserAuth.Auth paramAuth)
  {
    int i = b();
    try
    {
      this.b.put(String.valueOf(i), paramAuth);
      return String.valueOf(i);
    }
    catch (Throwable paramAuth)
    {
      for (;;)
      {
        paramAuth.printStackTrace();
      }
    }
  }
  
  public String a(String paramString1, String paramString2)
  {
    return b(paramString1, paramString2);
  }
  
  public void b(String paramString)
  {
    this.b.remove(paramString);
  }
  
  public String c()
  {
    int j = (int)Math.ceil(Math.random() * 20.0D + 3.0D);
    char[] arrayOfChar = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
    int k = arrayOfChar.length;
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < j)
    {
      localStringBuffer.append(arrayOfChar[((int)(Math.random() * k))]);
      i += 1;
    }
    return localStringBuffer.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\BrowserAuth.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */