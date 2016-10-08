package com.sleepycat.b;

import java.io.Serializable;

public final class bt
  implements Serializable
{
  public long a;
  public String b;
  private long c;
  
  public bt(String paramString, long paramLong)
  {
    this.b = paramString;
    this.a = paramLong;
    this.c = 0L;
  }
  
  public final String toString()
  {
    return "txnId = " + this.a + " txnName = " + this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\bt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */