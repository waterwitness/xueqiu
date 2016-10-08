package com.sleepycat.b.n;

import com.sleepycat.b.p.ag;
import com.sleepycat.b.p.ah;

public final class n
{
  public static final ag a = new ag("nReadLocks", "Number of read locks currently held.", ah.b);
  public static final ag b = new ag("nWriteLocks", "Number of write locks currently held.", ah.b);
  public static final ag c = new ag("nOwners", "Number of lock owners in lock table.", ah.b);
  public static final ag d = new ag("nRequests", "Number of times a lock request was made.");
  public static final ag e = new ag("nTotalLocks", "Number of locks current in lock table.", ah.b);
  public static final ag f = new ag("nWaits", "Number of times a lock request blocked.");
  public static final ag g = new ag("nWaiters", "Number of transactions waiting for a lock.", ah.b);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */