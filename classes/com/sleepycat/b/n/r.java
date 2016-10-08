package com.sleepycat.b.n;

import com.sleepycat.b.bp;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.av;
import com.sleepycat.b.x;

public final class r
{
  public static q a(x paramx, bp parambp, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((parambp != null) && (!paramBoolean1)) {
      throw new IllegalArgumentException("A Transaction cannot be used because the database was opened non-transactionally");
    }
    bp localbp = null;
    paramBoolean1 = paramBoolean2;
    if (parambp != null)
    {
      parambp = com.sleepycat.b.q.a(parambp);
      localbp = parambp;
      paramBoolean1 = paramBoolean2;
      if (parambp.j_())
      {
        paramBoolean1 = true;
        localbp = parambp;
      }
    }
    return a(paramx, localbp, paramBoolean1);
  }
  
  public static q a(x paramx, bp parambp, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    return b(paramx, parambp, paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  public static q a(x paramx, q paramq, boolean paramBoolean)
  {
    ad localad = paramx.a;
    if (paramq == null)
    {
      paramx = paramx.d();
      if (paramx != null) {
        paramx = com.sleepycat.b.q.a(paramx);
      }
    }
    do
    {
      return paramx;
      if (paramq == null) {
        return y.b(localad);
      }
      paramx = paramq;
    } while (!paramBoolean);
    return t.b(localad, paramq);
  }
  
  public static q b(x paramx, bp parambp, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    ad localad = paramx.a;
    boolean bool = localad.e;
    if (parambp == null)
    {
      bp localbp = paramx.d();
      if (localbp != null) {
        paramx = com.sleepycat.b.q.a(localbp);
      }
    }
    do
    {
      return paramx;
      if ((paramBoolean2) && (parambp == null))
      {
        parambp = paramx.b;
        if (paramBoolean3) {}
        for (paramx = av.f;; paramx = av.g) {
          return z.a(localad, parambp, paramx);
        }
      }
      if (parambp == null) {
        return y.b(localad);
      }
      if ((!paramBoolean1) && (!bool)) {
        throw new IllegalArgumentException("A Transaction cannot be used because the environment was opened non-transactionally");
      }
      if (!paramBoolean2) {
        throw new IllegalArgumentException("A Transaction cannot be used because the database was opened non-transactionally");
      }
      parambp = com.sleepycat.b.q.a(parambp);
      paramx = parambp;
    } while (!parambp.j_());
    return t.b(localad, parambp);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */