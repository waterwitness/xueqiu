package com.sleepycat.b.c;

import com.sleepycat.b.aw;
import com.sleepycat.b.ax;
import com.sleepycat.b.ay;
import com.sleepycat.b.ba;
import com.sleepycat.b.g.af;
import com.sleepycat.b.l.ac;
import com.sleepycat.b.l.y;

final class aj
  implements bc
{
  final ba<ax> a;
  private final ad b;
  private final long c;
  private final long d;
  private final ay e;
  private final boolean f;
  private long g = 0L;
  
  aj(ad paramad, long paramLong1, long paramLong2, ay paramay, aw paramaw)
  {
    this.b = paramad;
    this.c = paramLong1;
    this.d = paramLong2;
    this.e = paramay;
    this.f = paramaw.c;
    this.a = paramaw.d;
  }
  
  public final void a()
  {
    ay localay = this.e;
    localay.g += 1;
  }
  
  public final void a(long paramLong, af paramaf, ac paramac, byte[] paramArrayOfByte)
  {
    if (System.currentTimeMillis() > this.d) {
      throw ad.V();
    }
    if (this.b.n.ac.a() > this.c) {
      throw ad.W();
    }
    if (this.a != null)
    {
      this.g += 1L;
      paramac = this.a;
      int i = ax.a;
      if (!paramac.a()) {
        throw ad.X();
      }
    }
    if ((paramaf.equals(af.i)) || (paramaf.equals(af.j)))
    {
      paramaf = this.e;
      paramaf.f += 1;
    }
    do
    {
      do
      {
        return;
        if (!paramaf.e()) {
          break;
        }
      } while (!this.f);
      paramaf = this.e;
      paramaf.c += 1;
      return;
      if (paramaf.equals(af.o))
      {
        paramaf = this.e;
        paramaf.e += 1;
        return;
      }
      if (paramaf.equals(af.m))
      {
        paramaf = this.e;
        paramaf.b += 1;
        return;
      }
      if (paramaf.equals(af.n))
      {
        paramaf = this.e;
        paramaf.d += 1;
        return;
      }
    } while (!paramaf.equals(af.l));
    paramaf = this.e;
    paramaf.a += 1;
  }
  
  public final void a(long paramLong, y paramy) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */