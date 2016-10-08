package com.sleepycat.b.i.h;

import com.sleepycat.b.p.ag;

public final class l
{
  public static final ag a = new ag("nReadNanos", "The number of nanoseconds spent reading from the network channel.");
  public static final ag b = new ag("nWriteNanos", "The number of nanoseconds spent writing to the network channel.");
  public static final ag c = new ag("nBytesRead", "The number of bytes of Replication Stream read over the network. It does not include the TCP/IP overhead.");
  public static final ag d = new ag("nMessagesRead", "The number of Replication Stream messages read over the network.");
  public static final ag e = new ag("nBytesWritten", "The number of Replication Stream bytes written over the network.");
  public static final ag f = new ag("nMessagesWritten", "The number of Replication Stream messages written over the network.");
  public static final ag g = new ag("messagesReadPerSecond", "Incoming message throughput.");
  public static final ag h = new ag("messagesWrittenPerSecond", "Outgoing message throughput.");
  public static final ag i = new ag("bytesReadPerSecond", "Bytes read throughput.");
  public static final ag j = new ag("bytesWrittenPerSecond", "Bytes written throughput.");
  public static final ag k = new ag("nEntriesOldVersion", "The number of messages containing log entries that were written to the replication stream using the previous log format, to support replication to a replica running an earlier version during an upgrade.");
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */