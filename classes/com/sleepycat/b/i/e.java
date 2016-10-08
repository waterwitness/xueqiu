package com.sleepycat.b.i;

import com.sleepycat.b.au;
import com.sleepycat.b.i.f.b;
import com.sleepycat.b.n.q;
import com.sleepycat.b.n.z;
import com.sleepycat.b.u;

public class e
  extends au
{
  private final int b;
  private final int c;
  private final int e;
  private final String f;
  
  static
  {
    if (!e.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public e(b paramb, int paramInt1, int paramInt2, String paramString)
  {
    super(null, false, "Transaction: " + paramb.k + "  VLSN: " + paramb.a + ", initiated at: " + String.format("%1tT. ", new Object[] { Long.valueOf(paramb.c) }) + " Insufficient acks for policy:" + paramb.D.g + ". Need replica acks: " + paramb.b + ". Missing replica acks: " + paramInt1 + ". Timeout: " + paramInt2 + "ms. FeederState=" + paramString, null);
    if ((!a) && (paramInt1 > paramb.b)) {
      throw new AssertionError();
    }
    this.b = paramInt1;
    this.c = paramb.b;
    this.e = paramInt2;
    this.f = paramString;
  }
  
  private e(String paramString, e parame)
  {
    super(paramString, parame);
    this.b = parame.b;
    this.c = parame.c;
    this.e = parame.e;
    this.f = parame.f;
  }
  
  public final au b(String paramString)
  {
    return new e(paramString, this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */