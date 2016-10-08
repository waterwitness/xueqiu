package u.aly;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class fv
  extends ga
{
  private static final gg d = new gg("");
  private static final fx f = new fx("", (byte)0, (short)0);
  private static final byte[] g;
  byte[] a = new byte[5];
  byte[] b = new byte[10];
  byte[] c = new byte[1];
  private ez h = new ez();
  private short i = 0;
  private fx j = null;
  private Boolean k = null;
  private final long l;
  private byte[] m = new byte[1];
  
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
  
  public fv(go paramgo, long paramLong)
  {
    super(paramgo);
    this.l = paramLong;
  }
  
  private void a(fx paramfx, byte paramByte)
  {
    int n = paramByte;
    if (paramByte == -1)
    {
      int i1 = paramfx.b;
      n = g[i1];
    }
    if ((paramfx.c > this.i) && (paramfx.c - this.i <= 15)) {
      b((byte)(paramfx.c - this.i << 4 | n));
    }
    for (;;)
    {
      this.i = paramfx.c;
      return;
      b(n);
      a(paramfx.c);
    }
  }
  
  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    b(paramInt2);
    this.e.b(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private void b(byte paramByte)
  {
    this.m[0] = paramByte;
    this.e.a(this.m);
  }
  
  private void b(int paramInt)
  {
    int i1 = 0;
    int n = paramInt;
    paramInt = i1;
    for (;;)
    {
      if ((n & 0xFFFFFF80) == 0)
      {
        this.a[paramInt] = ((byte)n);
        this.e.b(this.a, 0, paramInt + 1);
        return;
      }
      this.a[paramInt] = ((byte)(n & 0x7F | 0x80));
      n >>>= 7;
      paramInt += 1;
    }
  }
  
  private static byte c(byte paramByte)
  {
    switch ((byte)(paramByte & 0xF))
    {
    default: 
      throw new gb("don't know what type: " + (byte)(paramByte & 0xF));
    case 0: 
      return 0;
    case 1: 
    case 2: 
      return 2;
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
  
  private void d(int paramInt)
  {
    if (paramInt < 0) {
      throw new gb("Negative length: " + paramInt);
    }
    if ((this.l != -1L) && (paramInt > this.l)) {
      throw new gb("Length exceeded max allowed: " + paramInt);
    }
  }
  
  private static int e(int paramInt)
  {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }
  
  private int t()
  {
    int i2 = 0;
    int n = 0;
    int i1;
    if (this.e.c() >= 5)
    {
      byte[] arrayOfByte = this.e.a();
      int i3 = this.e.b();
      i1 = 0;
      i2 = 0;
      for (;;)
      {
        int i4 = arrayOfByte[(i3 + n)];
        i2 |= (i4 & 0x7F) << i1;
        if ((i4 & 0x80) != 128) {
          break;
        }
        i1 += 7;
        n += 1;
      }
      this.e.a(n + 1);
      return i2;
    }
    for (;;)
    {
      i2 = k();
      i1 |= (i2 & 0x7F) << n;
      if ((i2 & 0x80) == 128)
      {
        n += 7;
      }
      else
      {
        return i1;
        i1 = 0;
        n = i2;
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
  
  public final void a(double paramDouble)
  {
    long l1 = Double.doubleToLongBits(paramDouble);
    int n = (byte)(int)(l1 & 0xFF);
    int i1 = (byte)(int)(l1 >> 8 & 0xFF);
    int i2 = (byte)(int)(l1 >> 16 & 0xFF);
    int i3 = (byte)(int)(l1 >> 24 & 0xFF);
    int i4 = (byte)(int)(l1 >> 32 & 0xFF);
    int i5 = (byte)(int)(l1 >> 40 & 0xFF);
    int i6 = (byte)(int)(l1 >> 48 & 0xFF);
    int i7 = (byte)(int)(l1 >> 56 & 0xFF);
    this.e.a(new byte[] { n, i1, i2, i3, i4, i5, i6, i7 });
  }
  
  public final void a(int paramInt)
  {
    b(c(paramInt));
  }
  
  public final void a(long paramLong)
  {
    paramLong = paramLong << 1 ^ paramLong >> 63;
    int n = 0;
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        this.b[n] = ((byte)(int)paramLong);
        this.e.b(this.b, 0, n + 1);
        return;
      }
      this.b[n] = ((byte)(int)(0x7F & paramLong | 0x80));
      paramLong >>>= 7;
      n += 1;
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
      throw new ff("UTF-8 not supported!");
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    int n = paramByteBuffer.limit();
    int i1 = paramByteBuffer.position();
    a(paramByteBuffer.array(), paramByteBuffer.position() + paramByteBuffer.arrayOffset(), n - i1);
  }
  
  public final void a(fx paramfx)
  {
    if (paramfx.b == 2)
    {
      this.j = paramfx;
      return;
    }
    a(paramfx, (byte)-1);
  }
  
  public final void a(fy paramfy)
  {
    int n = paramfy.a;
    int i1 = paramfy.b;
    if (i1 <= 14)
    {
      b((byte)(g[n] | i1 << 4));
      return;
    }
    b((byte)(g[n] | 0xF0));
    b(i1);
  }
  
  public final void a(fz paramfz)
  {
    if (paramfz.c == 0)
    {
      b((byte)0);
      return;
    }
    b(paramfz.c);
    int n = paramfz.a;
    n = g[n];
    int i1 = paramfz.b;
    b((byte)(n << 4 | g[i1]));
  }
  
  public final void a(short paramShort)
  {
    b(c(paramShort));
  }
  
  public final void a(boolean paramBoolean)
  {
    byte b2 = 1;
    byte b1 = 1;
    if (this.j != null)
    {
      fx localfx = this.j;
      if (paramBoolean) {}
      for (;;)
      {
        a(localfx, b1);
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
  
  public final gg d()
  {
    this.h.a(this.i);
    this.i = 0;
    return d;
  }
  
  public final void e()
  {
    this.i = this.h.a();
  }
  
  public final fx f()
  {
    int i1 = k();
    if (i1 == 0) {
      return f;
    }
    int n = (short)((i1 & 0xF0) >> 4);
    short s;
    fx localfx;
    if (n == 0)
    {
      s = l();
      localfx = new fx("", c((byte)(i1 & 0xF)), s);
      n = i1 & 0xF;
      if ((n == 1) || (n == 2)) {
        break label124;
      }
      n = 0;
      label78:
      if (n != 0) {
        if ((byte)(i1 & 0xF) != 1) {
          break label130;
        }
      }
    }
    label124:
    label130:
    for (Boolean localBoolean = Boolean.TRUE;; localBoolean = Boolean.FALSE)
    {
      this.k = localBoolean;
      this.i = localfx.c;
      return localfx;
      s = (short)(n + this.i);
      break;
      n = 1;
      break label78;
    }
  }
  
  public final fz g()
  {
    int i1 = t();
    if (i1 == 0) {}
    for (int n = 0;; n = k()) {
      return new fz(c((byte)(n >> 4)), c((byte)(n & 0xF)), i1);
    }
  }
  
  public final fy h()
  {
    byte b1 = k();
    int i1 = b1 >> 4 & 0xF;
    int n = i1;
    if (i1 == 15) {
      n = t();
    }
    return new fy(c(b1), n);
  }
  
  public final gf i()
  {
    return new gf(h());
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
    return (short)e(t());
  }
  
  public final int m()
  {
    return e(t());
  }
  
  public final long n()
  {
    int n = 0;
    int i2 = 0;
    long l1 = 0L;
    long l2 = l1;
    int i1;
    if (this.e.c() >= 10)
    {
      byte[] arrayOfByte = this.e.a();
      int i3 = this.e.b();
      i1 = 0;
      n = i2;
      for (;;)
      {
        i2 = arrayOfByte[(i3 + n)];
        l1 |= (i2 & 0x7F) << i1;
        if ((i2 & 0x80) != 128) {
          break;
        }
        i1 += 7;
        n += 1;
      }
      this.e.a(n + 1);
      return l1 >>> 1 ^ -(l1 & 1L);
    }
    for (;;)
    {
      i1 = k();
      l2 |= (i1 & 0x7F) << n;
      l1 = l2;
      if ((i1 & 0x80) != 128) {
        break;
      }
      n += 7;
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
    int n = t();
    d(n);
    if (n == 0) {
      return "";
    }
    try
    {
      if (this.e.c() >= n)
      {
        String str = new String(this.e.a(), this.e.b(), n, "UTF-8");
        this.e.a(n);
        return str;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new ff("UTF-8 not supported!");
    }
    byte[] arrayOfByte;
    if (n == 0) {
      arrayOfByte = new byte[0];
    }
    for (;;)
    {
      return new String(arrayOfByte, "UTF-8");
      arrayOfByte = new byte[n];
      this.e.a(arrayOfByte, n);
    }
  }
  
  public final ByteBuffer q()
  {
    int n = t();
    d(n);
    if (n == 0) {
      return ByteBuffer.wrap(new byte[0]);
    }
    byte[] arrayOfByte = new byte[n];
    this.e.a(arrayOfByte, n);
    return ByteBuffer.wrap(arrayOfByte);
  }
  
  public final void r()
  {
    this.h.a = -1;
    this.i = 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\fv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */