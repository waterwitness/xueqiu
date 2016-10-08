package com.sleepycat.b.a;

import com.sleepycat.b.p.ag;
import com.sleepycat.b.p.ah;

public final class e
{
  public static final ag A = new ag("nCleanerEntriesRead", "Accumulated number of log entries read by the cleaner.");
  public static final ag B = new ag("nRepeatIteratorReads", "Number of attempts to read a log entry larger than the read buffer size during which the log buffer couldn't be grown enough to accommodate the object.");
  public static final ag C = new ag("totalLogSize", "Approximation of the total log size in bytes.", ah.b);
  public static final ag D = new ag("lnSizeCorrectionFactor", "The factor used to correct average LN size, for LNs whose obsolete size is not determined. Used to calculate corrected utilization.", ah.b);
  public static final ag E = new ag("lastKnownUtilization", "The last known log utilization as a percentage. This statistic provides a cheap way of checking the log utilization without having to run the DbSpace utility.", ah.b);
  public static final ag a = new ag("cleanerBackLog", "Number of files to be cleaned to reach the target utilization.", ah.b);
  public static final ag b = new ag("fileDeletionBacklog", "Number of files that are ready to be deleted.", ah.b);
  public static final ag c = new ag("nCleanerRuns", "Number of cleaner runs, including probe runs.");
  public static final ag d = new ag("nCleanerProbeRuns", "Number of cleaner runs for probing utilization.");
  public static final ag e = new ag("nCleanerDeletions", "Number of cleaner file deletions this session.");
  public static final ag f = new ag("pendingLNQueueSize", "Number of LNs pending because they were locked and could not be migrated.", ah.b);
  public static final ag g = new ag("nINsObsolete", "Accumulated number of INs obsolete.");
  public static final ag h = new ag("nINsCleaned", "Accumulated number of INs cleaned.");
  public static final ag i = new ag("nINsDead", "Accumulated number of INs that were not found in the tree anymore (deleted).");
  public static final ag j = new ag("nINsMigrated", "Accumulated number of INs migrated.");
  public static final ag k = new ag("nBINDeltasObsolete", "Accumulated number of BINDeltas obsolete.");
  public static final ag l = new ag("nBINDeltasCleaned", "Accumulated number of BINDeltas cleaned.");
  public static final ag m = new ag("nBINDeltasDead", "Accumulated number of BINDeltas that were not found in the tree anymore (deleted).");
  public static final ag n = new ag("nBINDeltasMigrated", "Accumulated number of BINDeltas migrated.");
  public static final ag o = new ag("nLNsObsolete", "Accumulated number of LNs obsolete.");
  public static final ag p = new ag("nLNsCleaned", "Accumulated number of LNs cleaned.");
  public static final ag q = new ag("nLNsDead", "Accumulated number of LNs that were not found in the tree anymore (deleted).");
  public static final ag r = new ag("nLNsLocked", "Accumulated number of LNs encountered that were locked.");
  public static final ag s = new ag("nLNsMigrated", "Accumulated number of LNs that were marked for migration during cleaning.");
  public static final ag t = new ag("nLNsMarked", "Accumulated number of LNs that were marked for migration during cleaning.");
  public static final ag u = new ag("nLNQueueHits", "Accumulated number of LNs processed without a tree lookup.");
  public static final ag v = new ag("nPendingLNsProcessed", "Accumulated number of LNs processed because they were previously locked.");
  public static final ag w = new ag("nMarkLNsProcessed", "Accumulated number of LNs processed because they were previously marked for migration.");
  public static final ag x = new ag("nToBeCleanedLNsProcessed", "Accumulated number of LNs processed because they are soon to be cleaned.");
  public static final ag y = new ag("nClusterLNsProcessed", "Accumulated number of LNs processed because they qualify for clustering.");
  public static final ag z = new ag("nPendingLNsLocked", "Accumulated number of pending LNs that could not be locked for migration because of a long duration application lock.");
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */