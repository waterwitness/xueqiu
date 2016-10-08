package com.sleepycat.b.i;

import com.sleepycat.b.c.ac;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.e.q;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;

public final class z
  extends y
{
  private final q c;
  
  public z(aj paramaj, au paramau, q paramq)
  {
    super(paramaj, localac, "Node " + str + " must rollback" + paramq.b() + " in order to rejoin the replication group. All existing ReplicatedEnvironment handles must be closed and reinstantiated.  Log files were truncated to file 0x" + j.d(l) + ", offset 0x" + j.e(l) + ", vlsn " + paramau);
    this.c = paramq;
  }
  
  private z(String paramString, z paramz)
  {
    super(paramString + " " + paramz.getMessage(), paramz);
    this.c = paramz.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */