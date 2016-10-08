package com.sleepycat.b.h;

import com.sleepycat.b.l.ah;
import com.sleepycat.b.l.aq;
import com.sleepycat.b.l.e;

final class o
  implements aq
{
  boolean a = false;
  boolean b = false;
  long c = -1L;
  boolean d = true;
  private final ah e;
  private final com.sleepycat.b.l.j f;
  private long g = -1L;
  
  o(ah paramah, com.sleepycat.b.l.j paramj, long paramLong)
  {
    this.e = paramah;
    this.f = paramj;
    this.g = paramLong;
  }
  
  public final com.sleepycat.b.l.j a(e parame)
  {
    Object localObject = this.e;
    com.sleepycat.b.l.j localj = this.f;
    long l = this.g;
    localObject = ((ah)localObject).a(localj, new byte[0], l);
    this.f.C();
    this.d = false;
    if (parame == null)
    {
      this.e.a((e)localObject, false);
      this.a = true;
    }
    for (;;)
    {
      return null;
      this.c = parame.b;
      if (com.sleepycat.b.p.j.b(this.c, this.g) < 0)
      {
        this.e.a((e)localObject, false);
        this.b = true;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */