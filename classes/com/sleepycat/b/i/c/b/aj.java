package com.sleepycat.b.i.c.b;

import com.sleepycat.b.p.au;

public final class aj
  extends Exception
{
  final x a;
  final au b;
  final au c;
  
  public aj(x paramx, au paramau1, au paramau2)
  {
    this.a = paramx;
    this.b = paramau1;
    this.c = paramau2;
  }
  
  public final String getMessage()
  {
    return "Need election preceding hard recovery to verify master:" + this.a + " last txn end:" + this.b + " matchpoint VLSN:" + this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */