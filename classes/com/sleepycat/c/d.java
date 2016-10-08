package com.sleepycat.c;

import java.io.OutputStream;

public class d
  extends OutputStream
{
  private static byte[] d = new byte[0];
  public int a;
  public byte[] b;
  private int c;
  
  public d()
  {
    this.b = new byte[100];
    this.c = 0;
  }
  
  public d(byte[] paramArrayOfByte)
  {
    this.b = paramArrayOfByte;
    this.c = 0;
  }
  
  private void a(int paramInt)
  {
    if (this.c > 0) {}
    for (int i = this.c;; i = this.b.length)
    {
      byte[] arrayOfByte = new byte[i + (this.b.length + paramInt)];
      System.arraycopy(this.b, 0, arrayOfByte, 0, this.a);
      this.b = arrayOfByte;
      return;
    }
  }
  
  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = this.a + paramInt2 - this.b.length;
    if (i > 0) {
      a(i);
    }
    System.arraycopy(paramArrayOfByte, paramInt1, this.b, this.a, paramInt2);
    this.a += paramInt2;
  }
  
  public final void d(int paramInt)
  {
    if (this.a + 1 > this.b.length) {
      a(1);
    }
    byte[] arrayOfByte = this.b;
    int i = this.a;
    this.a = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
  }
  
  public final void e(int paramInt)
  {
    paramInt = this.a + paramInt - this.b.length;
    if (paramInt > 0) {
      a(paramInt);
    }
  }
  
  public final void f(int paramInt)
  {
    this.a += paramInt;
  }
  
  public String toString()
  {
    return new String(this.b, 0, this.a);
  }
  
  public void write(int paramInt)
  {
    d(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    int i = this.a + paramArrayOfByte.length - this.b.length;
    if (i > 0) {
      a(i);
    }
    System.arraycopy(paramArrayOfByte, 0, this.b, this.a, paramArrayOfByte.length);
    this.a += paramArrayOfByte.length;
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */