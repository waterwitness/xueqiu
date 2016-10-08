package com.alipay.sdk.c;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public final class e
{
  private static String a = "DESede/ECB/PKCS5Padding";
  
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = new SecretKeySpec(paramString1.getBytes(), "DESede");
      Cipher localCipher = Cipher.getInstance(a);
      localCipher.init(1, paramString1);
      paramString1 = a.a(localCipher.doFinal(paramString2.getBytes()));
      return paramString1;
    }
    catch (Exception paramString1) {}
    return null;
  }
  
  public static String b(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = new SecretKeySpec(paramString1.getBytes(), "DESede");
      Cipher localCipher = Cipher.getInstance(a);
      localCipher.init(2, paramString1);
      paramString1 = new String(localCipher.doFinal(a.a(paramString2)));
      return paramString1;
    }
    catch (Exception paramString1) {}
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\c\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */