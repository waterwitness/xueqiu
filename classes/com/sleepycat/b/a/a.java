package com.sleepycat.b.a;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.i;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

abstract class a
  extends b
{
  Map<Object, g> a;
  
  a(ad paramad, Map<Object, g> paramMap)
  {
    super(paramad, paramad.D);
    this.a = paramMap;
  }
  
  final f a(Object paramObject, long paramLong)
  {
    if (paramObject != null)
    {
      g localg2 = (g)this.a.get(paramObject);
      g localg1 = localg2;
      if (localg2 == null)
      {
        localg1 = new g(true);
        localg1.a(this.b);
        this.a.put(paramObject, localg1);
      }
      return localg1.a(Long.valueOf(paramLong), true, false, this.b.x);
    }
    return null;
  }
  
  abstract i a(Object paramObject);
  
  public void a(ae paramae)
  {
    Iterator localIterator = a().iterator();
    Object localObject1;
    Object localObject3;
    Object localObject4;
    Object localObject2;
    int i;
    while (localIterator.hasNext())
    {
      localObject1 = (z)localIterator.next();
      localObject3 = paramae.b(((z)localObject1).m);
      ((z)localObject3).a((o)localObject1);
      ((z)localObject3).o += ((z)localObject1).o;
      if (((z)localObject1).n != null) {
        if (((z)localObject3).n != null)
        {
          localObject4 = ((z)localObject3).n;
          localObject1 = ((z)localObject1).n;
          int j = 1;
          for (localObject1 = ((t)localObject1).a;; localObject1 = localObject2)
          {
            localObject2 = ((u)localObject1).b;
            if (localObject2 == null) {
              break;
            }
            ((u)localObject1).b = ((t)localObject4).a;
            ((t)localObject4).a = ((u)localObject1);
          }
          i = 0;
          while (i < ((u)localObject1).a)
          {
            if (((t)localObject4).a(((u)localObject1).a(i), false)) {
              j = 0;
            }
            i += 1;
          }
          if (j != 0) {
            ((z)localObject3).a(-ao.R);
          }
        }
        else
        {
          ((z)localObject3).n = ((z)localObject1).n;
        }
      }
    }
    paramae = this.a.keySet().iterator();
    while (paramae.hasNext())
    {
      localObject2 = paramae.next();
      localObject1 = a(localObject2);
      localObject2 = (g)this.a.get(localObject2);
      if (localObject1 != null)
      {
        localIterator = ((g)localObject2).b().iterator();
        while (localIterator.hasNext())
        {
          localObject4 = (Map.Entry)localIterator.next();
          localObject3 = ((i)localObject1).a((Long)((Map.Entry)localObject4).getKey());
          if (localObject3 != null)
          {
            localObject4 = (f)((Map.Entry)localObject4).getValue();
            ((f)localObject3).a += ((f)localObject4).a;
            ((f)localObject3).b += ((f)localObject4).b;
            ((f)localObject3).c += ((f)localObject4).c;
            ((f)localObject3).d += ((f)localObject4).d;
            ((f)localObject3).e += ((f)localObject4).e;
            ((f)localObject3).f += ((f)localObject4).f;
            ((f)localObject3).g += ((f)localObject4).g;
            i = ((f)localObject3).h;
            ((f)localObject4).h += i;
          }
        }
      }
      a((i)localObject1);
      ((g)localObject2).a();
    }
  }
  
  abstract void a(i parami);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */