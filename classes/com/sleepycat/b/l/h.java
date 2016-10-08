package com.sleepycat.b.l;

import com.sleepycat.b.a.c;
import com.sleepycat.b.a.o;
import com.sleepycat.b.a.w;
import com.sleepycat.b.a.z;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.i;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.d.b;
import java.nio.ByteBuffer;

public final class h
  extends y
{
  public final o a;
  public z b;
  public w c;
  public boolean d;
  private int i;
  private int j;
  
  static
  {
    if (!h.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      return;
    }
  }
  
  public h()
  {
    this.a = new o();
    this.c = new w();
  }
  
  private h(byte paramByte)
  {
    super(null);
    this.a = new o();
    this.c = new w();
  }
  
  public h(o paramo)
  {
    super(new byte[0]);
    if ((!e) && (paramo == null)) {
      throw new AssertionError();
    }
    this.a = paramo;
    this.c = new w();
    this.j = -1;
  }
  
  public static boolean a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 8) {}
    while ((paramArrayOfByte[4] >= 48) && (paramArrayOfByte[4] <= 57)) {
      return true;
    }
    return false;
  }
  
  public static byte[] a(long paramLong)
  {
    byte[] arrayOfByte = new byte[4];
    ar.c(ByteBuffer.wrap(arrayOfByte), (int)paramLong);
    return arrayOfByte;
  }
  
  public static byte[] a(long paramLong, int paramInt)
  {
    if ((!e) && (paramInt < 0)) {
      throw new AssertionError();
    }
    byte[] arrayOfByte = new byte[8];
    ByteBuffer localByteBuffer = ByteBuffer.wrap(arrayOfByte);
    ar.c(localByteBuffer, (int)paramLong);
    ar.c(localByteBuffer, Integer.MAX_VALUE - paramInt);
    return arrayOfByte;
  }
  
  public static long b(byte[] paramArrayOfByte)
  {
    if (a(paramArrayOfByte)) {
      return Long.valueOf(b.a(paramArrayOfByte)).longValue();
    }
    return ar.e(ByteBuffer.wrap(paramArrayOfByte)) & 0xFFFFFFFF;
  }
  
  public static y c()
  {
    return new h((byte)0);
  }
  
  private void p()
  {
    if ((!e) && (i())) {
      throw new AssertionError();
    }
    if (this.d)
    {
      long[] arrayOfLong = this.b.j();
      if (arrayOfLong != null)
      {
        int k = this.c.e();
        this.c.a(arrayOfLong);
        this.i = (this.c.e() - k);
      }
      this.d = false;
    }
  }
  
  public final int a()
  {
    int m = super.a();
    int k = m;
    if (!i())
    {
      k = this.a.a();
      p();
      k = m + k + this.c.a();
    }
    return k;
  }
  
  protected final af a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((!e) && (paramBoolean2)) {
      throw new AssertionError("Txnl access to UP db not allowed");
    }
    return af.k;
  }
  
  public final String a(int paramInt, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.a(paramInt, paramBoolean));
    localStringBuilder.append('\n');
    if (!i())
    {
      localStringBuilder.append(this.a.toString());
      localStringBuilder.append(this.c.toString());
    }
    return localStringBuilder.toString();
  }
  
  public final void a(i parami, long paramLong)
  {
    super.a(parami, paramLong);
    if ((this.j == 1) && (parami.c.D.T)) {
      this.c = new w();
    }
  }
  
  public final void a(a parama)
  {
    if (this.i != 0)
    {
      if ((!e) && (this.b == null)) {
        throw new AssertionError();
      }
      if ((!e) && (!parama.F())) {
        throw new AssertionError();
      }
      parama.a(0L, this.i);
      this.i = 0;
    }
  }
  
  public final void a(StringBuilder paramStringBuilder, byte[] paramArrayOfByte)
  {
    paramStringBuilder.append("<fileSummaryLNKey fileNumber=\"0x" + Long.toHexString(b(paramArrayOfByte)) + "\" ");
    StringBuilder localStringBuilder = new StringBuilder("sequence=\"0x");
    if (a(paramArrayOfByte)) {}
    ByteBuffer localByteBuffer;
    for (long l = 0L;; l = Integer.MAX_VALUE - ar.e(localByteBuffer) & 0xFFFFFFFF)
    {
      paramStringBuilder.append(Long.toHexString(l) + "\"/>");
      super.a(paramStringBuilder, paramArrayOfByte);
      return;
      localByteBuffer = ByteBuffer.wrap(paramArrayOfByte);
      ar.e(localByteBuffer);
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    if ((this.b != null) && (!i()))
    {
      this.a.a(this.b);
      p();
      this.b.i();
    }
    super.a(paramByteBuffer);
    if (!i())
    {
      this.a.a(paramByteBuffer);
      this.c.a(paramByteBuffer);
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    this.j = paramInt;
    super.a(paramByteBuffer, paramInt);
    if (!i())
    {
      this.a.a(paramByteBuffer, paramInt);
      if (paramInt > 0) {
        this.c.a(paramByteBuffer, paramInt);
      }
    }
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  protected final void b(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    if (!i())
    {
      this.a.a(paramStringBuilder, true);
      if (paramBoolean) {
        this.c.a(paramStringBuilder, true);
      }
    }
  }
  
  public final String d()
  {
    return "<fileSummaryLN>";
  }
  
  public final String e()
  {
    return "</fileSummaryLN>";
  }
  
  final void h()
  {
    super.h();
    this.c = new w();
  }
  
  public final String toString()
  {
    return a(0, true);
  }
  
  public final long v_()
  {
    return super.v_() + (ao.T - ao.t) + this.c.e();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */