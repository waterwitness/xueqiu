package org.apache.commons.a.a.a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;

final class d
{
  InputStream a;
  OutputStream b;
  final int c;
  final int d;
  final byte[] e;
  int f;
  int g;
  private final int h;
  
  public d(InputStream paramInputStream)
  {
    this(paramInputStream, (byte)0);
  }
  
  private d(InputStream paramInputStream, byte paramByte)
  {
    this.a = paramInputStream;
    this.b = null;
    this.c = 10240;
    this.d = 512;
    this.h = (this.c / this.d);
    this.e = new byte[this.c];
    if (this.a != null)
    {
      this.f = -1;
      this.g = this.h;
      return;
    }
    this.f = 0;
    this.g = 0;
  }
  
  private boolean b()
  {
    if (this.a == null) {
      throw new IOException("reading from an output buffer");
    }
    this.g = 0;
    int i = this.c;
    int j = 0;
    for (;;)
    {
      long l;
      if (i > 0)
      {
        l = this.a.read(this.e, j, i);
        if (l == -1L)
        {
          if (j == 0) {
            return false;
          }
          Arrays.fill(this.e, j, i + j, (byte)0);
        }
      }
      else
      {
        this.f += 1;
        return true;
      }
      j = (int)(j + l);
      i = (int)(i - l);
    }
  }
  
  public final boolean a(byte[] paramArrayOfByte)
  {
    int j = this.d;
    int i = 0;
    while (i < j)
    {
      if (paramArrayOfByte[i] != 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public final byte[] a()
  {
    if (this.a == null)
    {
      if (this.b == null) {
        throw new IOException("input buffer is closed");
      }
      throw new IOException("reading from an output buffer");
    }
    if ((this.g >= this.h) && (!b())) {
      return null;
    }
    byte[] arrayOfByte = new byte[this.d];
    System.arraycopy(this.e, this.g * this.d, arrayOfByte, 0, this.d);
    this.g += 1;
    return arrayOfByte;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\a\a\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */