package com.sleepycat.b.i.b;

import com.sleepycat.b.i.c.au;
import com.sleepycat.b.i.c.az;
import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.p.o;
import com.sleepycat.b.p.w;
import java.net.InetSocketAddress;
import java.util.Iterator;
import java.util.Set;
import java.util.logging.Level;

public final class ak
  extends m
{
  static volatile int g = 0;
  private final am h = new am();
  
  public ak(d paramd, com.sleepycat.b.i.c.b.x paramx)
  {
    super(paramd, paramx);
  }
  
  protected final ai a(Set<au> paramSet)
  {
    al localal = new al(this.a, paramSet);
    Iterator localIterator = paramSet.iterator();
    long l = Long.MIN_VALUE;
    String str = null;
    int j = Integer.MIN_VALUE;
    int i = 0;
    paramSet = null;
    label300:
    while (localIterator.hasNext())
    {
      au localau = (au)localIterator.next();
      if (localau.a().a() == this.a.j.g)
      {
        ac localac = (ac)localau.a();
        if (localac.e == 0)
        {
          i += 1;
        }
        else
        {
          int n = localac.f;
          if (!localal.c)
          {
            int m = g;
            k = m;
            if (m == 0) {
              k = 9;
            }
            if ((localal.b >= k - 1) || (((localal.a != Integer.MIN_VALUE) || (n == localal.b)) && ((localal.a == Integer.MIN_VALUE) || (n == localal.b) || (n == localal.a)))) {}
          }
          for (int k = 1;; k = 0)
          {
            if ((k != 0) || (localac.d < l) || ((localac.d == l) && ((localac.e < j) || ((localac.e == j) && (str != null) && (localau.a.toString().compareTo(str) <= 0))))) {
              break label300;
            }
            paramSet = localac.c;
            l = localac.d;
            j = localac.e;
            str = localau.a.toString();
            break;
          }
        }
      }
    }
    if ((paramSet == null) && (i > 0))
    {
      w.a(this.e, this.a.c.i, this.f, Level.INFO, "No positive election priority node responded. Zero election priority node count:" + i);
      this.b.f();
    }
    return paramSet;
  }
  
  public final s a()
  {
    try
    {
      s locals = this.h.a();
      return locals;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */