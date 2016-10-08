package com.sleepycat.b.i.f;

import com.sleepycat.b.bc;
import com.sleepycat.b.bo;
import com.sleepycat.b.br;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.i;
import com.sleepycat.b.g.av;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.k;
import com.sleepycat.b.i.s;
import com.sleepycat.b.i.u;
import com.sleepycat.b.n.m;
import com.sleepycat.b.n.o;

public class d
  extends com.sleepycat.b.n.z
{
  static
  {
    if (!d.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public d(ad paramad, br parambr)
  {
    super(paramad, parambr, av.g);
  }
  
  static void a(aj paramaj, bc parambc)
  {
    if ((u.a.equals(paramaj.ap.a())) || (u.c.equals(paramaj.ap.a()))) {
      return;
    }
    if ((!a) && (parambc == null)) {
      throw new AssertionError("Missing default consistency policy");
    }
    try
    {
      parambc.a(paramaj);
      return;
    }
    catch (InterruptedException parambc)
    {
      throw new bo(paramaj, parambc);
    }
    catch (k paramaj) {}
  }
  
  public final m a(long paramLong, o paramo, boolean paramBoolean1, boolean paramBoolean2, i parami)
  {
    if ((paramo.h) && (!parami.q())) {
      k();
    }
    return super.a(paramLong, paramo, paramBoolean1, paramBoolean2, parami);
  }
  
  protected final void a(br parambr)
  {
    if (!this.i.I()) {
      return;
    }
    a((aj)this.i, parambr.f);
  }
  
  public final void a(i parami)
  {
    if (!parami.q()) {
      k();
    }
    super.a(parami);
  }
  
  public final boolean h_()
  {
    return true;
  }
  
  public final void k()
  {
    throw new s(this, ((aj)this.i).ap.b());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\f\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */