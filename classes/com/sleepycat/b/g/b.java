package com.sleepycat.b.g;

import com.sleepycat.b.c.ad;
import java.nio.ByteBuffer;

public final class b
  extends s
{
  public boolean a;
  public boolean b;
  public boolean c;
  
  public b(ad paramad, int paramInt, long paramLong1, long paramLong2)
  {
    super(paramad, paramInt, false, paramLong1, null, paramLong2, -1L);
  }
  
  protected final boolean a()
  {
    byte b1 = this.k.b;
    this.a = false;
    this.b = false;
    this.c = false;
    if (af.t.c(b1))
    {
      this.b = true;
      return true;
    }
    if (af.s.c(b1))
    {
      this.c = true;
      return true;
    }
    if (af.p.c(b1))
    {
      this.a = true;
      return true;
    }
    return false;
  }
  
  protected final boolean a(ByteBuffer paramByteBuffer)
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */