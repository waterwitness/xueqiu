package com.snowballfinance.message.a;

import java.io.ByteArrayOutputStream;
import java.security.Key;
import javax.crypto.Cipher;

public final class a
{
  public static byte[] a(byte[] paramArrayOfByte, Key paramKey, int paramInt)
  {
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(1, paramKey);
    paramKey = new ByteArrayOutputStream();
    int k = paramInt / 8 - 11;
    paramInt = 0;
    for (int i = 0; paramArrayOfByte.length - i > 0; i = paramInt * k)
    {
      int m = paramArrayOfByte.length - i;
      int j = m;
      if (m > k) {
        j = k;
      }
      byte[] arrayOfByte = localCipher.doFinal(paramArrayOfByte, i, j);
      paramKey.write(arrayOfByte, 0, arrayOfByte.length);
      paramInt += 1;
    }
    return paramKey.toByteArray();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */