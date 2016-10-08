package com.sleepycat.b.g;

import com.sleepycat.b.p.ag;
import com.sleepycat.b.p.ah;

public final class aq
{
  public static final ag A = new ag("nTempBufferWrites", "Number of writes which had to be completed using the temporary marshalling buffer because the fixed size log buffers specified by je.log.totalBufferBytes and je.log.numBuffers were not large enough.");
  public static final ag B = new ag("endOfLog", "The location of the next entry to be written to the log.", ah.b);
  public static final ag C = new ag("nNoFreeBuffer", "Number of requests to get a free buffer that force a log write.");
  public static final ag D = new ag("nNotResident", "Number of request for database objects not contained within the in memory data structure.");
  public static final ag E = new ag("nCacheMiss", "Total number of requests for database objects which were not in memory.");
  public static final ag F = new ag("nLogBuffers", "Number of log buffers currently instantiated.", ah.b);
  public static final ag G = new ag("bufferBytes", "Total memory currently consumed by log buffers, in bytes.", ah.b);
  public static final ag a = new ag("nRandomReads", "Number of disk reads which required respositioning the disk head more than 1MB from the previous file position.");
  public static final ag b = new ag("nRandomWrites", "Number of disk writes which required respositioning the disk head by more than 1MB from the previous file position.");
  public static final ag c = new ag("nSequentialReads", "Number of disk reads which did not require respositioning the disk head more than 1MB from the previous file position.");
  public static final ag d = new ag("nSequentialWrites", "Number of disk writes which did not require respositioning the disk head by more than 1MB from the previous file position.");
  public static final ag e = new ag("nRandomReadBytes", "Number of bytes read which required respositioning the disk head more than 1MB from the previous file position.");
  public static final ag f = new ag("nRandomWriteBytes", "Number of bytes written which required respositioning the disk head more than 1MB from the previous file position.");
  public static final ag g = new ag("nSequentialReadBytes", "Number of bytes read which did not require respositioning the disk head more than 1MB from the previous file position.");
  public static final ag h = new ag("nSequentialWriteBytes", "Number of bytes written which did not require respositioning the disk head more than 1MB from the previous file position.");
  public static final ag i = new ag("nFileOpens", "Number of times a log file has been opened.");
  public static final ag j = new ag("nOpenFiles", "Number of files currently open in the file cache.", ah.b);
  public static final ag k = new ag("nBytesReadFromWriteQueue", "Number of bytes read to fulfill file read operations by reading out of the pending write queue.");
  public static final ag l = new ag("nBytesWrittenFromWriteQueue", "Number of bytes written from the pending write queue.");
  public static final ag m = new ag("nReadsFromWriteQueue", "Number of file read operations which were fulfilled by reading out of the pending write queue.");
  public static final ag n = new ag("nWritesFromWriteQueue", "Number of file write operations executed from the pending write queue.");
  public static final ag o = new ag("nWriteQueueOverflow", "Number of write operations which would overflow the Write Queue.");
  public static final ag p = new ag("nWriteQueueOverflowFailures", "Number of write operations which would overflow the Write Queue and could not be queued.");
  public static final ag q = new ag("nFSyncs", "Number of fsyncs issued through the group commit manager for actions such as transaction commits and checkpoints. A subset of nLogFsyncs.");
  public static final ag r = new ag("nFSyncRequests", "Number of fsyncs requested through the group commit manager for actions such as transaction commits and checkpoints.");
  public static final ag s = new ag("nGrpCommitTimeouts", "Number of requests submitted to the group commit manager for actions such as transaction commmits and checkpoints which timed out.");
  public static final ag t = new ag("nLogFSyncs", "Total number of fsyncs of the JE log. This includes those fsyncs recorded under the nFsyncs stat");
  public static final ag u = new ag("nFSyncTime", "Total fsync time in msstat");
  public static final ag v = new ag("nGroupCommitRequests", "Number of group commit requests.");
  public static final ag w = new ag("nGroupCommitWaits", "Number of group commit leader waits.");
  public static final ag x = new ag("nLogMaxGroupCommitThreshold", "Number of group commits that were initiated due to the group commit size threshold being exceeded.");
  public static ag y = new ag("nLogIntervalExceeded", "Number of group commits that were initiated due to the group commit time interval being exceeded.");
  public static final ag z = new ag("nRepeatFaultReads", "Number of reads which had to be repeated when faulting in an object from disk because the read chunk size controlled by je.log.faultReadSize is too small.");
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */