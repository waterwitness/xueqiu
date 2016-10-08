package com.sleepycat.b.i.c.b;

import com.sleepycat.b.g.am;
import com.sleepycat.b.i.e.t;
import com.sleepycat.b.i.e.u;
import com.sleepycat.b.p.z;

final class ad
{
  final long[] a;
  int b;
  long c;
  final long d;
  private final z f;
  private final z g;
  private final z h;
  private final z i;
  
  final void a(long paramLong)
  {
    if ((this.b == 0) || ((this.b != this.a.length) && (paramLong - this.c < 0L))) {
      return;
    }
    this.h.f();
    this.i.b(this.b);
    if (paramLong - this.c >= 0L) {
      this.f.f();
    }
    for (;;)
    {
      ac.a(this.e).w.a();
      int j = 0;
      while (j < this.b)
      {
        paramLong = this.a[j];
        t localt1 = ac.b(this.e);
        t localt2 = ac.b(this.e);
        localt2.getClass();
        localt1.a(new u(localt2, paramLong), ac.c(this.e));
        this.a[j] = 0L;
        j += 1;
      }
      if (this.b >= this.a.length) {
        this.g.f();
      }
    }
    this.b = 0;
    this.c = 0L;
  }
  
  final boolean a()
  {
    return this.a.length > 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */