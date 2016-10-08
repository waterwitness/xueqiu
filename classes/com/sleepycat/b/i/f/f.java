package com.sleepycat.b.i.f;

import com.sleepycat.b.c.i;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.b.z;
import com.sleepycat.b.i.s;
import com.sleepycat.b.n.m;
import com.sleepycat.b.n.o;
import com.sleepycat.b.n.y;

public final class f
  extends y
{
  private final aj a;
  
  public f(aj paramaj)
  {
    super(paramaj);
    this.a = paramaj;
  }
  
  public final m a(long paramLong, o paramo, boolean paramBoolean1, boolean paramBoolean2, i parami)
  {
    if ((paramo.h) && (!parami.q())) {
      k();
    }
    return super.a(paramLong, paramo, paramBoolean1, paramBoolean2, parami);
  }
  
  public final void a(i parami)
  {
    if (!parami.q()) {
      k();
    }
    super.a(parami);
  }
  
  public final void b(i parami)
  {
    if (!parami.o()) {
      return;
    }
    d.a(this.a, this.a.at);
  }
  
  public final boolean h_()
  {
    return true;
  }
  
  public final void k()
  {
    throw new s(this, this.a.ap.b());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\f\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */