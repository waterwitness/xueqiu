package com.alipay.a.c;

import android.annotation.SuppressLint;
import android.os.Environment;
import android.util.Base64;
import android.util.Log;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.util.zip.GZIPOutputStream;

@SuppressLint({"SimpleDateFormat"})
public final class a
{
  public static boolean a()
  {
    String str = Environment.getExternalStorageState();
    if ((str != null) && (str.length() > 0)) {}
    for (int i = 0; (i == 0) && ((str.equals("mounted")) || (str.equals("mounted_ro"))) && (Environment.getExternalStorageDirectory() != null); i = 1) {
      return true;
    }
    return false;
  }
  
  public static boolean a(String paramString)
  {
    boolean bool2 = false;
    int j;
    boolean bool1;
    if (paramString != null)
    {
      j = paramString.length();
      if (j != 0) {}
    }
    else
    {
      bool1 = true;
      return bool1;
    }
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return true;
      }
      bool1 = bool2;
      if (!Character.isWhitespace(paramString.charAt(i))) {
        break;
      }
      i += 1;
    }
  }
  
  public static String b(String paramString)
  {
    int i = 0;
    try
    {
      if (a(paramString)) {
        return null;
      }
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes("UTF-8"));
      paramString = ((MessageDigest)localObject).digest();
      localObject = new StringBuilder();
      for (;;)
      {
        if (i >= 16) {
          return ((StringBuilder)localObject).toString();
        }
        ((StringBuilder)localObject).append(String.format("%02x", new Object[] { Byte.valueOf(paramString[i]) }));
        i += 1;
      }
      return null;
    }
    catch (Exception paramString) {}
  }
  
  public static String c(String paramString)
  {
    if (!new File(paramString).exists()) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    for (;;)
    {
      try
      {
        paramString = new BufferedReader(new InputStreamReader(new FileInputStream(paramString), "UTF-8"));
        str = paramString.readLine();
        if (str != null) {
          continue;
        }
        paramString.close();
      }
      catch (IOException paramString)
      {
        String str;
        paramString.printStackTrace();
        continue;
      }
      return localStringBuilder.toString();
      localStringBuilder.append(str);
    }
  }
  
  public static String d(String paramString)
  {
    try
    {
      byte[] arrayOfByte = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(paramString.length()).array();
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(paramString.length());
      GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
      localGZIPOutputStream.write(paramString.getBytes("UTF-8"));
      localGZIPOutputStream.close();
      localByteArrayOutputStream.close();
      paramString = new byte[localByteArrayOutputStream.toByteArray().length + 4];
      System.arraycopy(arrayOfByte, 0, paramString, 0, 4);
      System.arraycopy(localByteArrayOutputStream.toByteArray(), 0, paramString, 4, localByteArrayOutputStream.toByteArray().length);
      paramString = Base64.encodeToString(paramString, 8);
      return paramString;
    }
    catch (Exception paramString)
    {
      Log.i("ALP", paramString.getMessage());
    }
    return "";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\a\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */