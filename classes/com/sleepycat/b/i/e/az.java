package com.sleepycat.b.i.e;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.a.m;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.am;
import com.sleepycat.b.g.u;
import com.sleepycat.b.h.a;
import com.sleepycat.b.i.i.f;
import com.sleepycat.b.n.ah;
import com.sleepycat.b.p.aq;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.w;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class az
  extends bb
{
  boolean a;
  final Logger b;
  private final m x = af.t.b();
  private final m y = af.q.b();
  private final q z;
  
  static
  {
    if (!az.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  public az(ad paramad, f paramf, long paramLong1, int paramInt, au paramau, long paramLong2, q paramq)
  {
    super(paramad, paramf, false, paramLong1, paramInt, paramLong2);
    if (paramau.a(au.a)) {
      throw aa.c("ReplicaSyncupReader start can't be NULL_VLSN");
    }
    this.o = paramLong1;
    if ((!c) && (this.o == -1L)) {
      throw new AssertionError();
    }
    this.e.w.a();
    this.g.a(this.o);
    this.l = this.g.c;
    this.m = this.g.c;
    this.t = paramau;
    this.z = paramq;
    this.b = w.a(getClass());
  }
  
  protected final void a(long paramLong)
  {
    ba localba = new ba(this.g.a, paramLong, this.t);
    w.c(this.b, this.e, localba.getMessage());
    throw localba;
  }
  
  protected final boolean a()
  {
    if (this.b.isLoggable(Level.FINEST)) {
      w.e(this.b, this.e, " isTargetEntry " + this.k);
    }
    this.v += 1L;
    if (this.k.i) {}
    byte b1;
    do
    {
      return false;
      b1 = this.k.b;
      if (g())
      {
        if (!this.a) {
          break;
        }
        if (af.d(b1)) {
          return true;
        }
        this.t = this.k.e.e();
      }
    } while (!af.t.c(b1));
    return true;
    return true;
  }
  
  protected final boolean a(ByteBuffer paramByteBuffer)
  {
    if (this.b.isLoggable(Level.FINEST)) {
      w.e(this.b, this.e, " syncup reader saw " + this.k);
    }
    byte b1 = this.k.b;
    if (af.t.c(b1))
    {
      this.x.a(this.e, this.k, paramByteBuffer);
      if (this.b.isLoggable(Level.FINEST)) {
        w.e(this.b, this.e, " syncup reader read " + this.k + this.x);
      }
      if (((a)this.x.h()).m) {
        this.z.b = true;
      }
      return false;
    }
    Object localObject1 = paramByteBuffer.slice();
    ((ByteBuffer)localObject1).limit(this.k.d);
    this.u = new s(this.e, this.k, (ByteBuffer)localObject1);
    if (af.q.c(b1))
    {
      this.y.a(this.e, this.k, paramByteBuffer);
      Object localObject2 = (ah)this.y.h();
      paramByteBuffer = this.z;
      localObject1 = ((ah)localObject2).e();
      long l1 = ((ah)localObject2).d();
      localObject2 = this.k.e;
      long l2 = c();
      paramByteBuffer.h += 1;
      if (paramByteBuffer.f != null) {
        paramByteBuffer.g = paramByteBuffer.f;
      }
      paramByteBuffer.f = new r((aq)localObject1, l1, (au)localObject2, l2);
      if (paramByteBuffer.h <= paramByteBuffer.e) {
        paramByteBuffer.d.add(paramByteBuffer.f);
      }
      if (this.b.isLoggable(Level.FINEST)) {
        w.e(this.b, this.e, "syncup reader read " + this.k + this.y);
      }
    }
    while (this.a)
    {
      return true;
      paramByteBuffer.position(paramByteBuffer.position() + this.k.d);
    }
    int i = this.k.e.b(this.t);
    if (i < 0) {
      throw aa.c("want to read " + this.t + " but reader at " + this.k.e);
    }
    return i == 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\az.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */