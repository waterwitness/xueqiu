package com.xueqiu.android.base.util;

import android.text.TextUtils;

public final class d
{
  static String a = "utf-8";
  static byte b = 0;
  private static d c = new d();
  private Cipher d = new Cipher();
  private int e = 2;
  
  public static d a()
  {
    return c;
  }
  
  private static byte[] b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      paramString = paramString.getBytes(a);
      int i = 16 - paramString.length % 16;
      if (i != 16)
      {
        byte[] arrayOfByte1 = new byte[i];
        byte[] arrayOfByte2 = new byte[paramString.length + i];
        System.arraycopy(paramString, 0, arrayOfByte2, 0, paramString.length);
        System.arraycopy(arrayOfByte1, 0, arrayOfByte2, paramString.length, i);
        return arrayOfByte2;
      }
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  private static byte[] b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length == 0) {
      return null;
    }
    int i = 0;
    try
    {
      while ((i < paramArrayOfByte.length) && (paramArrayOfByte[i] != b)) {
        i += 1;
      }
      byte[] arrayOfByte = new byte[i];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, i);
      return arrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }
  
  public final String a(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      return "";
    }
    if (paramArrayOfByte.length % 16 != 0)
    {
      v.a("solory", "cipher data has broken");
      return "";
    }
    try
    {
      byte[] arrayOfByte = new byte[paramArrayOfByte.length];
      if (this.d.decrypt(paramArrayOfByte, arrayOfByte, paramArrayOfByte.length, this.e) > 0)
      {
        paramArrayOfByte = new String(b(arrayOfByte), a);
        return paramArrayOfByte;
      }
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    for (;;)
    {
      return " ";
      v.e("CipherEngine", "cipher key is wrong");
    }
  }
  
  public final byte[] a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      paramString = b(paramString);
      byte[] arrayOfByte = new byte[paramString.length];
      if (this.d.encrypt(paramString, arrayOfByte, paramString.length, this.e) > 0) {
        return arrayOfByte;
      }
      v.e("CipherEngine", "cipher key is wrong");
      return null;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */