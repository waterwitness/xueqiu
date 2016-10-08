package com.xiaomi.a.a.f;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class c
{
  public static String a(String paramString)
  {
    StringBuffer localStringBuffer;
    for (;;)
    {
      try
      {
        Object localObject = MessageDigest.getInstance("MD5");
        localStringBuffer = new StringBuffer();
        ((MessageDigest)localObject).update(paramString.getBytes(), 0, paramString.length());
        localObject = ((MessageDigest)localObject).digest();
        int i = 0;
        if (i >= localObject.length) {
          break;
        }
        int k = localObject[i];
        if (k < 0)
        {
          j = 128;
          j = (k & 0x7F) + j;
          StringBuilder localStringBuilder = new StringBuilder();
          if (j >= 16) {
            break label128;
          }
          paramString = "0";
          localStringBuffer.append(paramString + Integer.toHexString(j).toLowerCase());
          i += 1;
          continue;
        }
        int j = 0;
      }
      catch (NoSuchAlgorithmException paramString)
      {
        return null;
      }
      continue;
      label128:
      paramString = "";
    }
    return localStringBuffer.toString();
  }
  
  public static String b(String paramString)
  {
    return a(paramString).subSequence(8, 24).toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\f\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */