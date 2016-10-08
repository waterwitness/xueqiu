package com.sleepycat.b.g;

import com.sleepycat.b.g.a.m;
import com.sleepycat.b.p.b;
import java.nio.ByteBuffer;
import java.util.zip.Checksum;

public class ae
{
  private static final byte l;
  public long a;
  public final byte b;
  public long c;
  public final int d;
  public com.sleepycat.b.p.au e;
  public int f;
  au g;
  public boolean h;
  public boolean i;
  public boolean j;
  
  static
  {
    if (!ae.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      k = bool;
      l = af.y.K;
      return;
    }
  }
  
  public ae(m paramm, au paramau, av paramav)
  {
    af localaf = paramm.d();
    this.b = localaf.K;
    this.f = 8;
    this.d = paramm.d_();
    this.g = paramau;
    if ((!k) && (!localaf.P.d) && (paramav.h)) {
      throw new AssertionError(localaf + " should never be replicated.");
    }
    if (localaf.P.d) {}
    for (this.h = paramav.h;; this.h = false)
    {
      this.i = false;
      if ((paramav.i != null) || (paramav.d())) {
        bool = true;
      }
      this.j = bool;
      return;
    }
  }
  
  public ae(ByteBuffer paramByteBuffer, int paramInt)
  {
    if ((!k) && (paramInt != -1) && ((paramInt <= 0) || (paramInt > 8))) {
      throw new AssertionError(paramInt);
    }
    this.a = ar.a(paramByteBuffer);
    this.b = paramByteBuffer.get();
    if (!af.b(this.b)) {
      throw new c("Read invalid log entry type: " + this.b);
    }
    if (this.b == l)
    {
      this.f = -1;
      paramByteBuffer.get();
      a(0);
    }
    for (;;)
    {
      this.c = ar.a(paramByteBuffer);
      this.d = ar.c(paramByteBuffer);
      if (this.d >= 0) {
        break;
      }
      throw new c("Read invalid item size: " + this.d);
      if (paramInt == -1) {
        throw new c("Read invalid log header entry type: " + this.b);
      }
      if (paramInt <= 6)
      {
        this.f = paramByteBuffer.get();
        a(this.f & 0xFFFFFFE0);
        this.f &= 0x1F;
        if ((!k) && (paramInt == 6) && (this.f != 6)) {
          throw new AssertionError();
        }
      }
      else
      {
        this.f = paramInt;
        a(paramByteBuffer.get());
      }
    }
  }
  
  static byte a(byte paramByte)
  {
    return (byte)(paramByte | 0x10);
  }
  
  public static int a()
  {
    return 8;
  }
  
  private void a(int paramInt)
  {
    boolean bool2 = false;
    if ((paramInt & 0xFFFFFF80) != 0)
    {
      this.g = au.b;
      if ((paramInt & 0x20) == 0) {
        break label95;
      }
      bool1 = true;
      label25:
      this.h = bool1;
      if ((paramInt & 0x10) == 0) {
        break label100;
      }
    }
    label95:
    label100:
    for (boolean bool1 = true;; bool1 = false)
    {
      this.i = bool1;
      if ((paramInt & 0x8) == 0)
      {
        bool1 = bool2;
        if (!this.h) {}
      }
      else
      {
        bool1 = true;
      }
      this.j = bool1;
      return;
      if ((paramInt & 0x40) != 0)
      {
        this.g = au.c;
        break;
      }
      this.g = au.a;
      break;
      bool1 = false;
      break label25;
    }
  }
  
  public static void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    paramInt += 5;
    paramByteBuffer.put(paramInt, (byte)(paramByteBuffer.get(paramInt) & 0xFFFFFFEF));
  }
  
  static int c()
  {
    return 10;
  }
  
  public final ByteBuffer a(ByteBuffer paramByteBuffer, long paramLong, com.sleepycat.b.p.au paramau)
  {
    this.c = paramLong;
    paramByteBuffer.position(6);
    ar.a(paramByteBuffer, this.c);
    if (paramau != null)
    {
      this.e = paramau;
      paramByteBuffer.position(14);
      paramau.a(paramByteBuffer);
    }
    paramau = b.a();
    paramau.update(paramByteBuffer.array(), paramByteBuffer.arrayOffset() + 4, paramByteBuffer.limit() - 4);
    paramByteBuffer.position(0);
    this.a = paramau.getValue();
    ar.a(paramByteBuffer, this.a);
    paramByteBuffer.position(0);
    return paramByteBuffer;
  }
  
  public final void a(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append(af.a(this.b).L).append("/").append(this.f);
    if (this.e != null) {
      paramStringBuilder.append(" vlsn=").append(this.e);
    }
    for (;;)
    {
      if (this.h) {
        paramStringBuilder.append(" isReplicated=\"1\"");
      }
      if (this.i) {
        paramStringBuilder.append(" isInvisible=\"1\"");
      }
      return;
      paramStringBuilder.append("\"");
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    if (this.j)
    {
      this.e = new com.sleepycat.b.p.au();
      this.e.a(paramByteBuffer, this.f);
    }
  }
  
  public final int b()
  {
    if (this.j) {
      return 22;
    }
    return 14;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<hdr ");
    af localaf = af.a(this.b);
    localStringBuilder.append("type=\"").append(localaf.L).append("/").append(this.f);
    if (this.g != au.a)
    {
      localStringBuilder.append("\" prov=\"");
      localStringBuilder.append(this.g);
    }
    if (this.e != null)
    {
      localStringBuilder.append("\" ");
      this.e.a(localStringBuilder, true);
    }
    for (;;)
    {
      if (this.h) {
        localStringBuilder.append(" isReplicated=\"1\"");
      }
      if (this.i) {
        localStringBuilder.append(" isInvisible=\"1\"");
      }
      localStringBuilder.append(" prev=\"0x").append(Long.toHexString(this.c));
      localStringBuilder.append("\" size=\"").append(this.d);
      localStringBuilder.append("\" cksum=\"").append(this.a);
      localStringBuilder.append("\"/>");
      return localStringBuilder.toString();
      localStringBuilder.append("\"");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */