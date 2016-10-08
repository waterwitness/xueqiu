package com.d.a.a.a.a.a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

final class g
  implements Closeable
{
  final Charset a;
  private final InputStream b;
  private byte[] c;
  private int d;
  private int e;
  
  public g(InputStream paramInputStream, Charset paramCharset)
  {
    this(paramInputStream, paramCharset, (byte)0);
  }
  
  private g(InputStream paramInputStream, Charset paramCharset, byte paramByte)
  {
    if ((paramInputStream == null) || (paramCharset == null)) {
      throw new NullPointerException();
    }
    if (!paramCharset.equals(h.a)) {
      throw new IllegalArgumentException("Unsupported encoding");
    }
    this.b = paramInputStream;
    this.a = paramCharset;
    this.c = new byte[' '];
  }
  
  private void b()
  {
    int i = this.b.read(this.c, 0, this.c.length);
    if (i == -1) {
      throw new EOFException();
    }
    this.d = 0;
    this.e = i;
  }
  
  public final String a()
  {
    synchronized (this.b)
    {
      if (this.c == null) {
        throw new IOException("LineReader is closed");
      }
    }
    if (this.d >= this.e) {
      b();
    }
    int i = this.d;
    for (;;)
    {
      if (i != this.e)
      {
        if (this.c[i] != 10) {
          break label265;
        }
        if ((i == this.d) || (this.c[(i - 1)] != 13)) {
          break label259;
        }
      }
      label259:
      for (int j = i - 1;; j = i)
      {
        Object localObject2 = new String(this.c, this.d, j - this.d, this.a.name());
        this.d = (i + 1);
        return (String)localObject2;
        localObject2 = new ByteArrayOutputStream(this.e - this.d + 80)
        {
          public final String toString()
          {
            if ((this.count > 0) && (this.buf[(this.count - 1)] == 13)) {}
            for (int i = this.count - 1;; i = this.count) {
              try
              {
                String str = new String(this.buf, 0, i, g.this.a.name());
                return str;
              }
              catch (UnsupportedEncodingException localUnsupportedEncodingException)
              {
                throw new AssertionError(localUnsupportedEncodingException);
              }
            }
          }
        };
        for (;;)
        {
          ((ByteArrayOutputStream)localObject2).write(this.c, this.d, this.e - this.d);
          this.e = -1;
          b();
          i = this.d;
          while (i != this.e)
          {
            if (this.c[i] == 10)
            {
              if (i != this.d) {
                ((ByteArrayOutputStream)localObject2).write(this.c, this.d, i - this.d);
              }
              this.d = (i + 1);
              localObject2 = ((ByteArrayOutputStream)localObject2).toString();
              return (String)localObject2;
            }
            i += 1;
          }
        }
      }
      label265:
      i += 1;
    }
  }
  
  public final void close()
  {
    synchronized (this.b)
    {
      if (this.c != null)
      {
        this.c = null;
        this.b.close();
      }
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\a\a\a\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */