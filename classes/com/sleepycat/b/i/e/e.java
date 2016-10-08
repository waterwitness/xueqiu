package com.sleepycat.b.i.e;

import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.p.au;

public final class e
  extends Exception
{
  private final au a;
  private final au b;
  private final au c;
  private final x d;
  
  public e(au paramau1, au paramau2, au paramau3, x paramx)
  {
    this.a = paramau1;
    this.b = paramau2;
    this.c = paramau3;
    this.d = paramx;
  }
  
  public final String getMessage()
  {
    return "Matchpoint vlsn " + this.a + " requested by node: " + this.d + " was outside the VLSN range: [" + this.b + "-" + this.c + "]";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */