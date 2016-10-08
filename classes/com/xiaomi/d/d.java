package com.xiaomi.d;

import java.net.InetSocketAddress;

public final class d
{
  String a;
  int b;
  
  private d(String paramString, int paramInt)
  {
    this.a = paramString;
    this.b = paramInt;
  }
  
  public static d a(String paramString, int paramInt)
  {
    int j = paramString.lastIndexOf(":");
    String str = paramString;
    i = paramInt;
    if (j != -1) {
      str = paramString.substring(0, j);
    }
    try
    {
      i = Integer.parseInt(paramString.substring(j + 1));
      if (i > 0) {
        break label60;
      }
    }
    catch (NumberFormatException paramString)
    {
      for (;;)
      {
        i = paramInt;
        continue;
        paramInt = i;
      }
    }
    i = paramInt;
    return new d(str, i);
  }
  
  public static InetSocketAddress b(String paramString, int paramInt)
  {
    paramString = a(paramString, paramInt);
    return new InetSocketAddress(paramString.a, paramString.b);
  }
  
  public final String toString()
  {
    if (this.b > 0) {
      return this.a + ":" + this.b;
    }
    return this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\d\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */