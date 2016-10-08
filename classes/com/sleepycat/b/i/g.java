package com.sleepycat.b.i;

import com.sleepycat.b.au;
import com.sleepycat.b.n.q;
import com.sleepycat.b.v;
import java.util.Set;

public final class g
  extends au
{
  private final v a;
  private final int b;
  private final Set<String> c;
  
  public g(q paramq, v paramv, int paramInt, Set<String> paramSet) {}
  
  private g(String paramString, g paramg)
  {
    super(paramString, paramg);
    this.a = paramg.a;
    this.b = paramg.b;
    this.c = paramg.c;
  }
  
  public final au b(String paramString)
  {
    return new g(paramString, this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */