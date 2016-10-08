package u.aly;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public final class ft
  extends ga
{
  private static final gg f = new gg();
  protected boolean a = false;
  protected boolean b = true;
  protected int c;
  protected boolean d = false;
  private byte[] g = new byte[1];
  private byte[] h = new byte[2];
  private byte[] i = new byte[4];
  private byte[] j = new byte[8];
  private byte[] k = new byte[1];
  private byte[] l = new byte[2];
  private byte[] m = new byte[4];
  private byte[] n = new byte[8];
  
  public ft(go paramgo, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramgo);
    this.a = paramBoolean1;
    this.b = paramBoolean2;
  }
  
  private int a(byte[] paramArrayOfByte, int paramInt)
  {
    d(paramInt);
    return this.e.a(paramArrayOfByte, paramInt);
  }
  
  private void a(byte paramByte)
  {
    this.g[0] = paramByte;
    this.e.b(this.g, 0, 1);
  }
  
  private String c(int paramInt)
  {
    try
    {
      d(paramInt);
      Object localObject = new byte[paramInt];
      this.e.a((byte[])localObject, paramInt);
      localObject = new String((byte[])localObject, "UTF-8");
      return (String)localObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new ff("JVM DOES NOT SUPPORT UTF-8");
    }
  }
  
  private void d(int paramInt)
  {
    if (paramInt < 0) {
      throw new gb("Negative length: " + paramInt);
    }
    if (this.d)
    {
      this.c -= paramInt;
      if (this.c < 0) {
        throw new gb("Message length exceeded: " + paramInt);
      }
    }
  }
  
  public final void a() {}
  
  public final void a(double paramDouble)
  {
    a(Double.doubleToLongBits(paramDouble));
  }
  
  public final void a(int paramInt)
  {
    this.i[0] = ((byte)(paramInt >> 24 & 0xFF));
    this.i[1] = ((byte)(paramInt >> 16 & 0xFF));
    this.i[2] = ((byte)(paramInt >> 8 & 0xFF));
    this.i[3] = ((byte)(paramInt & 0xFF));
    this.e.b(this.i, 0, 4);
  }
  
  public final void a(long paramLong)
  {
    this.j[0] = ((byte)(int)(paramLong >> 56 & 0xFF));
    this.j[1] = ((byte)(int)(paramLong >> 48 & 0xFF));
    this.j[2] = ((byte)(int)(paramLong >> 40 & 0xFF));
    this.j[3] = ((byte)(int)(paramLong >> 32 & 0xFF));
    this.j[4] = ((byte)(int)(paramLong >> 24 & 0xFF));
    this.j[5] = ((byte)(int)(paramLong >> 16 & 0xFF));
    this.j[6] = ((byte)(int)(paramLong >> 8 & 0xFF));
    this.j[7] = ((byte)(int)(0xFF & paramLong));
    this.e.b(this.j, 0, 8);
  }
  
  public final void a(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      a(paramString.length);
      this.e.b(paramString, 0, paramString.length);
      return;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new ff("JVM DOES NOT SUPPORT UTF-8");
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    int i1 = paramByteBuffer.limit() - paramByteBuffer.position();
    a(i1);
    this.e.b(paramByteBuffer.array(), paramByteBuffer.position() + paramByteBuffer.arrayOffset(), i1);
  }
  
  public final void a(fx paramfx)
  {
    a(paramfx.b);
    a(paramfx.c);
  }
  
  public final void a(fy paramfy)
  {
    a(paramfy.a);
    a(paramfy.b);
  }
  
  public final void a(fz paramfz)
  {
    a(paramfz.a);
    a(paramfz.b);
    a(paramfz.c);
  }
  
  public final void a(short paramShort)
  {
    this.h[0] = ((byte)(paramShort >> 8 & 0xFF));
    this.h[1] = ((byte)(paramShort & 0xFF));
    this.e.b(this.h, 0, 2);
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (byte b1 = 1;; b1 = 0)
    {
      a(b1);
      return;
    }
  }
  
  public final void b() {}
  
  public final void b(int paramInt)
  {
    this.c = paramInt;
    this.d = true;
  }
  
  public final void c()
  {
    a((byte)0);
  }
  
  public final gg d()
  {
    return f;
  }
  
  public final void e() {}
  
  public final fx f()
  {
    byte b1 = k();
    if (b1 == 0) {}
    for (short s = 0;; s = l()) {
      return new fx("", b1, s);
    }
  }
  
  public final fz g()
  {
    return new fz(k(), k(), m());
  }
  
  public final fy h()
  {
    return new fy(k(), m());
  }
  
  public final gf i()
  {
    return new gf(k(), m());
  }
  
  public final boolean j()
  {
    return k() == 1;
  }
  
  public final byte k()
  {
    if (this.e.c() > 0)
    {
      byte b1 = this.e.a()[this.e.b()];
      this.e.a(1);
      return b1;
    }
    a(this.k, 1);
    return this.k[0];
  }
  
  public final short l()
  {
    byte[] arrayOfByte = this.l;
    int i1 = 0;
    if (this.e.c() >= 2)
    {
      arrayOfByte = this.e.a();
      i1 = this.e.b();
      this.e.a(2);
    }
    for (;;)
    {
      int i2 = arrayOfByte[i1];
      return (short)(arrayOfByte[(i1 + 1)] & 0xFF | (i2 & 0xFF) << 8);
      a(this.l, 2);
    }
  }
  
  public final int m()
  {
    byte[] arrayOfByte = this.m;
    int i1 = 0;
    if (this.e.c() >= 4)
    {
      arrayOfByte = this.e.a();
      i1 = this.e.b();
      this.e.a(4);
    }
    for (;;)
    {
      int i2 = arrayOfByte[i1];
      int i3 = arrayOfByte[(i1 + 1)];
      int i4 = arrayOfByte[(i1 + 2)];
      return arrayOfByte[(i1 + 3)] & 0xFF | (i2 & 0xFF) << 24 | (i3 & 0xFF) << 16 | (i4 & 0xFF) << 8;
      a(this.m, 4);
    }
  }
  
  public final long n()
  {
    byte[] arrayOfByte = this.n;
    int i1 = 0;
    if (this.e.c() >= 8)
    {
      arrayOfByte = this.e.a();
      i1 = this.e.b();
      this.e.a(8);
    }
    for (;;)
    {
      long l1 = arrayOfByte[i1] & 0xFF;
      long l2 = arrayOfByte[(i1 + 1)] & 0xFF;
      long l3 = arrayOfByte[(i1 + 2)] & 0xFF;
      long l4 = arrayOfByte[(i1 + 3)] & 0xFF;
      long l5 = arrayOfByte[(i1 + 4)] & 0xFF;
      long l6 = arrayOfByte[(i1 + 5)] & 0xFF;
      long l7 = arrayOfByte[(i1 + 6)] & 0xFF;
      return arrayOfByte[(i1 + 7)] & 0xFF | l1 << 56 | l2 << 48 | l3 << 40 | l4 << 32 | l5 << 24 | l6 << 16 | l7 << 8;
      a(this.n, 8);
    }
  }
  
  public final double o()
  {
    return Double.longBitsToDouble(n());
  }
  
  public final String p()
  {
    int i1 = m();
    if (this.e.c() >= i1) {
      try
      {
        String str = new String(this.e.a(), this.e.b(), i1, "UTF-8");
        this.e.a(i1);
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new ff("JVM DOES NOT SUPPORT UTF-8");
      }
    }
    return c(i1);
  }
  
  public final ByteBuffer q()
  {
    int i1 = m();
    d(i1);
    if (this.e.c() >= i1)
    {
      localObject = ByteBuffer.wrap(this.e.a(), this.e.b(), i1);
      this.e.a(i1);
      return (ByteBuffer)localObject;
    }
    Object localObject = new byte[i1];
    this.e.a((byte[])localObject, i1);
    return ByteBuffer.wrap((byte[])localObject);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ft.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */