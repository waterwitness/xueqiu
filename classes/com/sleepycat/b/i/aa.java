package com.sleepycat.b.i;

import com.sleepycat.b.c.ac;
import com.sleepycat.b.g.m;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.e.q;
import com.sleepycat.b.p.au;

public final class aa
  extends y
{
  private final q c;
  
  public aa(aj paramaj, int paramInt, au paramau, q paramq)
  {
    super(paramaj, localac, "Node " + str + " must rollback" + paramq.b() + " in order to rejoin the replication group, but the transaction rollback limit of " + paramInt + " prohibits this. Either increase the property je.rep.txnRollbackLimit to a value larger than " + paramInt + " to permit automatic rollback, or manually remove the problematic transactions. To do a manual removal, truncate the log to file " + m.c(l1) + ", offset 0x" + Long.toHexString(l2) + ", vlsn " + paramau + " using the directions in com.sleepycat.je.util.DbTruncateLog.");
    this.c = paramq;
  }
  
  private aa(String paramString, aa paramaa)
  {
    super(paramString + " " + paramaa.getMessage(), paramaa);
    this.c = paramaa.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */