package com.sleepycat.b.i.e;

import com.sleepycat.b.c.ac;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.m;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.an;
import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.h.o;
import com.sleepycat.b.p.w;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class aw
{
  private static volatile int h = 0;
  private static int k = 5;
  public final com.sleepycat.b.i.c.b.aa a;
  public final o b;
  public final x c;
  public x d;
  public t e = null;
  public ab f;
  public final Logger g;
  private long i = Long.MAX_VALUE;
  private long j = Long.MAX_VALUE;
  private final int l;
  
  public aw(com.sleepycat.b.i.c.b.aa paramaa, o paramo)
  {
    this.a = paramaa;
    this.b = paramo;
    paramo = paramaa.i;
    this.c = paramaa.a;
    this.l = paramo.u.a(an.w);
    this.g = w.a(getClass());
  }
  
  public static int a()
  {
    if (h != 0) {
      return h;
    }
    return 8;
  }
  
  public final void b()
  {
    int m = 0;
    for (;;)
    {
      m += 1;
      if ((m >= k) || (this.i <= 2L)) {}
      Object localObject1;
      Object localObject2;
      for (boolean bool = true;; bool = false)
      {
        localObject1 = this.e;
        localObject2 = this.e;
        localObject2.getClass();
        ((t)localObject1).a(new aq((t)localObject2, bool), this.b);
        localObject1 = (ar)this.e.a(this.b, ar.class);
        if (((ar)localObject1).c() >= this.i) {
          break label159;
        }
        this.i = ((ar)localObject1).c();
        if ((ar.f) || (((ar)localObject1).e != -1L)) {
          break;
        }
        throw new AssertionError();
      }
      this.j = ((((ar)localObject1).c - ((ar)localObject1).a + (((ar)localObject1).d - ((ar)localObject1).e)) / 2L);
      label159:
      if (bool)
      {
        localObject2 = this.g;
        aj localaj = this.a.i;
        if (Math.abs(this.j) >= this.l) {}
        for (localObject1 = Level.SEVERE;; localObject1 = Level.FINE)
        {
          w.a((Logger)localObject2, localaj, (Level)localObject1, "Round trip delay: " + this.i + " ms. Clock delta: " + this.j + " ms. Max permissible delta: " + this.l + " ms.");
          if (Math.abs(this.j) < this.l) {
            break;
          }
          throw new com.sleepycat.b.aa(this.a.i, ac.d, "Clock delta: " + this.j + " ms. between Feeder: " + this.d.a + " and this Replica exceeds max permissible delta: " + this.l + " ms.");
        }
        return;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\aw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */