package org.apache.http.client.utils;

import org.apache.http.annotation.Immutable;

@Deprecated
@Immutable
public class Punycode
{
  private static final Idn impl;
  
  static
  {
    try
    {
      JdkIdn localJdkIdn = new JdkIdn();
      impl = localJdkIdn;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Rfc3492Idn localRfc3492Idn = new Rfc3492Idn();
      }
    }
  }
  
  public static String toUnicode(String paramString)
  {
    return impl.toUnicode(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\utils\Punycode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */