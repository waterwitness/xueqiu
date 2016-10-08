package com.xueqiu.android.base.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class w
{
  public static String a(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes("UTF-8"));
      paramString = a(localMessageDigest.digest());
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      v.e("MD5", "MD5 NoSuchAlgorithmException");
      paramString.printStackTrace();
      return "";
    }
    catch (UnsupportedEncodingException paramString)
    {
      v.e("MD5", "to md5 string not support UTF-8 to bytes");
      paramString.printStackTrace();
    }
    return "";
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder("");
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i] >> 4 & 0xF;
      int k = paramArrayOfByte[i] & 0xF;
      if (j > 9)
      {
        c = (char)(j - 10 + 97);
        label53:
        localStringBuilder.append(c);
        if (k <= 9) {
          break label99;
        }
      }
      label99:
      for (char c = (char)(k - 10 + 97);; c = (char)(k + 48))
      {
        localStringBuilder.append(c);
        i += 1;
        break;
        c = (char)(j + 48);
        break label53;
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String b(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA1");
      localMessageDigest.update(paramString.getBytes("UTF-8"));
      paramString = a(localMessageDigest.digest());
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      v.e("MD5", "MD5 NoSuchAlgorithmException");
      paramString.printStackTrace();
      return "";
    }
    catch (UnsupportedEncodingException paramString)
    {
      v.e("MD5", "to md5 string not support UTF-8 to bytes");
      paramString.printStackTrace();
    }
    return "";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */