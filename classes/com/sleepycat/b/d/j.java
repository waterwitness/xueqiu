package com.sleepycat.b.d;

import com.sleepycat.b.aa;
import com.sleepycat.b.bn;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.al;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.p.ai;
import java.util.Iterator;

final class j
  extends n
{
  private final ad b;
  private Iterator<com.sleepycat.b.l.j> c;
  
  public j(ad paramad)
  {
    super(paramad);
    this.b = paramad;
    this.c = null;
  }
  
  final p a()
  {
    try
    {
      p localp = new p();
      if (this.c == null) {
        this.c = this.b.t.iterator();
      }
      localp.a = this.b.F();
      localp.b = this.b.t.b();
      return localp;
    }
    finally {}
  }
  
  public final ai a(bn parambn)
  {
    return super.a(parambn);
  }
  
  public final void a(int paramInt) {}
  
  public final void a(ad paramad)
  {
    throw aa.b();
  }
  
  final com.sleepycat.b.l.j b()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (this.b.n.a())
    {
      if (!this.c.hasNext()) {
        this.c = this.b.t.iterator();
      }
      localObject1 = localObject2;
      if (this.c.hasNext()) {
        localObject1 = (com.sleepycat.b.l.j)this.c.next();
      }
    }
    return (com.sleepycat.b.l.j)localObject1;
  }
  
  final ai b(bn parambn)
  {
    return this.b.t.a();
  }
  
  public final void b(ad paramad)
  {
    throw aa.b();
  }
  
  public final boolean c(ad paramad)
  {
    throw aa.b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\d\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */