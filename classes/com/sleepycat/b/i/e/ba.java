package com.sleepycat.b.i.e;

import com.sleepycat.b.n;
import com.sleepycat.b.p.au;

public final class ba
  extends n
{
  final au a;
  
  public ba(long paramLong1, long paramLong2, au paramau)
  {
    super("Restarting reader in order to read backwards across gap from file 0x" + Long.toHexString(paramLong1) + " to file 0x" + Long.toHexString(paramLong2) + ". Reset position to vlsn " + paramau);
    this.a = paramau;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\ba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */