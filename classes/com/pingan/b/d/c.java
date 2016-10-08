package com.pingan.b.d;

import java.io.UnsupportedEncodingException;

public final class c
{
  public static byte[] a(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("utf-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */