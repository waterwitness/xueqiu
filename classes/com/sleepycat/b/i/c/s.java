package com.sleepycat.b.i.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.an;
import com.sleepycat.b.c.i;
import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.e;
import com.sleepycat.b.i.f.b;
import com.sleepycat.b.i.g;
import com.sleepycat.b.n.z;
import com.sleepycat.b.p.w;

abstract class s
{
  private com.sleepycat.b.n a = null;
  final am b;
  final i c;
  protected z d;
  
  private s(p paramp, am paramam)
  {
    this.b = paramam;
    try
    {
      this.c = p.a(paramp).a(com.sleepycat.b.i.n.a, false);
      return;
    }
    catch (com.sleepycat.b.p paramp)
    {
      throw aa.a(paramp);
    }
  }
  
  abstract void a();
  
  void b() {}
  
  void c() {}
  
  final void d()
  {
    int i = 0;
    while (i < 5)
    {
      this.d = null;
      try
      {
        this.d = new b(p.a(this.e), p.a(), p.a(this.e).ao);
        a();
        this.d.a(p.b());
        this.d = null;
        return;
      }
      catch (g localg)
      {
        this.a = localg;
        c();
        w.b(p.b(this.e), p.a(this.e), "Phase 1 retry; for node: " + this.b.a.a + " insufficient active replicas: " + localg.getMessage());
        if (this.d != null)
        {
          z localz1 = this.d;
          localz1.n();
        }
        i += 1;
      }
      catch (e locale)
      {
        for (;;)
        {
          this.a = locale;
          w.b(p.b(this.e), p.a(this.e), "Phase 1 retry; for node: " + this.b.a.a + " insufficient acks: " + locale.getMessage());
          if (this.d != null) {
            z localz2 = this.d;
          }
        }
      }
      catch (an localan)
      {
        for (;;)
        {
          this.a = localan;
          b();
          w.b(p.b(this.e), p.a(this.e), "Phase 1 retry; for node: " + this.b.a.a + " deadlock exception: " + localan.getMessage());
          if (this.d != null) {
            z localz3 = this.d;
          }
        }
      }
      catch (com.sleepycat.b.n localn)
      {
        w.a(p.b(this.e), p.a(this.e), "Phase 1 failed unexpectedly: " + localn.getMessage());
        throw localn;
      }
      finally
      {
        if (this.d != null) {
          this.d.n();
        }
      }
    }
    w.b(p.b(this.e), p.a(this.e), "Phase 1 failed: " + this.a.getMessage());
    throw this.a;
  }
  
  final void e()
  {
    try
    {
      this.d = new b(p.a(this.e), p.c(), p.a(this.e).ao);
      this.b.c = true;
      p.a(this.d, this.b, this.c);
      this.d.m();
      this.d = null;
      return;
    }
    catch (com.sleepycat.b.n localn)
    {
      w.a(p.b(this.e), p.a(this.e), "Unexpected failure in Phase 2: " + localn.getMessage());
      throw localn;
    }
    finally
    {
      if (this.d != null) {
        this.d.n();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */