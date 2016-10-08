package com.snowballfinance.messageplatform.b;

import java.nio.charset.Charset;

public final class a
{
  public static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    return new String(paramArrayOfByte, Charset.forName("UTF-8"));
  }
  
  public static byte[] a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return paramString.getBytes(Charset.forName("UTF-8"));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */