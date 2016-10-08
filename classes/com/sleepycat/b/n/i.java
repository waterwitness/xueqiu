package com.sleepycat.b.n;

import com.sleepycat.b.c.ao;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class i
  implements e
{
  private static final int b;
  private j c;
  private Set<j> d;
  private j e;
  private List<j> f;
  
  static
  {
    if (!i.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = 0 - ao.K;
      return;
    }
  }
  
  public i() {}
  
  i(j paramj)
  {
    this.c = paramj;
  }
  
  private h a(j paramj, boolean paramBoolean, ao paramao, int paramInt)
  {
    if (d() == 0)
    {
      a(paramj, paramao, paramInt);
      return h.a;
    }
    q localq1 = paramj.f();
    o localo1 = paramj.g();
    Object localObject1 = null;
    if (this.d != null) {}
    for (Iterator localIterator = this.d.iterator();; localIterator = null)
    {
      int i;
      int j;
      Object localObject2;
      p localp;
      if (this.c != null)
      {
        localObject1 = this.c;
        i = 0;
        j = 0;
        localObject2 = null;
        localp = null;
      }
      for (;;)
      {
        q localq2;
        o localo2;
        if (localObject1 != null)
        {
          localq2 = ((j)localObject1).f();
          localo2 = ((j)localObject1).g();
          if (localq1 == localq2)
          {
            if ((!a) && (localp != null))
            {
              throw new AssertionError();
              if ((localIterator == null) || (!localIterator.hasNext())) {
                break label376;
              }
              localObject1 = (j)localIterator.next();
              i = 0;
              j = 0;
              localObject2 = null;
              localp = null;
              continue;
            }
            localp = localo2.b(localo1);
            if (localp.g == null) {
              return h.e;
            }
            localObject2 = localObject1;
          }
        }
        label373:
        for (;;)
        {
          if ((localIterator != null) && (localIterator.hasNext()))
          {
            localObject1 = (j)localIterator.next();
            break;
            if ((localq1.a(localq2)) || (localq2.a(localq1))) {
              break label373;
            }
            localObject1 = localo2.a(localo1);
            if (((g)localObject1).e) {
              return h.g;
            }
            if (!((g)localObject1).d) {
              i = 1;
            }
            j = 1;
            continue;
          }
          localObject1 = null;
          break;
          if (localp != null)
          {
            paramj = localp.g;
            if ((!a) && (paramj == null)) {
              throw new AssertionError();
            }
            if (i == 0)
            {
              ((j)localObject2).a(paramj);
              if (localp.h) {
                return h.c;
              }
              return h.e;
            }
            return h.d;
          }
          if ((i == 0) && ((j == 0) || (paramBoolean)))
          {
            a(paramj, paramao, paramInt);
            return h.a;
          }
          return h.b;
        }
        label376:
        i = 0;
        j = 0;
        localObject2 = null;
        localp = null;
      }
    }
  }
  
  private void a(j paramj, ao paramao, int paramInt)
  {
    if (this.c == null) {
      this.c = paramj;
    }
    for (;;)
    {
      paramao.a(ao.K, paramInt);
      return;
      if (this.d == null) {
        this.d = new HashSet();
      }
      this.d.add(paramj);
    }
  }
  
  private j c(q paramq)
  {
    if ((this.c != null) && (this.c.f() == paramq)) {
      return this.c;
    }
    if (this.d != null)
    {
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
      {
        j localj = (j)localIterator.next();
        if (localj.f() == paramq) {
          return localj;
        }
      }
    }
    return null;
  }
  
  public final f a(o paramo, q paramq, boolean paramBoolean1, boolean paramBoolean2, ao paramao, int paramInt)
  {
    Object localObject;
    if (!a)
    {
      if ((this.e != null) && (this.e.f() == paramq) && (!a)) {
        throw new AssertionError("locker " + paramq + " is already on waiters list.");
      }
      if (this.f != null)
      {
        localObject = this.f.iterator();
        while (((Iterator)localObject).hasNext()) {
          if ((((j)((Iterator)localObject).next()).f() == paramq) && (!a)) {
            throw new AssertionError("locker " + paramq + " is already on waiters list.");
          }
        }
      }
    }
    j localj = new j(paramq, paramo);
    h localh;
    Iterator localIterator;
    if ((paramBoolean2) || (c() == 0))
    {
      paramBoolean2 = true;
      localh = a(localj, paramBoolean2, paramao, paramInt);
      if ((localh != h.b) && (localh != h.d) && (localh != h.g)) {
        break label589;
      }
      if ((!paramo.i) || (localh == h.g)) {
        break label571;
      }
      if (this.f == null) {
        break label583;
      }
      localIterator = this.f.iterator();
      label236:
      if (this.e == null) {
        break label332;
      }
      localObject = this.e;
      label249:
      if (localObject == null) {
        break label571;
      }
      q localq = ((j)localObject).f();
      localObject = ((j)localObject).g();
      if ((localObject == o.g) || (paramq == localq) || (paramq.a(localq)) || (!((o)localObject).a(paramo).e)) {
        break label362;
      }
      paramo = h.g;
      label307:
      if (!paramBoolean1) {
        break label398;
      }
      paramo = h.f;
    }
    for (;;)
    {
      return new f(this, paramo, false);
      paramBoolean2 = false;
      break;
      label332:
      if ((localIterator != null) && (localIterator.hasNext()))
      {
        localObject = (j)localIterator.next();
        break label249;
        label362:
        if ((localIterator != null) && (localIterator.hasNext()))
        {
          localObject = (j)localIterator.next();
          break label249;
        }
        localObject = null;
        break label249;
        label398:
        if (paramo == h.d)
        {
          if (this.e != null)
          {
            if (this.f == null) {
              this.f = new ArrayList();
            }
            this.f.add(0, this.e);
          }
          this.e = localj;
        }
        for (;;)
        {
          paramao.a(ao.K, paramInt);
          break;
          if ((!a) && (paramo != h.b) && (paramo != h.g)) {
            throw new AssertionError();
          }
          if (paramo == h.g) {
            localj.a(o.g);
          }
          if (this.f == null)
          {
            if (this.e == null)
            {
              this.e = localj;
            }
            else
            {
              this.f = new ArrayList();
              this.f.add(localj);
            }
          }
          else {
            this.f.add(localj);
          }
        }
        label571:
        paramo = localh;
        break label307;
      }
      localObject = null;
      break label249;
      label583:
      localIterator = null;
      break label236;
      label589:
      paramo = localh;
    }
  }
  
  public final o a(q paramq)
  {
    paramq = c(paramq);
    if (paramq != null) {
      return paramq.g();
    }
    return null;
  }
  
  public final List<j> a()
  {
    ArrayList localArrayList = new ArrayList();
    if (this.e != null) {
      localArrayList.add(this.e);
    }
    if (this.f != null) {
      localArrayList.addAll(this.f);
    }
    return localArrayList;
  }
  
  public final void a(q paramq, ao paramao, int paramInt)
  {
    if ((this.e != null) && (this.e.f() == paramq))
    {
      this.e = null;
      paramao.a(b, paramInt);
    }
    Iterator localIterator;
    do
    {
      do
      {
        return;
        while (this.f == null) {}
        localIterator = this.f.iterator();
      } while (!localIterator.hasNext());
    } while (((j)localIterator.next()).f() != paramq);
    localIterator.remove();
    paramao.a(b, paramInt);
  }
  
  public final boolean a(q paramq, o paramo)
  {
    paramq = c(paramq);
    if (paramq != null)
    {
      paramq = paramq.g();
      if (paramo == paramq) {}
      while (!paramq.b(paramo).h) {
        return true;
      }
    }
    return false;
  }
  
  public final Set<j> b()
  {
    if (this.d != null) {}
    for (HashSet localHashSet = new HashSet(this.d);; localHashSet = new HashSet())
    {
      if (this.c != null) {
        localHashSet.add(this.c);
      }
      return localHashSet;
    }
  }
  
  public final Set<q> b(q paramq, ao paramao, int paramInt)
  {
    Object localObject2;
    if ((this.c != null) && (this.c.f() == paramq))
    {
      localObject2 = this.c;
      this.c = null;
    }
    for (;;)
    {
      if (localObject2 != null) {
        paramao.a(b, paramInt);
      }
      Object localObject3;
      Object localObject1;
      if (localObject2 == null)
      {
        return null;
        if (this.d == null) {
          break label583;
        }
        localObject3 = this.d.iterator();
        localObject1 = null;
        localObject2 = localObject1;
        if (!((Iterator)localObject3).hasNext()) {
          continue;
        }
        localObject2 = (j)((Iterator)localObject3).next();
        if (((j)localObject2).f() != paramq) {
          break label580;
        }
        ((Iterator)localObject3).remove();
        localObject1 = localObject2;
      }
      label222:
      label262:
      label271:
      label479:
      label498:
      label508:
      label543:
      label555:
      label560:
      label566:
      label580:
      for (;;)
      {
        break;
        localObject2 = Collections.emptySet();
        if (c() == 0) {
          return (Set<q>)localObject2;
        }
        if (this.f != null) {}
        for (localObject1 = this.f.iterator();; localObject1 = null)
        {
          int i;
          if (this.e != null)
          {
            paramq = this.e;
            i = 1;
          }
          for (;;)
          {
            q localq1;
            if (paramq != null)
            {
              localObject3 = paramq.g();
              localq1 = paramq.f();
              if (localObject3 == o.g) {
                if (this.d == null) {
                  break label560;
                }
              }
            }
            for (localObject3 = this.d.iterator();; localObject3 = null)
            {
              if (this.c != null) {
                paramq = this.c;
              }
              for (;;)
              {
                int j;
                if (paramq != null)
                {
                  q localq2 = paramq.f();
                  if ((localq2 != localq1) && (!localq2.a(localq1)) && (paramq.g() == o.e))
                  {
                    j = 1;
                    if (j == 0) {
                      break label479;
                    }
                    paramq = h.b;
                    if ((paramq != h.a) && (paramq != h.e) && (paramq != h.c)) {
                      break label508;
                    }
                    if (i == 0) {
                      break label498;
                    }
                    this.e = null;
                  }
                }
                for (;;)
                {
                  localObject3 = localObject2;
                  if (localObject2 == Collections.EMPTY_SET) {
                    localObject3 = new HashSet();
                  }
                  ((Set)localObject3).add(localq1);
                  paramao.a(b, paramInt);
                  if ((localObject1 == null) || (!((Iterator)localObject1).hasNext())) {
                    break label543;
                  }
                  paramq = (j)((Iterator)localObject1).next();
                  i = 0;
                  localObject2 = localObject3;
                  break;
                  if ((localObject1 == null) || (!((Iterator)localObject1).hasNext())) {
                    break label566;
                  }
                  paramq = (j)((Iterator)localObject1).next();
                  i = 0;
                  break;
                  if ((localObject3 == null) || (!((Iterator)localObject3).hasNext())) {
                    break label555;
                  }
                  paramq = (j)((Iterator)localObject3).next();
                  break label222;
                  if ((localObject3 != null) && (((Iterator)localObject3).hasNext()))
                  {
                    paramq = (j)((Iterator)localObject3).next();
                    break label222;
                  }
                  paramq = null;
                  break label222;
                  j = 0;
                  break label262;
                  paramq = h.a;
                  break label271;
                  paramq = a(paramq, true, paramao, paramInt);
                  break label271;
                  ((Iterator)localObject1).remove();
                }
                if ((!a) && (paramq != h.b) && (paramq != h.d) && (paramq != h.g))
                {
                  throw new AssertionError();
                  paramq = null;
                  localObject2 = localObject3;
                  break;
                }
                return (Set<q>)localObject2;
                paramq = null;
              }
            }
            i = 0;
            paramq = null;
          }
        }
      }
      label583:
      localObject2 = null;
    }
  }
  
  public final void b(q paramq)
  {
    j localj = c(paramq);
    if (localj != null)
    {
      paramq = localj.g();
      if (paramq.h) {
        if (paramq != o.d) {
          break label39;
        }
      }
    }
    label39:
    for (paramq = o.c;; paramq = o.a)
    {
      localj.a(paramq);
      return;
    }
  }
  
  public final int c()
  {
    int i = 0;
    if (this.e != null) {
      i = 1;
    }
    int j = i;
    if (this.f != null) {
      j = i + this.f.size();
    }
    return j;
  }
  
  public final void c(q paramq, ao paramao, int paramInt)
  {
    Object localObject;
    if (this.c != null)
    {
      localObject = this.c.f();
      if ((localObject != paramq) && (((q)localObject).r))
      {
        ((q)localObject).u();
        this.c = null;
        paramao.a(b, paramInt);
      }
    }
    if (this.d != null)
    {
      localObject = this.d.iterator();
      while (((Iterator)localObject).hasNext())
      {
        q localq = ((j)((Iterator)localObject).next()).f();
        if ((localq != paramq) && (localq.r))
        {
          localq.u();
          ((Iterator)localObject).remove();
          paramao.a(b, paramInt);
        }
      }
    }
  }
  
  public final int d()
  {
    int i = 0;
    if (this.c != null) {
      i = 1;
    }
    int j = i;
    if (this.d != null) {
      j = i + this.d.size();
    }
    return j;
  }
  
  public final boolean e()
  {
    return false;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(" LockAddr:").append(System.identityHashCode(this));
    localStringBuilder.append(" Owners:");
    if (d() == 0)
    {
      localStringBuilder.append(" (none)");
      localStringBuilder.append(" Waiters:");
      if (c() != 0) {
        break label131;
      }
      localStringBuilder.append(" (none)");
    }
    for (;;)
    {
      return localStringBuilder.toString();
      if (this.c != null) {
        localStringBuilder.append(this.c);
      }
      if (this.d == null) {
        break;
      }
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext()) {
        localStringBuilder.append((j)localIterator.next());
      }
      break;
      label131:
      localStringBuilder.append(a());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */