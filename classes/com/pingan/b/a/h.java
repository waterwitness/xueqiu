package com.pingan.b.a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Random;
import org.apache.http.message.BasicHeader;

public final class h
{
  static final byte[] a = { 13, 10 };
  private static final byte[] d = "Content-Transfer-Encoding: binary\r\n".getBytes();
  private static final char[] e = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  final byte[] b;
  final ByteArrayOutputStream c = new ByteArrayOutputStream();
  private final String f;
  private final byte[] g;
  
  public h()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Random localRandom = new Random();
    int i = 0;
    while (i < 30)
    {
      localStringBuilder.append(e[localRandom.nextInt(e.length)]);
      i += 1;
    }
    this.f = localStringBuilder.toString();
    this.b = ("--" + this.f + "\r\n").getBytes();
    this.g = ("--" + this.f + "--\r\n").getBytes();
  }
  
  static StringBuilder a(StringBuilder paramStringBuilder, String paramString)
  {
    paramStringBuilder.append('"');
    int i = 0;
    int j = paramString.length();
    if (i < j)
    {
      char c1 = paramString.charAt(i);
      switch (c1)
      {
      default: 
        paramStringBuilder.append(c1);
      }
      for (;;)
      {
        i += 1;
        break;
        paramStringBuilder.append("%0A");
        continue;
        paramStringBuilder.append("%0D");
        continue;
        paramStringBuilder.append("%22");
      }
    }
    paramStringBuilder.append('"');
    return paramStringBuilder;
  }
  
  static byte[] a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder("Content-Type: ");
    String str = paramString;
    if (paramString == null) {
      str = "application/octet-stream";
    }
    return (str + "\r\n").getBytes();
  }
  
  public final b a(j paramj, c paramc)
  {
    try
    {
      this.c.write(this.g);
      paramj = new b(this.c.toByteArray(), paramj, paramc);
      paramj.setContentType(new BasicHeader("Content-Type", "multipart/form-data; boundary=" + this.f));
      return paramj;
    }
    catch (IOException paramj)
    {
      throw new AssertionError(paramj);
    }
  }
  
  public final void a(String paramString1, String paramString2, InputStream paramInputStream, String paramString3)
  {
    this.c.write(this.b);
    ByteArrayOutputStream localByteArrayOutputStream = this.c;
    StringBuilder localStringBuilder = new StringBuilder("Content-Disposition: form-data; name=");
    a(localStringBuilder, paramString1);
    localStringBuilder.append("; filename=");
    a(localStringBuilder, paramString2);
    localStringBuilder.append("\r\n");
    localByteArrayOutputStream.write(com.pingan.b.d.c.a(localStringBuilder.toString()));
    this.c.write(a(paramString3));
    this.c.write(d);
    this.c.write(a);
    paramString1 = new byte[' '];
    for (;;)
    {
      int i = paramInputStream.read(paramString1);
      if (i == -1) {
        break;
      }
      this.c.write(paramString1, 0, i);
    }
    this.c.write(a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */