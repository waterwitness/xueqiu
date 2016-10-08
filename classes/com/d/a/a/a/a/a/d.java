package com.d.a.a.a.a.a;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class d
{
  final String a;
  final long[] b;
  boolean c;
  b d;
  long e;
  
  private d(a parama, String paramString)
  {
    this.a = paramString;
    this.b = new long[a.g(parama)];
  }
  
  private static IOException b(String[] paramArrayOfString)
  {
    throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
  }
  
  public final File a(int paramInt)
  {
    return new File(a.h(this.f), this.a + "." + paramInt);
  }
  
  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long[] arrayOfLong = this.b;
    int j = arrayOfLong.length;
    int i = 0;
    while (i < j)
    {
      long l = arrayOfLong[i];
      localStringBuilder.append(' ').append(l);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  final void a(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length != a.g(this.f)) {
      throw b(paramArrayOfString);
    }
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        this.b[i] = Long.parseLong(paramArrayOfString[i]);
        i += 1;
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw b(paramArrayOfString);
    }
  }
  
  public final File b(int paramInt)
  {
    return new File(a.h(this.f), this.a + "." + paramInt + ".tmp");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\a\a\a\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */