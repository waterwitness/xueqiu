package com.sleepycat.b.g.a;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ax;
import com.sleepycat.b.c.h;
import com.sleepycat.b.g.a;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.av;
import com.sleepycat.b.g.g;
import com.sleepycat.b.l.ab;
import com.sleepycat.b.n.z;
import java.nio.ByteBuffer;

public class o
  extends k<ab>
{
  public f h;
  public h i;
  public ax j;
  
  static
  {
    if (!o.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      k = bool;
      return;
    }
  }
  
  public o()
  {
    super(ab.class);
  }
  
  public o(af paramaf, ab paramab, h paramh, byte[] paramArrayOfByte, long paramLong, boolean paramBoolean, z paramz, av paramav)
  {
    super(paramaf, paramab, paramh, paramArrayOfByte, paramLong, paramBoolean, paramz);
    this.h = paramav.a();
    if (f.a(this.h)) {
      this.j = ((g)paramav).b();
    }
    if (this.h == f.d) {
      this.i = ((g)paramav).c();
    }
  }
  
  public final StringBuilder a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    super.a(paramStringBuilder, paramBoolean);
    this.h.a(paramStringBuilder, paramBoolean);
    if (this.j != null) {
      this.j.a(paramStringBuilder, paramBoolean);
    }
    if (this.i != null) {
      this.i.a(paramStringBuilder, paramBoolean);
    }
    return paramStringBuilder;
  }
  
  public final void a(ad paramad, ae paramae, ByteBuffer paramByteBuffer)
  {
    a(paramad, paramae, paramByteBuffer, false);
    int m = paramae.f;
    if (m >= 6)
    {
      this.h = f.b(paramByteBuffer);
      if (f.a(this.h))
      {
        this.j = new ax();
        this.j.a(paramByteBuffer, m);
      }
      if (this.h == f.d)
      {
        this.i = new h();
        this.i.a(paramByteBuffer, m);
      }
      return;
    }
    this.h = f.a;
  }
  
  public final void a(StringBuilder paramStringBuilder)
  {
    super.a(paramStringBuilder);
    paramStringBuilder.append(" dbop=").append(this.h);
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    a(paramByteBuffer, 8);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    a(paramByteBuffer, false, paramInt);
    a.a(this.h, paramByteBuffer, paramInt);
    if (f.a(this.h)) {
      a.a(this.j, paramByteBuffer, paramInt);
    }
    if (this.h == f.d) {
      a.a(this.i, paramByteBuffer, paramInt);
    }
  }
  
  public final boolean a(m paramm)
  {
    if (!super.a(paramm)) {}
    do
    {
      return false;
      paramm = (o)paramm;
    } while ((!this.h.a(paramm.h)) || ((this.i != null) && (!this.i.a(paramm.i))) || ((this.j != null) && (!this.j.a(paramm.j))));
    return true;
  }
  
  public final int d_()
  {
    int n = a(false) + this.h.a();
    int m = n;
    if (f.a(this.h)) {
      m = n + this.j.a();
    }
    n = m;
    if (this.h == f.d) {
      n = m + this.i.a();
    }
    return n;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\a\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */