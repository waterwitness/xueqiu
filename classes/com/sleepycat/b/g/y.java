package com.sleepycat.b.g;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.h;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.g.a.m;
import com.sleepycat.b.g.a.o;
import com.sleepycat.b.n.ac;
import com.sleepycat.b.n.ah;
import com.sleepycat.b.n.ak;
import com.sleepycat.b.n.u;
import com.sleepycat.b.n.v;
import com.sleepycat.b.q.a;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

public class y
  extends s
{
  protected Map<af, m> a;
  protected m b;
  private long d;
  
  static
  {
    if (!y.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  public y(ad paramad, int paramInt, long paramLong1, boolean paramBoolean, long paramLong2, long paramLong3, long paramLong4)
  {
    super(paramad, paramInt, paramBoolean, paramLong1, null, paramLong2, paramLong3);
    this.d = paramLong4;
    this.a = new HashMap();
  }
  
  public final void a(af paramaf)
  {
    this.a.put(paramaf, paramaf.b());
  }
  
  protected final boolean a()
  {
    if (this.k.g.a(c(), this.d)) {}
    af localaf;
    for (this.b = null; this.b != null; this.b = ((m)this.a.get(localaf)))
    {
      return true;
      localaf = new af(this.k.b);
    }
    return false;
  }
  
  protected final boolean a(ByteBuffer paramByteBuffer)
  {
    this.b.a(this.e, this.k, paramByteBuffer);
    return true;
  }
  
  public final boolean b()
  {
    return this.b instanceof k;
  }
  
  public final k<?> h()
  {
    return (k)this.b;
  }
  
  public final o i()
  {
    if ((this.b instanceof o)) {
      return (o)this.b;
    }
    return null;
  }
  
  public final h j()
  {
    return ((k)this.b).d;
  }
  
  public final Long k()
  {
    return ((k)this.b).l();
  }
  
  public final boolean l()
  {
    return this.b.h() instanceof ak;
  }
  
  public final long m()
  {
    return ((ak)this.b.h()).d();
  }
  
  public final a n()
  {
    return ((ak)this.b.h()).d;
  }
  
  public final boolean o()
  {
    return this.b.h() instanceof ah;
  }
  
  public final boolean p()
  {
    return this.b.h() instanceof v;
  }
  
  public final boolean q()
  {
    return this.b.h() instanceof u;
  }
  
  public final Object r()
  {
    return this.b.h();
  }
  
  public final boolean s()
  {
    return this.b.h() instanceof ac;
  }
  
  public final long t()
  {
    return ((ac)this.b.h()).d();
  }
  
  public final long u()
  {
    return ((ah)this.b.h()).d();
  }
  
  public final long v()
  {
    return ((k)this.b).e;
  }
  
  public final boolean w()
  {
    return ((k)this.b).f;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */