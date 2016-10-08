package org.apache.commons.a.b.a;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public class a
  extends org.apache.commons.a.b.a
{
  private final InputStream c;
  private final boolean d;
  private final byte[] e = new byte[' '];
  private int f = 0;
  private Inflater g = new Inflater(true);
  private final CRC32 h = new CRC32();
  private int i;
  private boolean j = false;
  private final byte[] k = new byte[1];
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  public a(InputStream paramInputStream)
  {
    this(paramInputStream, (byte)0);
  }
  
  private a(InputStream paramInputStream, byte paramByte)
  {
    if (paramInputStream.markSupported()) {}
    for (this.c = paramInputStream;; this.c = new BufferedInputStream(paramInputStream))
    {
      this.d = false;
      a(true);
      return;
    }
  }
  
  private static void a(DataInputStream paramDataInputStream)
  {
    while (paramDataInputStream.readUnsignedByte() != 0) {}
  }
  
  private boolean a(boolean paramBoolean)
  {
    if ((!b) && (!paramBoolean) && (!this.d)) {
      throw new AssertionError();
    }
    int m = this.c.read();
    int n = this.c.read();
    if ((m == -1) && (!paramBoolean)) {
      return false;
    }
    if ((m != 31) || (n != 139))
    {
      if (paramBoolean) {}
      for (localObject = "Input is not in the .gz format";; localObject = "Garbage after a valid .gz stream") {
        throw new IOException((String)localObject);
      }
    }
    Object localObject = new DataInputStream(this.c);
    m = ((DataInputStream)localObject).readUnsignedByte();
    if (m != 8) {
      throw new IOException("Unsupported compression method " + m + " in the .gz header");
    }
    n = ((DataInputStream)localObject).readUnsignedByte();
    if ((n & 0xE0) != 0) {
      throw new IOException("Reserved flags are set in the .gz header");
    }
    ((DataInputStream)localObject).readInt();
    ((DataInputStream)localObject).readUnsignedByte();
    ((DataInputStream)localObject).readUnsignedByte();
    if ((n & 0x4) != 0)
    {
      m = ((DataInputStream)localObject).readUnsignedByte() | ((DataInputStream)localObject).readUnsignedByte() << 8;
      while (m > 0)
      {
        ((DataInputStream)localObject).readUnsignedByte();
        m -= 1;
      }
    }
    if ((n & 0x8) != 0) {
      a((DataInputStream)localObject);
    }
    if ((n & 0x10) != 0) {
      a((DataInputStream)localObject);
    }
    if ((n & 0x2) != 0) {
      ((DataInputStream)localObject).readShort();
    }
    this.g.reset();
    this.h.reset();
    this.i = 0;
    return true;
  }
  
  public void close()
  {
    if (this.g != null)
    {
      this.g.end();
      this.g = null;
    }
    if (this.c != System.in) {
      this.c.close();
    }
  }
  
  public int read()
  {
    if (read(this.k, 0, 1) == -1) {
      return -1;
    }
    return this.k[0] & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.j) {}
    int m;
    int i2;
    do
    {
      return -1;
      m = 0;
      do
      {
        int n;
        int i1;
        for (;;)
        {
          if (paramInt2 <= 0) {
            break label408;
          }
          if (this.g.needsInput())
          {
            this.c.mark(this.e.length);
            this.f = this.c.read(this.e);
            if (this.f == -1) {
              throw new EOFException();
            }
            this.g.setInput(this.e, 0, this.f);
          }
          try
          {
            int i3 = this.g.inflate(paramArrayOfByte, paramInt1, paramInt2);
            this.h.update(paramArrayOfByte, paramInt1, i3);
            this.i += i3;
            n = paramInt1 + i3;
            i1 = paramInt2 - i3;
            i2 = m + i3;
            l = i3;
            if (l != -1L) {
              this.a = (l + this.a);
            }
            m = i2;
            paramInt1 = n;
            paramInt2 = i1;
            if (this.g.finished())
            {
              this.c.reset();
              paramInt1 = this.f - this.g.getRemaining();
              if (this.c.skip(paramInt1) != paramInt1) {
                throw new IOException();
              }
            }
          }
          catch (DataFormatException paramArrayOfByte)
          {
            throw new IOException("Gzip-compressed data is corrupt");
          }
        }
        this.f = 0;
        DataInputStream localDataInputStream = new DataInputStream(this.c);
        long l = 0L;
        paramInt1 = 0;
        while (paramInt1 < 4)
        {
          l |= localDataInputStream.readUnsignedByte() << paramInt1 * 8;
          paramInt1 += 1;
        }
        if (l != this.h.getValue()) {
          throw new IOException("Gzip-compressed data is corrupt (CRC32 error)");
        }
        paramInt1 = 0;
        paramInt2 = 0;
        while (paramInt1 < 4)
        {
          paramInt2 |= localDataInputStream.readUnsignedByte() << paramInt1 * 8;
          paramInt1 += 1;
        }
        if (paramInt2 != this.i) {
          throw new IOException("Gzip-compressed data is corrupt(uncompressed size mismatch)");
        }
        if (!this.d) {
          break;
        }
        m = i2;
        paramInt1 = n;
        paramInt2 = i1;
      } while (a(false));
      this.g.end();
      this.g = null;
      this.j = true;
    } while (i2 == 0);
    return i2;
    label408:
    return m;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\a\b\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */