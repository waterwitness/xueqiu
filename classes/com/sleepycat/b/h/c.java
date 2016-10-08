package com.sleepycat.b.h;

import com.sleepycat.b.p.ag;
import com.sleepycat.b.p.ah;

public final class c
{
  public static final ag a = new ag("nCheckpoints", "Total number of checkpints run so far.");
  public static final ag b = new ag("lastCheckpointId", "Id of the last checkpoint.", ah.b);
  public static final ag c = new ag("nFullINFlush", "Accumulated number of full INs flushed to the log.");
  public static final ag d = new ag("nFullBINFlush", "Accumulated number of full BINs flushed to the log.");
  public static final ag e = new ag("nDeltaINFlush", "Accumulated number of Delta INs flushed to the log.");
  public static final ag f = new ag("lastCheckpointStart", "Location in the log of the last checkpont start.", ah.b);
  public static final ag g = new ag("lastCheckpointEnd", "Location in the log of the last checkpoint end.", ah.b);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */