package com.sleepycat.b.i.e;

import com.sleepycat.b.i.b.ai;
import com.sleepycat.b.i.b.l;
import com.sleepycat.b.i.b.s;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.c.b.g;
import com.sleepycat.b.i.h.af;
import com.sleepycat.b.i.i.f;
import com.sleepycat.b.p.au;
import java.net.InetAddress;
import java.net.InetSocketAddress;

public final class p
  implements com.sleepycat.b.i.b.b
{
  private final aa a;
  private boolean b = false;
  
  public p(aa paramaa)
  {
    this.a = paramaa;
  }
  
  public final long a(s params)
  {
    if (this.b) {
      return Long.MAX_VALUE;
    }
    this.a.l.a(params);
    Object localObject = this.a;
    params = ((aa)localObject).y;
    n localn = ((aa)localObject).g;
    localObject = ((aa)localObject).f;
    if ((localn.a()) && (((com.sleepycat.b.i.c.b.m)localObject).c.size() + 1 >= params.a(com.sleepycat.b.i.p.b))) {}
    for (int i = 1; i != 0; i = 0) {
      return 9223372036854775806L;
    }
    return this.a.i.aj.h.b().c.c;
  }
  
  public final ai a()
  {
    InetSocketAddress localInetSocketAddress = this.a.b;
    return new l(localInetSocketAddress.getAddress().getHostAddress(), localInetSocketAddress.getPort(), this.a.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */