package com.sleepycat.b.i.c;

import com.sleepycat.b.am;
import com.sleepycat.b.i.h.e;
import com.sleepycat.b.i.h.k;
import com.sleepycat.b.i.u;
import java.nio.ByteBuffer;

public class c
  extends k
{
  public final u a;
  private final String c;
  private final String d;
  private final String e;
  private final am f;
  private final long g;
  private final long h;
  private final long i;
  private final int l;
  private final int m;
  private final byte[] n;
  private final double o;
  
  public c(a parama, String paramString1, String paramString2, String paramString3, am paramam, long paramLong1, u paramu, long paramLong2, long paramLong3, int paramInt, byte[] paramArrayOfByte, double paramDouble)
  {
    super(parama);
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString3;
    this.f = paramam;
    this.g = paramLong1;
    this.a = paramu;
    this.h = paramLong2;
    this.i = paramLong3;
    this.l = paramInt;
    this.m = 8;
    this.n = paramArrayOfByte;
    this.o = paramDouble;
  }
  
  public final e a()
  {
    return a.b;
  }
  
  public final ByteBuffer b()
  {
    if (this.n == null) {}
    for (byte[] arrayOfByte = new byte[0];; arrayOfByte = this.n) {
      return a(new Object[] { this.c, this.d, this.e, this.f.toString(), Long.valueOf(this.g), this.a, Long.valueOf(this.h), Long.valueOf(this.i), Integer.valueOf(this.l), Integer.valueOf(this.m), arrayOfByte, Double.valueOf(this.o) });
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */