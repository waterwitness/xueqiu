package com.sleepycat.b.i.b;

import com.sleepycat.b.b.b;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.m;
import com.sleepycat.b.i.a.a;
import com.sleepycat.b.i.c.an;
import com.sleepycat.b.i.c.b.aa;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

final class i
  implements u
{
  final int a;
  int b;
  private final aa c;
  private final CountDownLatch d;
  private final int e;
  private int f = 1;
  
  i(aa paramaa, CountDownLatch paramCountDownLatch)
  {
    this.c = paramaa;
    this.a = Integer.MAX_VALUE;
    this.b = Integer.MAX_VALUE;
    this.d = paramCountDownLatch;
    paramaa = paramaa.i;
    paramCountDownLatch = an.J;
    if (paramaa != null) {}
    for (int i = paramaa.u.a(paramCountDownLatch);; i = Integer.parseInt(paramCountDownLatch.b))
    {
      this.e = i;
      return;
    }
  }
  
  public final boolean a()
  {
    if ((this.a - this.b >= this.e) && (this.c != null) && (this.c.A.a())) {
      this.b = this.a;
    }
    do
    {
      return true;
      int i = this.b;
      this.b = (i - 1);
      if (i <= 0)
      {
        this.d.countDown();
        return false;
      }
      CountDownLatch localCountDownLatch = this.d;
      this.f = Math.min(64, this.f * 2);
      localCountDownLatch.await(this.f * 1000, TimeUnit.MILLISECONDS);
    } while (this.d.getCount() != 0L);
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */