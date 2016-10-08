package com.sleepycat.b.i.e;

import com.sleepycat.b.aa;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.af;

public abstract class bc
{
  public final ae d;
  
  bc(ae paramae)
  {
    this.d = paramae;
  }
  
  final af c()
  {
    af localaf = af.a(this.d.b);
    if (localaf == null) {
      throw aa.c("Unknown header type:" + this.d.b);
    }
    return localaf;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\bc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */