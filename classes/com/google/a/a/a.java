package com.google.a.a;

import java.io.InputStream;
import java.util.Vector;

public final class a
{
  public final byte[] a;
  public int b;
  public int c;
  private int d;
  private final InputStream e;
  private int f;
  private int g;
  private int h = Integer.MAX_VALUE;
  private int i = 64;
  private int j = 67108864;
  
  public a(InputStream paramInputStream)
  {
    this.a = new byte['က'];
    this.b = 0;
    this.c = 0;
    this.e = paramInputStream;
  }
  
  a(byte[] paramArrayOfByte, int paramInt)
  {
    this.a = paramArrayOfByte;
    this.b = (paramInt + 0);
    this.c = 0;
    this.e = null;
  }
  
  private boolean a(boolean paramBoolean)
  {
    if (this.c < this.b) {
      throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
    }
    if (this.g + this.b == this.h)
    {
      if (paramBoolean) {
        throw d.a();
      }
      return false;
    }
    this.g += this.b;
    this.c = 0;
    if (this.e == null) {}
    for (int k = -1;; k = this.e.read(this.a))
    {
      this.b = k;
      if ((this.b != 0) && (this.b >= -1)) {
        break;
      }
      throw new IllegalStateException("InputStream#read(byte[]) returned invalid result: " + this.b + "\nThe InputStream implementation is buggy.");
    }
    if (this.b == -1)
    {
      this.b = 0;
      if (paramBoolean) {
        throw d.a();
      }
      return false;
    }
    this.b += this.d;
    k = this.g + this.b;
    if (k > this.h)
    {
      this.d = (k - this.h);
      this.b -= this.d;
    }
    for (;;)
    {
      k = this.g + this.b + this.d;
      if ((k <= this.j) && (k >= 0)) {
        break;
      }
      throw d.g();
      this.d = 0;
    }
    return true;
  }
  
  private byte d()
  {
    if (this.c == this.b) {
      a(true);
    }
    byte[] arrayOfByte = this.a;
    int k = this.c;
    this.c = (k + 1);
    return arrayOfByte[k];
  }
  
  private void d(int paramInt)
  {
    if (paramInt < 0) {
      throw d.b();
    }
    if (this.g + this.c + paramInt > this.h)
    {
      d(this.h - this.g - this.c);
      throw d.a();
    }
    if (paramInt <= this.b - this.c) {
      this.c += paramInt;
    }
    for (;;)
    {
      return;
      int k = this.b;
      int m = this.c;
      this.g += this.b;
      this.c = 0;
      this.b = 0;
      k -= m;
      while (k < paramInt)
      {
        if (this.e == null) {}
        for (m = -1; m <= 0; m = (int)this.e.skip(paramInt - k)) {
          throw d.a();
        }
        k += m;
        this.g = (m + this.g);
      }
    }
  }
  
  public final int a()
  {
    if ((this.c == this.b) && (!a(false))) {}
    for (int k = 1; k != 0; k = 0)
    {
      this.f = 0;
      return 0;
    }
    this.f = c();
    if (this.f == 0) {
      throw d.d();
    }
    return this.f;
  }
  
  public final void a(int paramInt)
  {
    if (this.f != paramInt) {
      throw d.e();
    }
  }
  
  public final boolean b()
  {
    return c() != 0;
  }
  
  public final boolean b(int paramInt)
  {
    switch (f.a(paramInt))
    {
    default: 
      throw d.f();
    case 0: 
      c();
      return true;
    case 1: 
      d();
      d();
      d();
      d();
      d();
      d();
      d();
      d();
      return true;
    case 2: 
      d(c());
      return true;
    case 3: 
      int k;
      do
      {
        k = a();
      } while ((k != 0) && (b(k)));
      a(f.a(f.b(paramInt), 4));
      return true;
    case 4: 
      return false;
    }
    d();
    d();
    d();
    d();
    return true;
  }
  
  public final int c()
  {
    int k = d();
    if (k >= 0) {}
    int n;
    do
    {
      return k;
      k &= 0x7F;
      m = d();
      if (m >= 0) {
        return k | m << 7;
      }
      k |= (m & 0x7F) << 7;
      m = d();
      if (m >= 0) {
        return k | m << 14;
      }
      k |= (m & 0x7F) << 14;
      n = d();
      if (n >= 0) {
        return k | n << 21;
      }
      m = d();
      n = k | (n & 0x7F) << 21 | m << 28;
      k = n;
    } while (m >= 0);
    int m = 0;
    for (;;)
    {
      if (m >= 5) {
        break label133;
      }
      k = n;
      if (d() >= 0) {
        break;
      }
      m += 1;
    }
    label133:
    throw d.c();
  }
  
  public final byte[] c(int paramInt)
  {
    if (paramInt < 0) {
      throw d.b();
    }
    if (this.g + this.c + paramInt > this.h)
    {
      d(this.h - this.g - this.c);
      throw d.a();
    }
    if (paramInt <= this.b - this.c)
    {
      localObject = new byte[paramInt];
      System.arraycopy(this.a, this.c, localObject, 0, paramInt);
      this.c += paramInt;
      return (byte[])localObject;
    }
    if (paramInt < 4096)
    {
      localObject = new byte[paramInt];
      k = this.b - this.c;
      System.arraycopy(this.a, this.c, localObject, 0, k);
      this.c = this.b;
      a(true);
      while (paramInt - k > this.b)
      {
        System.arraycopy(this.a, 0, localObject, k, this.b);
        k += this.b;
        this.c = this.b;
        a(true);
      }
      System.arraycopy(this.a, 0, localObject, k, paramInt - k);
      this.c = (paramInt - k);
      return (byte[])localObject;
    }
    int i1 = this.c;
    int i2 = this.b;
    this.g += this.b;
    this.c = 0;
    this.b = 0;
    Object localObject = new Vector();
    int k = paramInt - (i2 - i1);
    while (k > 0)
    {
      arrayOfByte1 = new byte[Math.min(k, 4096)];
      int m = 0;
      while (m < arrayOfByte1.length)
      {
        if (this.e == null) {}
        for (int n = -1; n == -1; n = this.e.read(arrayOfByte1, m, arrayOfByte1.length - m)) {
          throw d.a();
        }
        this.g += n;
        m += n;
      }
      m = arrayOfByte1.length;
      ((Vector)localObject).addElement(arrayOfByte1);
      k -= m;
    }
    byte[] arrayOfByte1 = new byte[paramInt];
    k = i2 - i1;
    System.arraycopy(this.a, i1, arrayOfByte1, 0, k);
    paramInt = 0;
    while (paramInt < ((Vector)localObject).size())
    {
      byte[] arrayOfByte2 = (byte[])((Vector)localObject).elementAt(paramInt);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, k, arrayOfByte2.length);
      k += arrayOfByte2.length;
      paramInt += 1;
    }
    return arrayOfByte1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\google\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */