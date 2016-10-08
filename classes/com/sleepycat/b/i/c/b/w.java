package com.sleepycat.b.i.c.b;

import com.sleepycat.b.i.b.ao;
import com.sleepycat.b.i.c.au;
import com.sleepycat.b.i.c.ay;
import com.sleepycat.b.i.c.t;
import com.sleepycat.b.i.d.g;
import com.sleepycat.b.i.d.k;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class w
{
  public long a = 0L;
  public final aa b;
  
  public w(aa paramaa)
  {
    this.b = paramaa;
  }
  
  public static g a(t paramt)
  {
    return new g(paramt.a, x.d);
  }
  
  public final List<Future<au>> a(t paramt, ay paramay)
  {
    paramt = paramt.g();
    com.sleepycat.b.p.w.c(this.b.a(), this.b.i, "Refreshed " + paramt.size() + " monitors.");
    return ao.a(paramt, "Monitor", paramay, this.b.d.h);
  }
  
  public final void a(com.sleepycat.b.i.d.d paramd)
  {
    if (this.a == 0L) {}
    for (;;)
    {
      return;
      Object localObject = this.b.m;
      g localg = a((t)localObject);
      localg.getClass();
      paramd = a((t)localObject, new k(localg, this.b.a.a, this.b.f(), paramd, this.a, System.currentTimeMillis())).iterator();
      while (paramd.hasNext())
      {
        localObject = (Future)paramd.next();
        try
        {
          ((Future)localObject).get(10L, TimeUnit.SECONDS);
        }
        catch (ExecutionException localExecutionException) {}catch (TimeoutException localTimeoutException) {}
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */