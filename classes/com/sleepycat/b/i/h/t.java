package com.sleepycat.b.i.h;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.n;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class t
  extends CountDownLatch
{
  final ad a;
  private final AtomicReference<Exception> c = new AtomicReference();
  
  static
  {
    if (!q.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  public t(ad paramad)
  {
    super(1);
    this.a = paramad;
  }
  
  public final void a(Exception paramException)
  {
    this.c.compareAndSet(null, paramException);
    for (long l = getCount(); l > 0L; l -= 1L) {
      countDown();
    }
    if ((!b) && (getCount() != 0L)) {
      throw new AssertionError();
    }
  }
  
  public final boolean a(long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool = super.await(paramLong, paramTimeUnit);
    if (!bool) {
      return bool;
    }
    paramTimeUnit = (Exception)this.c.get();
    if (paramTimeUnit != null)
    {
      if ((paramTimeUnit instanceof n)) {
        throw ((n)paramTimeUnit);
      }
      throw aa.a(this.a, paramTimeUnit);
    }
    return bool;
  }
  
  @Deprecated
  public final boolean await(long paramLong, TimeUnit paramTimeUnit)
  {
    throw aa.c("Use awaitOrException() instead of await");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */