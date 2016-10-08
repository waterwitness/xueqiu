package com.google.a.a;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

public final class b
{
  public final byte[] a;
  public final int b;
  public int c;
  public final OutputStream d;
  
  public b(OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    this.d = paramOutputStream;
    this.a = paramArrayOfByte;
    this.c = 0;
    this.b = 4096;
  }
  
  b(byte[] paramArrayOfByte, int paramInt)
  {
    this.d = null;
    this.a = paramArrayOfByte;
    this.c = 0;
    this.b = (paramInt + 0);
  }
  
  public static int a(int paramInt)
  {
    return c(f.a(paramInt, 0));
  }
  
  public static int a(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      int i = c(paramString.length);
      int j = paramString.length;
      return j + i;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException("UTF-8 not supported.");
    }
  }
  
  public static int b(int paramInt1, int paramInt2)
  {
    int i = a(paramInt1);
    if (paramInt2 >= 0) {}
    for (paramInt1 = c(paramInt2);; paramInt1 = 10) {
      return paramInt1 + i;
    }
  }
  
  public static int c(int paramInt)
  {
    if ((paramInt & 0xFFFFFF80) == 0) {
      return 1;
    }
    if ((paramInt & 0xC000) == 0) {
      return 2;
    }
    if ((0xFFE00000 & paramInt) == 0) {
      return 3;
    }
    if ((0xF0000000 & paramInt) == 0) {
      return 4;
    }
    return 5;
  }
  
  private void d(int paramInt)
  {
    int i = (byte)paramInt;
    if (this.c == this.b) {
      a();
    }
    byte[] arrayOfByte = this.a;
    paramInt = this.c;
    this.c = (paramInt + 1);
    arrayOfByte[paramInt] = i;
  }
  
  public final void a()
  {
    if (this.d == null) {
      throw new c();
    }
    this.d.write(this.a, 0, this.c);
    this.c = 0;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    c(paramInt1, 0);
    if (paramInt2 >= 0)
    {
      b(paramInt2);
      return;
    }
    for (long l = paramInt2;; l >>>= 7)
    {
      if ((0xFFFFFFFFFFFFFF80 & l) == 0L)
      {
        d((int)l);
        return;
      }
      d((int)l & 0x7F | 0x80);
    }
  }
  
  public final void a(int paramInt, boolean paramBoolean)
  {
    int i = 0;
    c(paramInt, 0);
    paramInt = i;
    if (paramBoolean) {
      paramInt = 1;
    }
    d(paramInt);
  }
  
  public final void b(int paramInt)
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        d(paramInt);
        return;
      }
      d(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }
  
  public final void c(int paramInt1, int paramInt2)
  {
    b(f.a(paramInt1, paramInt2));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\google\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */