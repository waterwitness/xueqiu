package c;

import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class d
  implements e, f, Cloneable
{
  private static final byte[] c = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  p a;
  public long b;
  
  private String a(long paramLong, Charset paramCharset)
  {
    u.a(this.b, 0L, paramLong);
    if (paramCharset == null) {
      throw new IllegalArgumentException("charset == null");
    }
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    }
    if (paramLong == 0L) {
      paramCharset = "";
    }
    p localp;
    String str;
    do
    {
      return paramCharset;
      localp = this.a;
      if (localp.b + paramLong > localp.c) {
        return new String(e(paramLong), paramCharset);
      }
      str = new String(localp.a, localp.b, (int)paramLong, paramCharset);
      localp.b = ((int)(localp.b + paramLong));
      this.b -= paramLong;
      paramCharset = str;
    } while (localp.b != localp.c);
    this.a = localp.a();
    q.a(localp);
    return str;
  }
  
  private void c(byte[] paramArrayOfByte)
  {
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = a(paramArrayOfByte, i, paramArrayOfByte.length - i);
      if (j == -1) {
        throw new EOFException();
      }
      i += j;
    }
  }
  
  private String k(long paramLong)
  {
    return a(paramLong, u.a);
  }
  
  private String r()
  {
    try
    {
      String str = a(this.b, u.a);
      return str;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  private d s()
  {
    d locald = new d();
    if (this.b == 0L) {
      return locald;
    }
    locald.a = new p(this.a);
    p localp1 = locald.a;
    p localp2 = locald.a;
    p localp3 = locald.a;
    localp2.g = localp3;
    localp1.f = localp3;
    for (localp1 = this.a.f; localp1 != this.a; localp1 = localp1.f) {
      locald.a.g.a(new p(localp1));
    }
    locald.b = this.b;
    return locald;
  }
  
  public final int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    u.a(paramArrayOfByte.length, paramInt1, paramInt2);
    p localp = this.a;
    if (localp == null) {
      paramInt1 = -1;
    }
    do
    {
      return paramInt1;
      paramInt2 = Math.min(paramInt2, localp.c - localp.b);
      System.arraycopy(localp.a, localp.b, paramArrayOfByte, paramInt1, paramInt2);
      localp.b += paramInt2;
      this.b -= paramInt2;
      paramInt1 = paramInt2;
    } while (localp.b != localp.c);
    this.a = localp.a();
    q.a(localp);
    return paramInt2;
  }
  
  public final long a(byte paramByte)
  {
    return a(paramByte, 0L);
  }
  
  public final long a(byte paramByte, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("fromIndex < 0");
    }
    Object localObject1 = this.a;
    if (localObject1 == null) {
      return -1L;
    }
    long l1 = 0L;
    int i = ((p)localObject1).c - ((p)localObject1).b;
    if (paramLong >= i) {}
    for (paramLong -= i;; paramLong = 0L)
    {
      l1 += i;
      Object localObject2 = ((p)localObject1).f;
      localObject1 = localObject2;
      if (localObject2 != this.a) {
        break;
      }
      return -1L;
      localObject2 = ((p)localObject1).a;
      paramLong = ((p)localObject1).b + paramLong;
      long l2 = ((p)localObject1).c;
      while (paramLong < l2)
      {
        if (localObject2[((int)paramLong)] == paramByte) {
          return l1 + paramLong - ((p)localObject1).b;
        }
        paramLong += 1L;
      }
    }
  }
  
  public final long a(s params)
  {
    if (params == null) {
      throw new IllegalArgumentException("source == null");
    }
    long l2;
    for (long l1 = 0L;; l1 += l2)
    {
      l2 = params.read(this, 2048L);
      if (l2 == -1L) {
        break;
      }
    }
    return l1;
  }
  
  public final d a()
  {
    return this;
  }
  
  public final d a(int paramInt)
  {
    p localp = d(1);
    byte[] arrayOfByte = localp.a;
    int i = localp.c;
    localp.c = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
    this.b += 1L;
    return this;
  }
  
  public final d a(d paramd, long paramLong1, long paramLong2)
  {
    if (paramd == null) {
      throw new IllegalArgumentException("out == null");
    }
    u.a(this.b, paramLong1, paramLong2);
    if (paramLong2 == 0L) {
      return this;
    }
    paramd.b += paramLong2;
    p localp2;
    long l1;
    long l2;
    for (p localp1 = this.a;; localp1 = localp1.f)
    {
      localp2 = localp1;
      l1 = paramLong1;
      l2 = paramLong2;
      if (paramLong1 < localp1.c - localp1.b) {
        break;
      }
      paramLong1 -= localp1.c - localp1.b;
    }
    label103:
    if (l2 > 0L)
    {
      localp1 = new p(localp2);
      localp1.b = ((int)(localp1.b + l1));
      localp1.c = Math.min(localp1.b + (int)l2, localp1.c);
      if (paramd.a != null) {
        break label215;
      }
      localp1.g = localp1;
      localp1.f = localp1;
      paramd.a = localp1;
    }
    for (;;)
    {
      l2 -= localp1.c - localp1.b;
      localp2 = localp2.f;
      l1 = 0L;
      break label103;
      break;
      label215:
      paramd.a.g.a(localp1);
    }
  }
  
  public final d a(g paramg)
  {
    if (paramg == null) {
      throw new IllegalArgumentException("byteString == null");
    }
    b(paramg.c, 0, paramg.c.length);
    return this;
  }
  
  public final d a(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("string == null");
    }
    int k = paramString.length();
    int i = 0;
    while (i < k)
    {
      int m = paramString.charAt(i);
      int j;
      if (m < 128)
      {
        p localp = d(1);
        byte[] arrayOfByte = localp.a;
        int n = localp.c - i;
        int i1 = Math.min(k, 2048 - n);
        j = i + 1;
        arrayOfByte[(i + n)] = ((byte)m);
        i = j;
        while (i < i1)
        {
          j = paramString.charAt(i);
          if (j >= 128) {
            break;
          }
          arrayOfByte[(i + n)] = ((byte)j);
          i += 1;
        }
        j = i + n - localp.c;
        localp.c += j;
        this.b += j;
      }
      else if (m < 2048)
      {
        a(m >> 6 | 0xC0);
        a(m & 0x3F | 0x80);
        i += 1;
      }
      else if ((m < 55296) || (m > 57343))
      {
        a(m >> 12 | 0xE0);
        a(m >> 6 & 0x3F | 0x80);
        a(m & 0x3F | 0x80);
        i += 1;
      }
      else
      {
        if (i + 1 < k) {}
        for (j = paramString.charAt(i + 1);; j = 0)
        {
          if ((m <= 56319) && (j >= 56320) && (j <= 57343)) {
            break label354;
          }
          a(63);
          i += 1;
          break;
        }
        label354:
        j = (j & 0xFFFF23FF | (m & 0xFFFF27FF) << 10) + 65536;
        a(j >> 18 | 0xF0);
        a(j >> 12 & 0x3F | 0x80);
        a(j >> 6 & 0x3F | 0x80);
        a(j & 0x3F | 0x80);
        i += 2;
      }
    }
    return this;
  }
  
  public final d a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    return b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public final void a(long paramLong)
  {
    if (this.b < paramLong) {
      throw new EOFException();
    }
  }
  
  public final byte b(long paramLong)
  {
    u.a(this.b, paramLong, 1L);
    for (p localp = this.a;; localp = localp.f)
    {
      int i = localp.c - localp.b;
      if (paramLong < i) {
        return localp.a[(localp.b + (int)paramLong)];
      }
      paramLong -= i;
    }
  }
  
  public final d b(int paramInt)
  {
    p localp = d(2);
    byte[] arrayOfByte = localp.a;
    int i = localp.c;
    int j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[j] = ((byte)(paramInt & 0xFF));
    localp.c = (j + 1);
    this.b += 2L;
    return this;
  }
  
  public final d b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    u.a(paramArrayOfByte.length, paramInt1, paramInt2);
    int i = paramInt1 + paramInt2;
    while (paramInt1 < i)
    {
      p localp = d(1);
      int j = Math.min(i - paramInt1, 2048 - localp.c);
      System.arraycopy(paramArrayOfByte, paramInt1, localp.a, localp.c, j);
      paramInt1 += j;
      localp.c = (j + localp.c);
    }
    this.b += paramInt2;
    return this;
  }
  
  public final OutputStream b()
  {
    new OutputStream()
    {
      public final void close() {}
      
      public final void flush() {}
      
      public final String toString()
      {
        return this + ".outputStream()";
      }
      
      public final void write(int paramAnonymousInt)
      {
        d.this.a((byte)paramAnonymousInt);
      }
      
      public final void write(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        d.this.b(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      }
    };
  }
  
  public final d c(int paramInt)
  {
    p localp = d(4);
    byte[] arrayOfByte = localp.a;
    int j = localp.c;
    int i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 24 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 16 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[i] = ((byte)(paramInt & 0xFF));
    localp.c = (i + 1);
    this.b += 4L;
    return this;
  }
  
  public final e c()
  {
    return this;
  }
  
  public final g c(long paramLong)
  {
    return new g(e(paramLong));
  }
  
  public final void close() {}
  
  final p d(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > 2048)) {
      throw new IllegalArgumentException();
    }
    p localp2;
    p localp1;
    if (this.a == null)
    {
      this.a = q.a();
      localp2 = this.a;
      p localp3 = this.a;
      localp1 = this.a;
      localp3.g = localp1;
      localp2.f = localp1;
    }
    do
    {
      return localp1;
      localp2 = this.a.g;
      if (localp2.c + paramInt > 2048) {
        break;
      }
      localp1 = localp2;
    } while (localp2.e);
    return localp2.a(q.a());
  }
  
  final String d(long paramLong)
  {
    if ((paramLong > 0L) && (b(paramLong - 1L) == 13))
    {
      str = k(paramLong - 1L);
      f(2L);
      return str;
    }
    String str = k(paramLong);
    f(1L);
    return str;
  }
  
  public final boolean d()
  {
    return this.b == 0L;
  }
  
  public final InputStream e()
  {
    new InputStream()
    {
      public final int available()
      {
        return (int)Math.min(d.this.b, 2147483647L);
      }
      
      public final void close() {}
      
      public final int read()
      {
        if (d.this.b > 0L) {
          return d.this.f() & 0xFF;
        }
        return -1;
      }
      
      public final int read(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        return d.this.a(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      }
      
      public final String toString()
      {
        return d.this + ".inputStream()";
      }
    };
  }
  
  public final byte[] e(long paramLong)
  {
    u.a(this.b, 0L, paramLong);
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    }
    byte[] arrayOfByte = new byte[(int)paramLong];
    c(arrayOfByte);
    return arrayOfByte;
  }
  
  public final boolean equals(Object paramObject)
  {
    long l1 = 0L;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof d)) {
      return false;
    }
    paramObject = (d)paramObject;
    if (this.b != ((d)paramObject).b) {
      return false;
    }
    if (this.b == 0L) {
      return true;
    }
    Object localObject2 = this.a;
    paramObject = ((d)paramObject).a;
    int j = ((p)localObject2).b;
    int i = ((p)paramObject).b;
    while (l1 < this.b)
    {
      long l2 = Math.min(((p)localObject2).c - j, ((p)paramObject).c - i);
      int k = 0;
      while (k < l2)
      {
        if (localObject2.a[j] != paramObject.a[i]) {
          return false;
        }
        k += 1;
        i += 1;
        j += 1;
      }
      k = j;
      Object localObject1 = localObject2;
      if (j == ((p)localObject2).c)
      {
        localObject1 = ((p)localObject2).f;
        k = ((p)localObject1).b;
      }
      j = i;
      Object localObject3 = paramObject;
      if (i == ((p)paramObject).c)
      {
        localObject3 = ((p)paramObject).f;
        j = ((p)localObject3).b;
      }
      l1 += l2;
      i = j;
      j = k;
      localObject2 = localObject1;
      paramObject = localObject3;
    }
    return true;
  }
  
  public final byte f()
  {
    if (this.b == 0L) {
      throw new IllegalStateException("size == 0");
    }
    p localp = this.a;
    int i = localp.b;
    int j = localp.c;
    byte[] arrayOfByte = localp.a;
    int k = i + 1;
    byte b1 = arrayOfByte[i];
    this.b -= 1L;
    if (k == j)
    {
      this.a = localp.a();
      q.a(localp);
      return b1;
    }
    localp.b = k;
    return b1;
  }
  
  public final void f(long paramLong)
  {
    while (paramLong > 0L)
    {
      if (this.a == null) {
        throw new EOFException();
      }
      int i = (int)Math.min(paramLong, this.a.c - this.a.b);
      this.b -= i;
      long l = paramLong - i;
      p localp = this.a;
      localp.b = (i + localp.b);
      paramLong = l;
      if (this.a.b == this.a.c)
      {
        localp = this.a;
        this.a = localp.a();
        q.a(localp);
        paramLong = l;
      }
    }
  }
  
  public final void flush() {}
  
  public final d g(long paramLong)
  {
    if (paramLong == 0L) {
      return a(48);
    }
    if (paramLong < 0L)
    {
      paramLong = -paramLong;
      if (paramLong < 0L) {
        return a("-9223372036854775808");
      }
    }
    for (int j = 1;; j = 0)
    {
      int i;
      if (paramLong < 100000000L) {
        if (paramLong < 10000L) {
          if (paramLong < 100L) {
            if (paramLong < 10L) {
              i = 1;
            }
          }
        }
      }
      int k;
      p localp;
      byte[] arrayOfByte;
      for (;;)
      {
        k = i;
        if (j != 0) {
          k = i + 1;
        }
        localp = d(k);
        arrayOfByte = localp.a;
        i = localp.c + k;
        while (paramLong != 0L)
        {
          int m = (int)(paramLong % 10L);
          i -= 1;
          arrayOfByte[i] = c[m];
          paramLong /= 10L;
        }
        i = 2;
        continue;
        if (paramLong < 1000L)
        {
          i = 3;
        }
        else
        {
          i = 4;
          continue;
          if (paramLong < 1000000L)
          {
            if (paramLong < 100000L) {
              i = 5;
            } else {
              i = 6;
            }
          }
          else if (paramLong < 10000000L)
          {
            i = 7;
          }
          else
          {
            i = 8;
            continue;
            if (paramLong < 1000000000000L)
            {
              if (paramLong < 10000000000L)
              {
                if (paramLong < 1000000000L) {
                  i = 9;
                } else {
                  i = 10;
                }
              }
              else if (paramLong < 100000000000L) {
                i = 11;
              } else {
                i = 12;
              }
            }
            else if (paramLong < 1000000000000000L)
            {
              if (paramLong < 10000000000000L) {
                i = 13;
              } else if (paramLong < 100000000000000L) {
                i = 14;
              } else {
                i = 15;
              }
            }
            else if (paramLong < 100000000000000000L)
            {
              if (paramLong < 10000000000000000L) {
                i = 16;
              } else {
                i = 17;
              }
            }
            else if (paramLong < 1000000000000000000L) {
              i = 18;
            } else {
              i = 19;
            }
          }
        }
      }
      if (j != 0) {
        arrayOfByte[(i - 1)] = 45;
      }
      localp.c += k;
      paramLong = this.b;
      this.b = (k + paramLong);
      return this;
    }
  }
  
  public final short g()
  {
    if (this.b < 2L) {
      throw new IllegalStateException("size < 2: " + this.b);
    }
    p localp = this.a;
    int k = localp.b;
    int i = localp.c;
    if (i - k < 2) {
      return (short)((f() & 0xFF) << 8 | f() & 0xFF);
    }
    byte[] arrayOfByte = localp.a;
    int j = k + 1;
    k = arrayOfByte[k];
    int m = j + 1;
    j = arrayOfByte[j];
    this.b -= 2L;
    if (m == i)
    {
      this.a = localp.a();
      q.a(localp);
    }
    for (;;)
    {
      return (short)((k & 0xFF) << 8 | j & 0xFF);
      localp.b = m;
    }
  }
  
  public final int h()
  {
    if (this.b < 4L) {
      throw new IllegalStateException("size < 4: " + this.b);
    }
    p localp = this.a;
    int j = localp.b;
    int i = localp.c;
    if (i - j < 4) {
      return (f() & 0xFF) << 24 | (f() & 0xFF) << 16 | (f() & 0xFF) << 8 | f() & 0xFF;
    }
    byte[] arrayOfByte = localp.a;
    int k = j + 1;
    j = arrayOfByte[j];
    int n = k + 1;
    k = arrayOfByte[k];
    int m = n + 1;
    int i1 = arrayOfByte[n];
    n = m + 1;
    j = (j & 0xFF) << 24 | (k & 0xFF) << 16 | (i1 & 0xFF) << 8 | arrayOfByte[m] & 0xFF;
    this.b -= 4L;
    if (n == i)
    {
      this.a = localp.a();
      q.a(localp);
      return j;
    }
    localp.b = n;
    return j;
  }
  
  public final d h(long paramLong)
  {
    if (paramLong == 0L) {
      return a(48);
    }
    int j = Long.numberOfTrailingZeros(Long.highestOneBit(paramLong)) / 4 + 1;
    p localp = d(j);
    byte[] arrayOfByte = localp.a;
    int i = localp.c + j - 1;
    int k = localp.c;
    while (i >= k)
    {
      arrayOfByte[i] = c[((int)(0xF & paramLong))];
      paramLong >>>= 4;
      i -= 1;
    }
    localp.c += j;
    paramLong = this.b;
    this.b = (j + paramLong);
    return this;
  }
  
  public final int hashCode()
  {
    Object localObject = this.a;
    if (localObject == null) {
      return 0;
    }
    int j = 1;
    int i;
    p localp;
    do
    {
      int k = ((p)localObject).b;
      int m = ((p)localObject).c;
      for (i = j; k < m; i = j + i * 31)
      {
        j = localObject.a[k];
        k += 1;
      }
      localp = ((p)localObject).f;
      j = i;
      localObject = localp;
    } while (localp != this.a);
    return i;
  }
  
  public final short i()
  {
    return u.a(g());
  }
  
  public final int j()
  {
    return u.a(h());
  }
  
  public final long k()
  {
    if (this.b == 0L) {
      throw new IllegalStateException("size == 0");
    }
    long l2 = 0L;
    int n = 0;
    int i1 = 0;
    int i = 0;
    long l3 = -7L;
    Object localObject = this.a;
    byte[] arrayOfByte = ((p)localObject).a;
    int m = ((p)localObject).b;
    int i2 = ((p)localObject).c;
    long l1 = l2;
    int j = n;
    int k = i1;
    l2 = l3;
    n = i;
    if (m < i2)
    {
      n = arrayOfByte[m];
      if ((n >= 48) && (n <= 57))
      {
        i1 = 48 - n;
        if ((l1 < -922337203685477580L) || ((l1 == -922337203685477580L) && (i1 < l2)))
        {
          localObject = new d().g(l1).a(n);
          if (k == 0) {
            ((d)localObject).f();
          }
          throw new NumberFormatException("Number too large: " + ((d)localObject).r());
        }
        l1 = l1 * 10L + i1;
      }
      for (;;)
      {
        m += 1;
        j += 1;
        break;
        if ((n != 45) || (j != 0)) {
          break label245;
        }
        k = 1;
        l2 -= 1L;
      }
      label245:
      if (j == 0) {
        throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(n));
      }
      n = 1;
    }
    if (m == i2)
    {
      this.a = ((p)localObject).a();
      q.a((p)localObject);
    }
    for (;;)
    {
      if (n == 0)
      {
        l3 = l2;
        i = n;
        i1 = k;
        n = j;
        l2 = l1;
        if (this.a != null) {
          break;
        }
      }
      this.b -= j;
      if (k == 0) {
        break label361;
      }
      return l1;
      ((p)localObject).b = m;
    }
    label361:
    return -l1;
  }
  
  public final long l()
  {
    if (this.b == 0L) {
      throw new IllegalStateException("size == 0");
    }
    long l2 = 0L;
    int i = 0;
    int j = 0;
    Object localObject = this.a;
    byte[] arrayOfByte = ((p)localObject).a;
    int m = ((p)localObject).b;
    int n = ((p)localObject).c;
    long l1 = l2;
    int k = i;
    label57:
    i = j;
    if (m < n)
    {
      int i1 = arrayOfByte[m];
      if ((i1 >= 48) && (i1 <= 57)) {
        i = i1 - 48;
      }
      for (;;)
      {
        if ((0xF000000000000000 & l1) == 0L) {
          break label293;
        }
        localObject = new d().h(l1).a(i1);
        throw new NumberFormatException("Number too large: " + ((d)localObject).r());
        if ((i1 >= 97) && (i1 <= 102))
        {
          i = i1 - 97 + 10;
        }
        else
        {
          if ((i1 < 65) || (i1 > 70)) {
            break;
          }
          i = i1 - 65 + 10;
        }
      }
      if (k == 0) {
        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(i1));
      }
      i = 1;
    }
    if (m == n)
    {
      this.a = ((p)localObject).a();
      q.a((p)localObject);
    }
    for (;;)
    {
      if (i == 0)
      {
        j = i;
        i = k;
        l2 = l1;
        if (this.a != null) {
          break;
        }
      }
      this.b -= k;
      return l1;
      label293:
      l2 = i;
      k += 1;
      m += 1;
      l1 = l2 | l1 << 4;
      break label57;
      ((p)localObject).b = m;
    }
  }
  
  public final g m()
  {
    return new g(o());
  }
  
  public final String n()
  {
    long l = a((byte)10, 0L);
    if (l == -1L)
    {
      d locald = new d();
      a(locald, 0L, Math.min(32L, this.b));
      throw new EOFException("\\n not found: size=" + this.b + " content=" + locald.m().b() + "...");
    }
    return d(l);
  }
  
  public final byte[] o()
  {
    try
    {
      byte[] arrayOfByte = e(this.b);
      return arrayOfByte;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public final void p()
  {
    try
    {
      f(this.b);
      return;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public final long read(d paramd, long paramLong)
  {
    if (paramd == null) {
      throw new IllegalArgumentException("sink == null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.b == 0L) {
      return -1L;
    }
    long l = paramLong;
    if (paramLong > this.b) {
      l = this.b;
    }
    paramd.write(this, l);
    return l;
  }
  
  public final t timeout()
  {
    return t.NONE;
  }
  
  public final String toString()
  {
    if (this.b == 0L) {
      return "Buffer[size=0]";
    }
    Object localObject;
    if (this.b <= 16L)
    {
      localObject = s().m();
      return String.format("Buffer[size=%s data=%s]", new Object[] { Long.valueOf(this.b), ((g)localObject).b() });
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(this.a.a, this.a.b, this.a.c - this.a.b);
      for (localObject = this.a.f; localObject != this.a; localObject = ((p)localObject).f) {
        localMessageDigest.update(((p)localObject).a, ((p)localObject).b, ((p)localObject).c - ((p)localObject).b);
      }
      localObject = String.format("Buffer[size=%s md5=%s]", new Object[] { Long.valueOf(this.b), g.a(localMessageDigest.digest()).b() });
      return (String)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new AssertionError();
    }
  }
  
  public final void write(d paramd, long paramLong)
  {
    if (paramd == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramd == this) {
      throw new IllegalArgumentException("source == this");
    }
    u.a(paramd.b, 0L, paramLong);
    if (paramLong > 0L)
    {
      if (paramLong >= paramd.a.c - paramd.a.b) {
        break label270;
      }
      if (this.a == null) {
        break label161;
      }
      localp1 = this.a.g;
      if ((localp1 == null) || (!localp1.e)) {
        break label177;
      }
      l = localp1.c;
      if (!localp1.d) {
        break label167;
      }
    }
    label161:
    label167:
    for (int i = 0;; i = localp1.b)
    {
      if (l + paramLong - i > 2048L) {
        break label177;
      }
      paramd.a.a(localp1, (int)paramLong);
      paramd.b -= paramLong;
      this.b += paramLong;
      return;
      localp1 = null;
      break;
    }
    label177:
    p localp1 = paramd.a;
    i = (int)paramLong;
    if ((i <= 0) || (i > localp1.c - localp1.b)) {
      throw new IllegalArgumentException();
    }
    p localp2 = new p(localp1);
    localp2.c = (localp2.b + i);
    localp1.b = (i + localp1.b);
    localp1.g.a(localp2);
    paramd.a = localp2;
    label270:
    localp1 = paramd.a;
    long l = localp1.c - localp1.b;
    paramd.a = localp1.a();
    if (this.a == null)
    {
      this.a = localp1;
      localp1 = this.a;
      localp2 = this.a;
      p localp3 = this.a;
      localp2.g = localp3;
      localp1.f = localp3;
    }
    label505:
    for (;;)
    {
      paramd.b -= l;
      this.b += l;
      paramLong -= l;
      break;
      localp1 = this.a.g.a(localp1);
      if (localp1.g == localp1) {
        throw new IllegalStateException();
      }
      if (localp1.g.e)
      {
        int j = localp1.c - localp1.b;
        int k = localp1.g.c;
        if (localp1.g.d) {}
        for (i = 0;; i = localp1.g.b)
        {
          if (j > i + (2048 - k)) {
            break label505;
          }
          localp1.a(localp1.g, j);
          localp1.a();
          q.a(localp1);
          break;
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */