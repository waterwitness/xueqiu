package com.xiaomi.push.service;

import com.xiaomi.a.a.f.a;

public final class q
{
  private static int a = 8;
  private byte[] b = new byte['Ā'];
  private int c = 0;
  private int d = 0;
  private int e = 64870;
  
  private static int a(byte paramByte)
  {
    if (paramByte >= 0) {
      return paramByte;
    }
    return paramByte + 256;
  }
  
  public static String a(byte[] paramArrayOfByte, String paramString)
  {
    return String.valueOf(a.a(a(paramArrayOfByte, paramString.getBytes())));
  }
  
  private static void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfByte[paramInt1];
    paramArrayOfByte[paramInt1] = paramArrayOfByte[paramInt2];
    paramArrayOfByte[paramInt2] = i;
  }
  
  public static byte[] a(String paramString1, String paramString2)
  {
    int j = 0;
    paramString1 = a.a(paramString1);
    paramString2 = paramString2.getBytes();
    byte[] arrayOfByte = new byte[paramString1.length + 1 + paramString2.length];
    int i = 0;
    while (i < paramString1.length)
    {
      arrayOfByte[i] = paramString1[i];
      i += 1;
    }
    arrayOfByte[paramString1.length] = 95;
    i = j;
    while (i < paramString2.length)
    {
      arrayOfByte[(paramString1.length + 1 + i)] = paramString2[i];
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int j = 0;
    byte[] arrayOfByte = new byte[paramArrayOfByte2.length];
    q localq = new q();
    int k = paramArrayOfByte1.length;
    int i = 0;
    while (i < 256)
    {
      localq.b[i] = ((byte)i);
      i += 1;
    }
    localq.d = 0;
    for (localq.c = 0; localq.c < 256; localq.c += 1)
    {
      localq.d = ((localq.d + a(localq.b[localq.c]) + a(paramArrayOfByte1[(localq.c % k)])) % 256);
      a(localq.b, localq.c, localq.d);
    }
    localq.d = 0;
    localq.c = 0;
    i = j;
    while (i < paramArrayOfByte2.length)
    {
      j = paramArrayOfByte2[i];
      localq.c = ((localq.c + 1) % 256);
      localq.d = ((localq.d + a(localq.b[localq.c])) % 256);
      a(localq.b, localq.c, localq.d);
      arrayOfByte[i] = ((byte)(j ^ localq.b[((a(localq.b[localq.c]) + a(localq.b[localq.d])) % 256)]));
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static byte[] b(byte[] paramArrayOfByte, String paramString)
  {
    return a(paramArrayOfByte, a.a(paramString));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */