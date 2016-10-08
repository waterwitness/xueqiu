package com.sleepycat.b.e;

import com.sleepycat.b.p.ag;

public final class a
{
  public static final ag a = new ag("splitBins", "Number of BINs encountered by the INCompressor that were split between the time they were put on the comprssor queue and when the compressor ran.");
  public static final ag b = new ag("dbClosedBins", "Number of BINs encountered by the INCompressor that had their database closed between the time they were put on the compressor queue and when the compressor ran.");
  public static final ag c = new ag("cursorsBins", "Number of BINs encountered by the INComprssor that had cursors referring to them when the compresor ran.");
  public static final ag d = new ag("nonEmptyBins", "Number of BINs encountered by the INCompressor that were not actually empty when the compressor ran.");
  public static final ag e = new ag("processedBins", "Number of BINs that were successfully processed by the INCompressor.");
  public static final ag f = new ag("inCompQueueSize", "Number of entries in the INCompressor queue when the getStats() call was made.");
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\e\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */