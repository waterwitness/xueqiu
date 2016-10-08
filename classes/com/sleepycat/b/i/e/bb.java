package com.sleepycat.b.i.e;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.u;
import com.sleepycat.b.i.i.f;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;
import java.nio.ByteBuffer;

abstract class bb
  extends com.sleepycat.b.g.s
{
  final f d;
  au t;
  s u;
  long v;
  long w;
  
  bb(ad paramad, f paramf, boolean paramBoolean, long paramLong1, int paramInt, long paramLong2)
  {
    super(paramad, paramInt, paramBoolean, paramLong1, null, paramLong1, paramLong2);
    this.d = paramf;
    this.t = au.a;
  }
  
  protected boolean a(ByteBuffer paramByteBuffer)
  {
    ByteBuffer localByteBuffer = paramByteBuffer.slice();
    localByteBuffer.limit(this.k.d);
    this.u = new s(this.e, this.k, localByteBuffer);
    paramByteBuffer.position(paramByteBuffer.position() + this.k.d);
    return true;
  }
  
  final void b(long paramLong)
  {
    if (paramLong == -1L) {
      return;
    }
    if (this.i)
    {
      if (j.b(c(), paramLong) > 0) {
        throw aa.c("Feeder forward scanning should not be repositioned to  a position earlier than the current position. Current lsn = " + j.h(c()) + " reposition = " + j.h(paramLong));
      }
    }
    else if (j.b(c(), paramLong) < 0) {
      throw aa.c("Feeder backward scanning should not be repositioned to  a position later than the current position. Current lsn = " + j.h(c()) + " reposition = " + j.h(paramLong));
    }
    long l = j.d(paramLong);
    paramLong = j.e(paramLong);
    u localu = this.g;
    int i;
    if ((localu.a == l) && (localu.b(paramLong)))
    {
      i = 1;
      if (i == 0) {
        break label193;
      }
      this.g.c(paramLong);
      label164:
      if (!this.i) {
        break label211;
      }
      this.n = paramLong;
    }
    for (;;)
    {
      this.w += 1L;
      return;
      i = 0;
      break;
      label193:
      this.g.a(l, paramLong, paramLong, this.i);
      break label164;
      label211:
      this.l = paramLong;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\bb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */