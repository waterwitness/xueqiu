package com.sleepycat.b.i.c.b;

import com.sleepycat.b.p.ag;

public final class af
{
  public static ag a = new ag("nCommits", "Number of Commits replayed by the Replica.");
  public static ag b = new ag("nGroupCommitTimeouts", "Number of group commits that were initiated due to the group timeout interval(ReplicationConfig.REPLICA_GROUP_COMMIT_INTERVAL) being exceeded.");
  public static ag c = new ag("nGroupCommitMaxExceeded", "Number of group commits that were initiated due to the max group size(ReplicationConfig.REPLICA_MAX_GROUP_COMMIT)  being exceeded.");
  public static ag d = new ag("nGroupCommitTxns", "Number of replay transaction commits that were part of a group commit operation.");
  public static ag e = new ag("nGroupCommits", "Number of group commit operations.");
  public static ag f = new ag("nCommitAcks", "Number of commits for which the Master requested an ack.");
  public static ag g = new ag("nCommitSyncs", "Number of CommitSyncs used to satisfy ack requests. Note that user level commit sync requests may be optimized into CommitNoSync requests as part of a group commit.");
  public static ag h = new ag("nCommitNoSyncs", "Number of CommitNoSyncs used to satisfy ack requests.");
  public static ag i = new ag("nCommitWriteNoSyncs", "Number of CommitWriteNoSyncs used to satisfy ack requests.");
  public static ag j = new ag("nAborts", "Number of Aborts replayed by the Replica.");
  public static ag k = new ag("nLNs", "Number of LNs.");
  public static ag l = new ag("nNameLNs", "Number of Name LNs.");
  public static ag m = new ag("nElapsedTxnTime", "The elapsed time in ms, spent replaying all transactions.");
  public static ag n = new ag("nMessageQueueOverflows", "Number of failed attempts to place an entry in the replica message queue due to the queue being full.");
  public static ag o = new ag("minCommitProcessingNanos", "Minimum nanosecs for commit processing");
  public static ag p = new ag("maxCommitProcessingNanos", "Maximum nanosecs for commit processing");
  public static ag q = new ag("totalCommitProcessingNanos", "Total nanosecs for commit processing");
  public static final ag r = new ag("totalCommitLagMs", "Sum of time periods, in msec, between when update operations commit on the master and then subsequently commit on the replica. This value is affected by any clock skew between the master and the replica.");
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */