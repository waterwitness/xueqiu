package com.snowballfinance.message.a;

import java.security.Key;
import java.security.KeyFactory;
import java.security.spec.X509EncodedKeySpec;

public abstract class b
{
  public static Key a(byte[] paramArrayOfByte)
  {
    return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(paramArrayOfByte));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */