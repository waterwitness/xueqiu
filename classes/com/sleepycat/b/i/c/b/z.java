package com.sleepycat.b.i.c.b;

import com.sleepycat.b.i.ab;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.u;
import com.sleepycat.b.p.w;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Logger;

public final class z
{
  private final aj a;
  private ab b;
  private final AtomicReference<u> c;
  private final Logger d;
  private final x e;
  
  public final u a()
  {
    try
    {
      u localu = (u)this.c.get();
      return localu;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(u paramu, x paramx)
  {
    try
    {
      u localu = (u)this.c.getAndSet(paramu);
      this.b = new ab(paramu, paramx);
      w.e(this.d, this.a, "state change from " + localu + " to " + paramu);
      Thread.currentThread().setName(this.c + " " + this.e);
      return;
    }
    finally
    {
      paramu = finally;
      throw paramu;
    }
  }
  
  public final ab b()
  {
    try
    {
      ab localab = this.b;
      return localab;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */