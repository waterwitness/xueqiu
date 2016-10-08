package com.sleepycat.b.c;

import com.sleepycat.b.p.ag;
import com.sleepycat.b.p.ah;

public final class a
{
  public static final ag a = new ag("binCount", "Number of bottom internal nodes in the database's btree.", ah.b);
  public static final ag b = new ag("deletedLNCount", "Number of deleted leaf nodes in the database's btree.", ah.b);
  public static final ag c = new ag("inCount", "Number of internal nodes in database's btree. BINs are not included.", ah.b);
  public static final ag d = new ag("lnCount", "Number of leaf nodes in the database's btree.", ah.b);
  public static final ag e = new ag("mainTreeMaxDepth", "Maximum depth of the in-memory tree.", ah.b);
  public static final ag f = new ag("insByLevel", "Histogram of internal nodes by level.", ah.b);
  public static final ag g = new ag("binsByLevel", "Histogram of bottom internal nodes by level.", ah.b);
  public static final ag h = new ag("relatchesRequired", "Number of latch upgrades (relatches) required.");
  public static final ag i = new ag("nRootSplits", "Number of times the root was split.");
  public static final ag j = new ag("binEntriesHistogram", "Histogram of bottom internal nodes fill percentage.", ah.b);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */