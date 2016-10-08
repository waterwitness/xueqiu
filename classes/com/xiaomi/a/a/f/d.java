package com.xiaomi.a.a.f;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Random;

public final class d
{
  public static String a(int paramInt)
  {
    Random localRandom = new Random();
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < paramInt)
    {
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt(localRandom.nextInt(62)));
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  public static String a(String paramString)
  {
    if (paramString != null) {}
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(c(paramString));
      localObject = String.format("%1$032X", new Object[] { new BigInteger(1, ((MessageDigest)localObject).digest()) });
      return (String)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {}
    return "";
    return paramString;
  }
  
  public static String a(Collection<?> paramCollection, String paramString)
  {
    if (paramCollection == null) {}
    do
    {
      return null;
      paramCollection = paramCollection.iterator();
    } while (paramCollection == null);
    if (!paramCollection.hasNext()) {
      return "";
    }
    Object localObject = paramCollection.next();
    if (!paramCollection.hasNext()) {
      return localObject.toString();
    }
    StringBuffer localStringBuffer = new StringBuffer(256);
    if (localObject != null) {
      localStringBuffer.append(localObject);
    }
    while (paramCollection.hasNext())
    {
      localStringBuffer.append(paramString);
      localObject = paramCollection.next();
      if (localObject != null) {
        localStringBuffer.append(localObject);
      }
    }
    return localStringBuffer.toString();
  }
  
  public static String b(String paramString)
  {
    if (paramString != null) {}
    try
    {
      Object localObject = MessageDigest.getInstance("SHA1");
      ((MessageDigest)localObject).update(c(paramString));
      localObject = String.format("%1$032X", new Object[] { new BigInteger(1, ((MessageDigest)localObject).digest()) });
      return (String)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {}
    return null;
    return paramString;
  }
  
  private static byte[] c(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return paramString.getBytes();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\f\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */