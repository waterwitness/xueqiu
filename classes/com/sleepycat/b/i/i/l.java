package com.sleepycat.b.i.i;

import com.sleepycat.b.p.ag;

public final class l
{
  public static ag a = new ag("nHits", "Number of hits to the VLSN index cache");
  public static ag b = new ag("nMisses", "Number of log entry misses upon access to the VLSN index cache. Upon a miss the Feeder will fetch the log enty from the log buffer, or the log file.");
  public static ag c = new ag("nHeadBucketsDeleted", "Number of VLSN index buckets deleted at the head(the low end) of the VLSN index.");
  public static ag d = new ag("nTailBucketsDeleted", "Number of VLSN index buckets deleted at the tail(the high end) of the index.");
  public static ag e = new ag("nBucketsCreated", "Number of new VLSN buckets created in the VLSN index.");
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\i\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */