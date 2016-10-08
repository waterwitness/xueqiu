package com.sleepycat.b.a;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.g.af;
import com.sleepycat.b.p.j;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public abstract class b
{
  public ad b;
  public c c;
  long d;
  volatile long e;
  volatile Map<Long, z> f;
  
  static
  {
    if (!b.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      return;
    }
  }
  
  b(ad paramad, c paramc)
  {
    if ((!g) && (paramc == null)) {
      throw new AssertionError();
    }
    this.b = paramad;
    this.c = paramc;
    this.f = new HashMap();
    this.d = -1L;
  }
  
  public static boolean a(af paramaf)
  {
    return (paramaf == null) || (paramaf.c()) || (paramaf.equals(af.v));
  }
  
  public static boolean b(af paramaf)
  {
    return (paramaf == null) || (paramaf.e());
  }
  
  abstract f a(Object paramObject, long paramLong);
  
  public final z a(long paramLong)
  {
    return (z)this.f.get(Long.valueOf(paramLong));
  }
  
  public final Collection<z> a()
  {
    return this.f.values();
  }
  
  final void a(long paramLong, Object paramObject, af paramaf, int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    if ((!g) && (!a(paramaf))) {
      throw new AssertionError();
    }
    boolean bool = b(paramaf);
    long l1 = j.d(paramLong);
    z localz;
    if (paramBoolean1)
    {
      localz = b(l1);
      if (!bool) {
        break label242;
      }
      localz.i += 1;
      if (paramInt > 0)
      {
        localz.j += paramInt;
        localz.k += 1;
      }
    }
    label242:
    do
    {
      if (paramBoolean3)
      {
        long l2 = j.e(paramLong);
        if ((l2 != 0L) && (localz.p))
        {
          int i = 0;
          if (localz.n == null)
          {
            localz.n = new t();
            i = ao.Q + 0;
          }
          int j = i;
          if (localz.n.a(l2, paramBoolean4)) {
            j = i + ao.R;
          }
          if (j != 0) {
            localz.a(j);
          }
        }
      }
      if (!paramBoolean2) {
        break label326;
      }
      if ((g) || (paramObject != null)) {
        break;
      }
      throw new AssertionError("No DB for lsn=" + j.h(paramLong) + " type: " + paramaf);
      localz.h += 1;
    } while ((g) || (paramInt == 0));
    throw new AssertionError();
    paramObject = a(paramObject, l1);
    if (paramObject != null)
    {
      if (!bool) {
        break label327;
      }
      ((f)paramObject).f += 1;
      if (paramInt > 0)
      {
        ((f)paramObject).g += paramInt;
        ((f)paramObject).h += 1;
      }
    }
    label326:
    label327:
    do
    {
      return;
      ((f)paramObject).e += 1;
    } while ((g) || (paramInt == 0));
    throw new AssertionError();
  }
  
  public final boolean a(long paramLong, Object paramObject, af paramaf, int paramInt)
  {
    if ((!g) && (paramaf == null)) {
      throw new AssertionError();
    }
    long l = j.d(paramLong);
    z localz = b(l);
    localz.a += 1;
    localz.b += paramInt;
    boolean bool = b(paramaf);
    if ((bool) && (localz.g < paramInt)) {
      localz.g = paramInt;
    }
    if (a(paramaf))
    {
      if ((!g) && (paramObject == null)) {
        throw new AssertionError("No DB for lsn=" + j.h(paramLong) + " type: " + paramaf);
      }
      paramObject = a(paramObject, l);
      if (!bool) {
        break label234;
      }
      localz.e += 1;
      localz.f += paramInt;
      if (paramObject != null)
      {
        ((f)paramObject).c += 1;
        ((f)paramObject).d += paramInt;
      }
    }
    for (;;)
    {
      this.e += paramInt;
      if (this.e < this.c.M) {
        break;
      }
      return true;
      label234:
      localz.c += 1;
      localz.d += paramInt;
      if (paramObject != null)
      {
        ((f)paramObject).a += 1;
        ((f)paramObject).b += paramInt;
      }
    }
    return false;
  }
  
  public boolean a(Long paramLong, long paramLong1)
  {
    return true;
  }
  
  public final z b(long paramLong)
  {
    if (this.d < paramLong) {
      this.d = paramLong;
    }
    Long localLong = Long.valueOf(paramLong);
    Object localObject2 = (z)this.f.get(localLong);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new z(this, paramLong, this.c.N);
      localObject2 = new HashMap(this.f);
      ((Map)localObject2).put(localLong, localObject1);
      this.f = ((Map)localObject2);
    }
    return (z)localObject1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */