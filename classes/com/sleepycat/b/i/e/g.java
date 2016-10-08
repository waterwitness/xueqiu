package com.sleepycat.b.i.e;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.am;
import com.sleepycat.b.g.u;
import com.sleepycat.b.i.i.c;
import com.sleepycat.b.i.i.f;
import com.sleepycat.b.i.i.m;
import com.sleepycat.b.i.i.p;
import com.sleepycat.b.p.au;
import java.nio.ByteBuffer;

public class g
  extends bb
{
  private final com.sleepycat.b.i.i.g b;
  
  static
  {
    if (!g.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public g(ad paramad, f paramf, long paramLong1, int paramInt, au paramau, long paramLong2)
  {
    super(paramad, paramf, false, paramLong1, paramInt, paramLong2);
    this.b = new com.sleepycat.b.i.i.g(paramf);
    if (paramau.a(au.a)) {
      throw aa.c("FeederSyncupReader start can't be NULL_VLSN");
    }
    paramad = this.b;
    paramad.d += 1;
    paramad.b = paramad.c.a(paramau, null);
    this.o = paramad.b.a(paramau);
    if ((!a) && (this.o == -1L)) {
      throw new AssertionError();
    }
    this.e.w.b();
    this.g.a(this.o);
    this.l = this.g.c;
    this.m = this.g.c;
    this.t = paramau;
  }
  
  public final s a(au paramau)
  {
    long l = -1L;
    if (paramau.b(this.d.h.b().b) < 0) {
      return null;
    }
    this.t = paramau;
    com.sleepycat.b.i.i.g localg = this.b;
    if ((!com.sleepycat.b.i.i.g.a) && (localg.d != 1)) {
      throw new AssertionError("startingLsns() called " + localg.d + " times");
    }
    if ((localg.b != null) && (!localg.b.d(paramau))) {
      if (!localg.b.f(paramau)) {}
    }
    for (;;)
    {
      b(l);
      if (!e()) {
        break;
      }
      return this.u;
      localg.b = null;
      if (localg.b == null)
      {
        localg.b = f.a(localg.c, paramau);
        if (!localg.b.d(paramau)) {}
      }
      else
      {
        if ((!com.sleepycat.b.i.i.g.a) && (!localg.b.d(paramau))) {
          throw new AssertionError("vlsn = " + paramau + " currentBucket=" + localg.b);
        }
        l = localg.b.c(paramau);
      }
    }
    return null;
  }
  
  protected final boolean a()
  {
    this.v += 1L;
    if (this.k.i) {}
    int i;
    do
    {
      do
      {
        return false;
      } while (!g());
      i = this.k.e.b(this.t);
      if (i < 0) {
        throw aa.c("want to read " + this.t + " but reader at " + this.k.e);
      }
    } while (i != 0);
    return true;
  }
  
  protected final boolean a(ByteBuffer paramByteBuffer)
  {
    ByteBuffer localByteBuffer = paramByteBuffer.slice();
    localByteBuffer.limit(this.k.d);
    this.u = new s(this.e, this.k, localByteBuffer);
    paramByteBuffer.position(paramByteBuffer.position() + this.k.d);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */