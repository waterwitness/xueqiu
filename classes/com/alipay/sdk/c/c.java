package com.alipay.sdk.c;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class c
{
  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramArrayOfByte);
      paramArrayOfByte = ((MessageDigest)localObject).digest();
      localObject = new StringBuffer(paramArrayOfByte.length * 2);
      int i = 0;
      while (i < paramArrayOfByte.length)
      {
        ((StringBuffer)localObject).append(Character.forDigit((paramArrayOfByte[i] & 0xF0) >> 4, 16));
        ((StringBuffer)localObject).append(Character.forDigit(paramArrayOfByte[i] & 0xF, 16));
        i += 1;
      }
      paramArrayOfByte = ((StringBuffer)localObject).toString();
      return paramArrayOfByte;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte) {}
    return "";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */