package org.apache.a.b;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.apache.a.a;
import org.apache.a.c.d;

public final class c
  extends h
{
  private static final m d = new m("");
  private static final e f = new e("", (byte)0, (short)0);
  private static final byte[] g;
  byte[] a = new byte[5];
  byte[] b = new byte[10];
  byte[] c = new byte[1];
  private a h = new a();
  private short i = 0;
  private e j = null;
  private Boolean k = null;
  private byte[] l = new byte[1];
  
  static
  {
    byte[] arrayOfByte = new byte[16];
    g = arrayOfByte;
    arrayOfByte[0] = 0;
    g[2] = 1;
    g[3] = 3;
    g[6] = 4;
    g[8] = 5;
    g[10] = 6;
    g[4] = 7;
    g[11] = 8;
    g[15] = 9;
    g[14] = 10;
    g[13] = 11;
    g[12] = 12;
  }
  
  public c(d paramd)
  {
    super(paramd);
  }
  
  private void a(byte paramByte, int paramInt)
  {
    if (paramInt <= 14)
    {
      b((byte)(paramInt << 4 | g[paramByte]));
      return;
    }
    b((byte)(g[paramByte] | 0xF0));
    b(paramInt);
  }
  
  private void a(e parame, byte paramByte)
  {
    int m = paramByte;
    if (paramByte == -1)
    {
      int n = parame.b;
      m = g[n];
    }
    if ((parame.c > this.i) && (parame.c - this.i <= 15)) {
      b((byte)(parame.c - this.i << 4 | m));
    }
    for (;;)
    {
      this.i = parame.c;
      return;
      b(m);
      b(c(parame.c));
    }
  }
  
  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    b(paramInt2);
    this.e.b(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private void b(byte paramByte)
  {
    this.l[0] = paramByte;
    d locald = this.e;
    byte[] arrayOfByte = this.l;
    locald.b(arrayOfByte, 0, arrayOfByte.length);
  }
  
  private void b(int paramInt)
  {
    int n = 0;
    int m = paramInt;
    paramInt = n;
    for (;;)
    {
      if ((m & 0xFFFFFF80) == 0)
      {
        this.a[paramInt] = ((byte)m);
        this.e.b(this.a, 0, paramInt + 1);
        return;
      }
      this.a[paramInt] = ((byte)(m & 0x7F | 0x80));
      m >>>= 7;
      paramInt += 1;
    }
  }
  
  private static byte c(byte paramByte)
  {
    byte b1 = 0;
    switch ((byte)(paramByte & 0xF))
    {
    default: 
      throw new i("don't know what type: " + (byte)(paramByte & 0xF), (byte)0);
    case 1: 
    case 2: 
      b1 = 2;
    case 0: 
      return b1;
    case 3: 
      return 3;
    case 4: 
      return 6;
    case 5: 
      return 8;
    case 6: 
      return 10;
    case 7: 
      return 4;
    case 8: 
      return 11;
    case 9: 
      return 15;
    case 10: 
      return 14;
    case 11: 
      return 13;
    }
    return 12;
  }
  
  private static int c(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }
  
  private static int d(int paramInt)
  {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }
  
  private int s()
  {
    int i1 = 0;
    int m = 0;
    int n;
    if (this.e.c() >= 5)
    {
      byte[] arrayOfByte = this.e.a();
      int i2 = this.e.b();
      n = 0;
      i1 = 0;
      for (;;)
      {
        int i3 = arrayOfByte[(i2 + m)];
        i1 |= (i3 & 0x7F) << n;
        if ((i3 & 0x80) != 128) {
          break;
        }
        n += 7;
        m += 1;
      }
      this.e.a(m + 1);
      return i1;
    }
    for (;;)
    {
      i1 = k();
      n |= (i1 & 0x7F) << m;
      if ((i1 & 0x80) == 128)
      {
        m += 7;
      }
      else
      {
        return n;
        n = 0;
        m = i1;
      }
    }
  }
  
  public final void a()
  {
    this.h.a(this.i);
    this.i = 0;
  }
  
  public final void a(byte paramByte)
  {
    b(paramByte);
  }
  
  public final void a(int paramInt)
  {
    b(c(paramInt));
  }
  
  public final void a(long paramLong)
  {
    paramLong = paramLong << 1 ^ paramLong >> 63;
    int m = 0;
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        this.b[m] = ((byte)(int)paramLong);
        this.e.b(this.b, 0, m + 1);
        return;
      }
      this.b[m] = ((byte)(int)(0x7F & paramLong | 0x80));
      paramLong >>>= 7;
      m += 1;
    }
  }
  
  public final void a(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      a(paramString, 0, paramString.length);
      return;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new org.apache.a.g("UTF-8 not supported!");
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    int m = paramByteBuffer.limit();
    int n = paramByteBuffer.position();
    int i1 = paramByteBuffer.arrayOffset();
    a(paramByteBuffer.array(), paramByteBuffer.position() + paramByteBuffer.arrayOffset(), m - n - i1);
  }
  
  public final void a(e parame)
  {
    if (parame.b == 2)
    {
      this.j = parame;
      return;
    }
    a(parame, (byte)-1);
  }
  
  public final void a(f paramf)
  {
    a(paramf.a, paramf.b);
  }
  
  public final void a(g paramg)
  {
    if (paramg.c == 0)
    {
      b((byte)0);
      return;
    }
    b(paramg.c);
    int m = paramg.a;
    m = g[m];
    int n = paramg.b;
    b((byte)(m << 4 | g[n]));
  }
  
  public final void a(l paraml)
  {
    a(paraml.a, paraml.b);
  }
  
  public final void a(boolean paramBoolean)
  {
    byte b2 = 1;
    byte b1 = 1;
    if (this.j != null)
    {
      e locale = this.j;
      if (paramBoolean) {}
      for (;;)
      {
        a(locale, b1);
        this.j = null;
        return;
        b1 = 2;
      }
    }
    if (paramBoolean) {}
    for (b1 = b2;; b1 = 2)
    {
      b(b1);
      return;
    }
  }
  
  public final void b()
  {
    this.i = this.h.a();
  }
  
  public final void c()
  {
    b((byte)0);
  }
  
  public final m d()
  {
    this.h.a(this.i);
    this.i = 0;
    return d;
  }
  
  public final void e()
  {
    this.i = this.h.a();
  }
  
  public final e f()
  {
    int n = k();
    if (n == 0) {
      return f;
    }
    int m = (short)((n & 0xF0) >> 4);
    short s;
    e locale;
    if (m == 0)
    {
      s = l();
      locale = new e("", c((byte)(n & 0xF)), s);
      m = n & 0xF;
      if ((m != 1) && (m != 2)) {
        break label124;
      }
      m = 1;
      label78:
      if (m != 0) {
        if ((byte)(n & 0xF) != 1) {
          break label130;
        }
      }
    }
    label124:
    label130:
    for (Boolean localBoolean = Boolean.TRUE;; localBoolean = Boolean.FALSE)
    {
      this.k = localBoolean;
      this.i = locale.c;
      return locale;
      s = (short)(m + this.i);
      break;
      m = 0;
      break label78;
    }
  }
  
  public final g g()
  {
    int n = s();
    if (n == 0) {}
    for (int m = 0;; m = k()) {
      return new g(c((byte)(m >> 4)), c((byte)(m & 0xF)), n);
    }
  }
  
  public final f h()
  {
    byte b1 = k();
    int n = b1 >> 4 & 0xF;
    int m = n;
    if (n == 15) {
      m = s();
    }
    return new f(c(b1), m);
  }
  
  public final l i()
  {
    return new l(h());
  }
  
  public final boolean j()
  {
    boolean bool = true;
    if (this.k != null)
    {
      bool = this.k.booleanValue();
      this.k = null;
    }
    while (k() == 1) {
      return bool;
    }
    return false;
  }
  
  public final byte k()
  {
    if (this.e.c() > 0)
    {
      byte b1 = this.e.a()[this.e.b()];
      this.e.a(1);
      return b1;
    }
    this.e.a(this.c, 1);
    return this.c[0];
  }
  
  public final short l()
  {
    return (short)d(s());
  }
  
  public final int m()
  {
    return d(s());
  }
  
  public final long n()
  {
    int m = 0;
    int i1 = 0;
    long l1 = 0L;
    long l2 = l1;
    int n;
    if (this.e.c() >= 10)
    {
      byte[] arrayOfByte = this.e.a();
      int i2 = this.e.b();
      n = 0;
      m = i1;
      for (;;)
      {
        i1 = arrayOfByte[(i2 + m)];
        l1 |= (i1 & 0x7F) << n;
        if ((i1 & 0x80) != 128) {
          break;
        }
        n += 7;
        m += 1;
      }
      this.e.a(m + 1);
      return l1 >>> 1 ^ -(l1 & 1L);
    }
    for (;;)
    {
      n = k();
      l2 |= (n & 0x7F) << m;
      l1 = l2;
      if ((n & 0x80) != 128) {
        break;
      }
      m += 7;
    }
  }
  
  public final double o()
  {
    byte[] arrayOfByte = new byte[8];
    this.e.a(arrayOfByte, 8);
    long l1 = arrayOfByte[7];
    long l2 = arrayOfByte[6];
    long l3 = arrayOfByte[5];
    long l4 = arrayOfByte[4];
    long l5 = arrayOfByte[3];
    long l6 = arrayOfByte[2];
    long l7 = arrayOfByte[1];
    return Double.longBitsToDouble(arrayOfByte[0] & 0xFF | (l1 & 0xFF) << 56 | (l2 & 0xFF) << 48 | (l3 & 0xFF) << 40 | (l4 & 0xFF) << 32 | (l5 & 0xFF) << 24 | (l6 & 0xFF) << 16 | (l7 & 0xFF) << 8);
  }
  
  public final String p()
  {
    int m = s();
    if (m == 0) {
      return "";
    }
    try
    {
      if (this.e.c() >= m)
      {
        String str = new String(this.e.a(), this.e.b(), m, "UTF-8");
        this.e.a(m);
        return str;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new org.apache.a.g("UTF-8 not supported!");
    }
    byte[] arrayOfByte;
    if (m == 0) {
      arrayOfByte = new byte[0];
    }
    for (;;)
    {
      return new String(arrayOfByte, "UTF-8");
      arrayOfByte = new byte[m];
      this.e.a(arrayOfByte, m);
    }
  }
  
  public final ByteBuffer q()
  {
    int m = s();
    if (m == 0) {
      return ByteBuffer.wrap(new byte[0]);
    }
    byte[] arrayOfByte = new byte[m];
    this.e.a(arrayOfByte, m);
    return ByteBuffer.wrap(arrayOfByte);
  }
  
  public final void r()
  {
    this.h.a = -1;
    this.i = 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\a\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */