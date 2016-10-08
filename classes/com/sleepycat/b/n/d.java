package com.sleepycat.b.n;

import com.sleepycat.b.c.ad;

public final class d
  extends a
{
  private final long a;
  private final q b;
  
  public d(ad paramad, q paramq)
  {
    super(paramad);
    if (paramq.i_()) {}
    for (long l = paramq.k;; l = -1L)
    {
      this.a = l;
      paramad = paramq;
      if (paramq.i_()) {
        paramad = null;
      }
      this.b = paramad;
      return;
    }
  }
  
  public final boolean a(q paramq)
  {
    if (super.a(paramq)) {}
    while (((this.a != -1L) && (this.a == paramq.k)) || ((this.b != null) && (this.b == paramq))) {
      return true;
    }
    return false;
  }
  
  public final boolean q()
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */