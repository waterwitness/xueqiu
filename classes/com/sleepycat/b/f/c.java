package com.sleepycat.b.f;

import com.sleepycat.b.p.ag;

public final class c
{
  public static final ag a = new ag("nLatchAcquiresNoWaiters", "Number of times the latch was acquired without contention.");
  public static final ag b = new ag("nLatchAcquiresSelfOwned", "Number of times the latch was acquired it was already owned by the caller.");
  public static final ag c = new ag("nLatchAcquiresWithContention", "Number of times the latch was acquired when it was already owned by another thread.");
  public static final ag d = new ag("nLatchAcquiresNoWaitSuccessful", "Number of times acquireNoWait() was called when the latch was successfully acquired.");
  public static final ag e = new ag("nLatchAcquireNoWaitUnsuccessful", "Number of unsuccessful acquireNoWait() calls.");
  public static final ag f = new ag("nLatchReleases", "Number of latch releases.");
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\f\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */