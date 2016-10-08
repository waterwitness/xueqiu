package com.snowballfinance.messageplatform.a.a;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class d
  extends BufferedInputStream
{
  public int a;
  public int b;
  private int c;
  private int d;
  
  public d(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  private long j()
  {
    return c() & 0xFFFFFFFF;
  }
  
  public final int a()
  {
    if (this.pos < this.count)
    {
      this.a += 1;
      byte[] arrayOfByte = this.buf;
      int i = this.pos;
      this.pos = (i + 1);
      return arrayOfByte[i] & 0xFF;
    }
    if (this.in != null) {
      return read();
    }
    return -1;
  }
  
  public final void a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    int j = 0;
    while (i > 0)
    {
      int k = read(paramArrayOfByte, j, i);
      if (k > 0)
      {
        j += k;
        i -= k;
      }
      else
      {
        throw new IOException("EOF");
      }
    }
  }
  
  public final int b()
  {
    this.b = 0;
    if (this.count - this.pos >= 2)
    {
      int i = this.buf[(this.pos + 1)];
      int j = this.buf[this.pos];
      this.pos += 2;
      this.a += 2;
      return i & 0xFF | (j & 0xFF) << 8;
    }
    if (this.in != null) {
      return read() << 8 | read();
    }
    throw new IOException("EOF");
  }
  
  public final int c()
  {
    this.b = 0;
    if (this.count - this.pos >= 4)
    {
      int i = this.buf[(this.pos + 3)];
      int j = this.buf[(this.pos + 2)];
      int k = this.buf[(this.pos + 1)];
      int m = this.buf[this.pos];
      this.a += 4;
      this.pos += 4;
      return i & 0xFF | (j & 0xFF) << 8 | (k & 0xFF) << 16 | m << 24;
    }
    if (this.in != null) {
      return read() << 24 | read() << 16 | read() << 8 | read();
    }
    throw new IOException("EOF");
  }
  
  public final long d()
  {
    return j() << 32 | j() & 0xFFFFFFFF;
  }
  
  public final boolean e()
  {
    if (this.b == 0)
    {
      this.c = a();
      this.b = 8;
    }
    int j = 0;
    int i = 1;
    for (;;)
    {
      m = i - this.b;
      if (m <= 0) {
        break;
      }
      j |= this.c << m;
      i -= this.b;
      this.c = a();
      this.b = 8;
    }
    int k = this.c;
    int m = -m;
    this.b -= i;
    this.c &= 255 >> 8 - this.b;
    return (j | k >> m) != 0;
  }
  
  public final double f()
  {
    return Double.longBitsToDouble(d());
  }
  
  public final String g()
  {
    int i = h();
    byte[] arrayOfByte = new byte[i];
    a(arrayOfByte);
    return new String(arrayOfByte, 0, i, "UTF8").intern();
  }
  
  public final int h()
  {
    this.b = 0;
    int i = a();
    for (long l = i & 0x7F; i >>> 7 != 0; l = l << 7 | i & 0x7F) {
      i = a();
    }
    return (int)l;
  }
  
  public final byte[] i()
  {
    this.b = 0;
    byte[] arrayOfByte = new byte[h()];
    a(arrayOfByte);
    return arrayOfByte;
  }
  
  public final void mark(int paramInt)
  {
    this.d = this.a;
    super.mark(paramInt);
  }
  
  public final int read()
  {
    int i = super.read();
    if (i == -1) {
      throw new IOException("EOF");
    }
    this.a += 1;
    return i;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt1 == -1) {
      throw new IOException("EOF");
    }
    this.a += paramInt1;
    return paramInt1;
  }
  
  public final void reset()
  {
    this.a = this.d;
    super.reset();
  }
  
  public final long skip(long paramLong)
  {
    try
    {
      paramLong = super.skip(paramLong);
      this.a = ((int)(this.a + paramLong));
      return paramLong;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\a\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */