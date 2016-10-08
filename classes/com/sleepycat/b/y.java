package com.sleepycat.b;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.i;
import com.sleepycat.b.c.p;
import com.sleepycat.b.c.s;
import com.sleepycat.b.n.q;
import com.sleepycat.b.n.r;
import com.sleepycat.b.p.ab;

abstract class y<R>
{
  private final bp a;
  private final String b;
  final p c;
  
  y(x paramx, bp parambp, String paramString)
  {
    this.a = parambp;
    this.b = paramString;
    paramx.e();
    paramx.g();
    x.a(paramx);
    this.c = paramx.a.q;
  }
  
  private q a(boolean paramBoolean)
  {
    return r.a(this.d, this.a, false, this.d.a.e, paramBoolean);
  }
  
  private R b(q paramq)
  {
    boolean bool4 = false;
    boolean bool3 = false;
    boolean bool1 = bool3;
    boolean bool2 = bool4;
    i locali;
    try
    {
      ab localab = a(paramq);
      bool1 = bool3;
      bool2 = bool4;
      locali = (i)localab.a;
      if (locali == null)
      {
        bool1 = bool3;
        bool2 = bool4;
        throw aa.a(this.d.a);
      }
    }
    catch (Error localError)
    {
      bool2 = bool1;
      this.d.a.a(localError);
      bool2 = bool1;
      throw localError;
    }
    finally
    {
      paramq.a_(bool2);
    }
    bool4 = true;
    bool3 = true;
    bool1 = bool3;
    bool2 = bool4;
    a(paramq, locali);
    bool1 = bool3;
    bool2 = bool4;
    Object localObject2 = ((ab)localObject1).b;
    paramq.a_(true);
    return (R)localObject2;
  }
  
  abstract ab<i, R> a(q paramq);
  
  final R a()
  {
    try
    {
      Object localObject1 = b(a(false));
      return (R)localObject1;
    }
    catch (s locals1)
    {
      try
      {
        Object localObject2 = b(a(true));
        return (R)localObject2;
      }
      catch (s locals2)
      {
        throw aa.a(this.d.a, locals1);
      }
    }
  }
  
  abstract void a(q paramq, i parami);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */