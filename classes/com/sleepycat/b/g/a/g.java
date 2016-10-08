package com.sleepycat.b.g.a;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.l.w;
import java.nio.ByteBuffer;

public final class g
  extends k<com.sleepycat.b.l.y>
{
  private byte[] h;
  
  public g()
  {
    super(com.sleepycat.b.l.y.class);
  }
  
  public final StringBuilder a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    super.a(paramStringBuilder, paramBoolean);
    paramStringBuilder.append(w.a(this.h, 0));
    return paramStringBuilder;
  }
  
  public final void a(ad paramad, ae paramae, ByteBuffer paramByteBuffer)
  {
    boolean bool = false;
    a(paramad, paramae, paramByteBuffer, false);
    if (paramae.f < 6) {
      bool = true;
    }
    this.h = ar.c(paramByteBuffer, bool);
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    throw aa.b();
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    throw aa.b();
  }
  
  final byte[] b()
  {
    return com.sleepycat.b.c.y.a(k(), this.h);
  }
  
  public final int d_()
  {
    throw aa.b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */