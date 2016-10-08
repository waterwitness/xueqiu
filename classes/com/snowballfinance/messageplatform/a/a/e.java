package com.snowballfinance.messageplatform.a.a;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

public class e
  extends f
{
  public int a = 0;
  private int d = 8;
  private byte e = 0;
  
  static
  {
    if (!e.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  public final void a()
  {
    if (this.d != 8)
    {
      super.write(this.e);
      this.e = 0;
      this.d = 8;
    }
  }
  
  public final void a(double paramDouble)
  {
    a(Double.doubleToLongBits(paramDouble));
  }
  
  public final void a(int paramInt)
  {
    if ((this.d != 8) || (paramInt < 0) || (paramInt > 255))
    {
      if ((!b) && (this.d != 8)) {
        throw new AssertionError();
      }
      if ((!b) && ((paramInt < 0) || (paramInt > 255))) {
        throw new AssertionError("UI8 overflow " + Integer.toHexString(paramInt));
      }
    }
    super.write(paramInt);
  }
  
  public final void a(long paramLong)
  {
    c((int)(paramLong >> 32));
    c((int)paramLong);
  }
  
  public final void a(String paramString)
  {
    try
    {
      if ((!b) && (this.d != 8)) {
        throw new AssertionError();
      }
    }
    catch (UnsupportedEncodingException paramString)
    {
      if (!b)
      {
        throw new AssertionError();
        paramString = paramString.getBytes("UTF8");
        d(paramString.length);
        write(paramString);
      }
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    int i = 1;
    int j;
    if (paramBoolean) {
      j = 1;
    }
    for (;;)
    {
      if (i > 0)
      {
        if (i > this.d)
        {
          this.e = ((byte)(this.e | j << 32 - i >>> 32 - this.d));
          super.write(this.e);
          i -= this.d;
          this.e = 0;
          this.d = 8;
          continue;
          j = 0;
          continue;
        }
        this.e = ((byte)(this.e | j << 32 - i >>> 32 - this.d));
        this.d -= i;
        if (this.d == 0)
        {
          super.write(this.e);
          this.e = 0;
          this.d = 8;
          i = 0;
        }
      }
      else
      {
        return;
      }
      i = 0;
    }
  }
  
  public final void a(byte[] paramArrayOfByte)
  {
    d(paramArrayOfByte.length);
    write(paramArrayOfByte);
  }
  
  public final void b(int paramInt)
  {
    int i = paramInt;
    if (paramInt == -1) {
      i = 65535;
    }
    if ((!b) && (this.d != 8)) {
      throw new AssertionError();
    }
    if ((!b) && ((i < 0) || (i > 65535))) {
      throw new AssertionError("UI16 overflow");
    }
    super.write(i >> 8);
    super.write(i);
  }
  
  public final void c(int paramInt)
  {
    if ((!b) && (this.d != 8)) {
      throw new AssertionError();
    }
    super.write(paramInt >> 24);
    super.write(paramInt >> 16);
    super.write(paramInt >> 8);
    super.write(paramInt);
  }
  
  public final void d(int paramInt)
  {
    if ((!b) && (this.d != 8)) {
      throw new AssertionError();
    }
    if ((!b) && (paramInt < 0)) {
      throw new AssertionError("Encoded32 overflow");
    }
    if (paramInt < 128)
    {
      write(paramInt);
      return;
    }
    if (paramInt < 16384)
    {
      write(paramInt >> 7 | 0x80);
      write(paramInt & 0x7F);
      return;
    }
    if (paramInt < 2097152)
    {
      write(paramInt >> 14 | 0x80);
      write(paramInt >> 7 | 0x80);
      write(paramInt & 0x7F);
      return;
    }
    if (paramInt < 268435456)
    {
      write(paramInt >> 21 | 0x80);
      write(paramInt >> 14 | 0x80);
      write(paramInt >> 7 | 0x80);
      write(paramInt & 0x7F);
      return;
    }
    write(paramInt >> 28 | 0x80);
    write(paramInt >> 21 | 0x80);
    write(paramInt >> 14 | 0x80);
    write(paramInt >> 7 | 0x80);
    write(paramInt & 0x7F);
  }
  
  public void reset()
  {
    super.reset();
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    try
    {
      super.writeTo(paramOutputStream);
      this.a = this.buf.length;
      return;
    }
    finally
    {
      paramOutputStream = finally;
      throw paramOutputStream;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\a\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */