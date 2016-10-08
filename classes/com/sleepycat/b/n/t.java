package com.sleepycat.b.n;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.c;
import com.sleepycat.b.c.i;
import com.sleepycat.b.l.a;

public class t
  extends b
{
  static
  {
    if (!t.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  private t(ad paramad, q paramq)
  {
    super(paramad, localq);
    if ((!b) && (!this.a.i_())) {
      throw new AssertionError();
    }
  }
  
  public static t b(ad paramad, q paramq)
  {
    return new t(paramad, paramq);
  }
  
  protected final m a(long paramLong, o paramo, boolean paramBoolean1, boolean paramBoolean2, i parami)
  {
    if (paramo.h) {
      return this.a.a(paramLong, paramo, paramBoolean1, paramBoolean2, parami);
    }
    return super.a(paramLong, paramo, paramBoolean1, paramBoolean2, parami);
  }
  
  public final void a(c paramc)
  {
    this.a.a(paramc);
  }
  
  public final void a(a parama)
  {
    this.a.a(parama);
  }
  
  public final void b(c paramc)
  {
    this.a.b(paramc);
  }
  
  public final boolean d(long paramLong)
  {
    boolean bool = true;
    if (!this.j.c(paramLong, this)) {
      bool = this.j.c(paramLong, this.a);
    }
    a(paramLong);
    return bool;
  }
  
  public final q f()
  {
    return b(this.i, this.a.f());
  }
  
  public final boolean i_()
  {
    return true;
  }
  
  public final boolean j_()
  {
    return true;
  }
  
  public final boolean l_()
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */