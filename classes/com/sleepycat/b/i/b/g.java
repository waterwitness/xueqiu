package com.sleepycat.b.i.b;

import com.sleepycat.b.i.c.b.aa;
import java.net.InetSocketAddress;
import java.util.Set;

public final class g
  implements Runnable
{
  final Set<InetSocketAddress> a;
  final v b;
  
  public g(Set<InetSocketAddress> paramSet, v paramv)
  {
    this.a = paramv;
    v localv;
    this.b = localv;
  }
  
  public final void run()
  {
    j.a(this.a, this.b, d.e(this.c), d.f(this.c), d.a(this.c), d.g(this.c).i, null);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */