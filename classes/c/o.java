package c;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

final class o
  implements f
{
  public final d a;
  public final s b;
  boolean c;
  
  public o(s params)
  {
    this(params, new d());
  }
  
  private o(s params, d paramd)
  {
    if (params == null) {
      throw new IllegalArgumentException("source == null");
    }
    this.a = paramd;
    this.b = params;
  }
  
  private boolean b(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    while (this.a.b < paramLong) {
      if (this.b.read(this.a, 2048L) == -1L) {
        return false;
      }
    }
    return true;
  }
  
  public final long a(byte paramByte)
  {
    long l2 = 0L;
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    do
    {
      l1 = l2;
      if (0L < this.a.b) {
        break;
      }
    } while (this.b.read(this.a, 2048L) != -1L);
    long l1 = -1L;
    return l1;
    do
    {
      l2 = this.a.a(paramByte, l1);
      l1 = l2;
      if (l2 != -1L) {
        break;
      }
      l1 = this.a.b;
    } while (this.b.read(this.a, 2048L) != -1L);
    return -1L;
  }
  
  public final d a()
  {
    return this.a;
  }
  
  public final void a(long paramLong)
  {
    if (!b(paramLong)) {
      throw new EOFException();
    }
  }
  
  public final g c(long paramLong)
  {
    a(paramLong);
    return this.a.c(paramLong);
  }
  
  public final void close()
  {
    if (this.c) {
      return;
    }
    this.c = true;
    this.b.close();
    this.a.p();
  }
  
  public final boolean d()
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    return (this.a.d()) && (this.b.read(this.a, 2048L) == -1L);
  }
  
  public final InputStream e()
  {
    new InputStream()
    {
      public final int available()
      {
        if (o.this.c) {
          throw new IOException("closed");
        }
        return (int)Math.min(o.this.a.b, 2147483647L);
      }
      
      public final void close()
      {
        o.this.close();
      }
      
      public final int read()
      {
        if (o.this.c) {
          throw new IOException("closed");
        }
        if ((o.this.a.b == 0L) && (o.this.b.read(o.this.a, 2048L) == -1L)) {
          return -1;
        }
        return o.this.a.f() & 0xFF;
      }
      
      public final int read(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        if (o.this.c) {
          throw new IOException("closed");
        }
        u.a(paramAnonymousArrayOfByte.length, paramAnonymousInt1, paramAnonymousInt2);
        if ((o.this.a.b == 0L) && (o.this.b.read(o.this.a, 2048L) == -1L)) {
          return -1;
        }
        return o.this.a.a(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      }
      
      public final String toString()
      {
        return o.this + ".inputStream()";
      }
    };
  }
  
  public final byte[] e(long paramLong)
  {
    a(paramLong);
    return this.a.e(paramLong);
  }
  
  public final byte f()
  {
    a(1L);
    return this.a.f();
  }
  
  public final void f(long paramLong)
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    do
    {
      long l = Math.min(paramLong, this.a.b);
      this.a.f(l);
      paramLong -= l;
      if (paramLong <= 0L) {
        break;
      }
    } while ((this.a.b != 0L) || (this.b.read(this.a, 2048L) != -1L));
    throw new EOFException();
  }
  
  public final short g()
  {
    a(2L);
    return this.a.g();
  }
  
  public final int h()
  {
    a(4L);
    return this.a.h();
  }
  
  public final short i()
  {
    a(2L);
    return u.a(this.a.g());
  }
  
  public final int j()
  {
    a(4L);
    return u.a(this.a.h());
  }
  
  public final long k()
  {
    int i = 0;
    while (b(i + 1))
    {
      int j = this.a.b(i);
      if (((j < 48) || (j > 57)) && ((i != 0) || (j != 45))) {
        break;
      }
      i += 1;
    }
    if (i == 0) {
      throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(this.a.b(0L)));
    }
    return this.a.k();
  }
  
  public final long l()
  {
    int i = 0;
    while (b(i + 1))
    {
      int j = this.a.b(i);
      if (((j < 48) || (j > 57)) && ((j < 97) || (j > 102)) && ((j < 65) || (j > 70))) {
        break;
      }
      i += 1;
    }
    if (i == 0) {
      throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(this.a.b(0L)));
    }
    return this.a.l();
  }
  
  public final String n()
  {
    long l = a((byte)10);
    if (l == -1L)
    {
      d locald = new d();
      this.a.a(locald, 0L, Math.min(32L, this.a.b));
      throw new EOFException("\\n not found: size=" + this.a.b + " content=" + locald.m().b() + "...");
    }
    return this.a.d(l);
  }
  
  public final byte[] o()
  {
    this.a.a(this.b);
    return this.a.o();
  }
  
  public final long read(d paramd, long paramLong)
  {
    if (paramd == null) {
      throw new IllegalArgumentException("sink == null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    if ((this.a.b == 0L) && (this.b.read(this.a, 2048L) == -1L)) {
      return -1L;
    }
    paramLong = Math.min(paramLong, this.a.b);
    return this.a.read(paramd, paramLong);
  }
  
  public final t timeout()
  {
    return this.b.timeout();
  }
  
  public final String toString()
  {
    return "buffer(" + this.b + ")";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */