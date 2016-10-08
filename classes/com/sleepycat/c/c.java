package com.sleepycat.c;

import java.io.InputStream;

public class c
  extends InputStream
{
  protected int a;
  public int b;
  protected int c;
  public byte[] d;
  
  public c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.d = paramArrayOfByte;
    this.b = paramInt1;
    this.a = (paramInt1 + paramInt2);
  }
  
  private int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int j = this.a - this.b;
    if (j <= 0) {
      return -1;
    }
    int i = paramInt2;
    if (paramInt2 > j) {
      i = j;
    }
    System.arraycopy(this.d, this.b, paramArrayOfByte, paramInt1, i);
    this.b += i;
    return i;
  }
  
  public int available()
  {
    return this.a - this.b;
  }
  
  public final int k()
  {
    if (this.b < this.a)
    {
      byte[] arrayOfByte = this.d;
      int i = this.b;
      this.b = (i + 1);
      return arrayOfByte[i] & 0xFF;
    }
    return -1;
  }
  
  public final int l()
  {
    return this.a;
  }
  
  public void mark(int paramInt)
  {
    this.c = this.b;
  }
  
  public boolean markSupported()
  {
    return true;
  }
  
  public int read()
  {
    return k();
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return a(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void reset()
  {
    this.b = this.c;
  }
  
  public long skip(long paramLong)
  {
    int j = (int)paramLong;
    int i = j;
    if (this.b + j > this.a) {
      i = this.a - this.b;
    }
    this.b += i;
    return i;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */