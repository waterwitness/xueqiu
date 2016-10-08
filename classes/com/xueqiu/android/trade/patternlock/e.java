package com.xueqiu.android.trade.patternlock;

import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

public final class e
{
  @Deprecated
  public static String a(List<f> paramList)
  {
    return Base64.encodeToString(c(paramList), 2);
  }
  
  @Deprecated
  public static List<f> a(String paramString)
  {
    int i = 0;
    paramString = Base64.decode(paramString, 0);
    ArrayList localArrayList = new ArrayList();
    int j = paramString.length;
    while (i < j)
    {
      int k = paramString[i];
      localArrayList.add(f.a(k / 3, k % 3));
      i += 1;
    }
    return localArrayList;
  }
  
  private static byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = MessageDigest.getInstance("SHA-1").digest(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      throw new RuntimeException(paramArrayOfByte);
    }
  }
  
  public static String b(List<f> paramList)
  {
    return Base64.encodeToString(a(c(paramList)), 2);
  }
  
  private static byte[] c(List<f> paramList)
  {
    int j = paramList.size();
    byte[] arrayOfByte = new byte[j];
    int i = 0;
    while (i < j)
    {
      f localf = (f)paramList.get(i);
      int k = localf.a;
      arrayOfByte[i] = ((byte)(localf.b + k * 3));
      i += 1;
    }
    return arrayOfByte;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\patternlock\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */