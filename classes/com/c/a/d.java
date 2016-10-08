package com.c.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class d
  extends a
{
  boolean b = false;
  private ArrayList<a> c = new ArrayList();
  private HashMap<a, i> d = new HashMap();
  private ArrayList<i> e = new ArrayList();
  private ArrayList<i> f = new ArrayList();
  private boolean g = true;
  private e h = null;
  private boolean i = false;
  private long j = 0L;
  private x k = null;
  private long l = -1L;
  
  private f a(a parama)
  {
    if (parama != null)
    {
      this.g = true;
      return new f(this, parama);
    }
    return null;
  }
  
  private d c()
  {
    d locald = (d)super.b();
    locald.g = true;
    locald.b = false;
    locald.i = false;
    locald.c = new ArrayList();
    locald.d = new HashMap();
    locald.e = new ArrayList();
    locald.f = new ArrayList();
    HashMap localHashMap = new HashMap();
    Object localObject3 = this.e.iterator();
    Object localObject2;
    Object localObject4;
    while (((Iterator)localObject3).hasNext())
    {
      localObject1 = (i)((Iterator)localObject3).next();
      localObject2 = ((i)localObject1).a();
      localHashMap.put(localObject1, localObject2);
      locald.e.add(localObject2);
      locald.d.put(((i)localObject2).a, localObject2);
      ((i)localObject2).b = null;
      ((i)localObject2).c = null;
      ((i)localObject2).e = null;
      ((i)localObject2).d = null;
      localObject4 = ((i)localObject2).a.a;
      if (localObject4 != null)
      {
        Iterator localIterator = ((ArrayList)localObject4).iterator();
        localObject1 = null;
        while (localIterator.hasNext())
        {
          b localb = (b)localIterator.next();
          if ((localb instanceof e))
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localb);
            localObject1 = localObject2;
          }
        }
        if (localObject1 != null)
        {
          localObject1 = ((ArrayList)localObject1).iterator();
          while (((Iterator)localObject1).hasNext()) {
            ((ArrayList)localObject4).remove((b)((Iterator)localObject1).next());
          }
        }
      }
    }
    Object localObject1 = this.e.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (i)((Iterator)localObject1).next();
      localObject2 = (i)localHashMap.get(localObject3);
      if (((i)localObject3).b != null)
      {
        localObject3 = ((i)localObject3).b.iterator();
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = (g)((Iterator)localObject3).next();
          ((i)localObject2).a(new g((i)localHashMap.get(((g)localObject4).a), ((g)localObject4).b));
        }
      }
    }
    return locald;
  }
  
  public final void a()
  {
    int i1 = 0;
    this.b = false;
    this.i = true;
    int n;
    Object localObject2;
    Object localObject3;
    int i3;
    if (this.g)
    {
      this.f.clear();
      localObject1 = new ArrayList();
      n = this.e.size();
      m = 0;
      while (m < n)
      {
        localObject2 = (i)this.e.get(m);
        if ((((i)localObject2).b == null) || (((i)localObject2).b.size() == 0)) {
          ((ArrayList)localObject1).add(localObject2);
        }
        m += 1;
      }
      localObject2 = new ArrayList();
      while (((ArrayList)localObject1).size() > 0)
      {
        i2 = ((ArrayList)localObject1).size();
        m = 0;
        while (m < i2)
        {
          localObject3 = (i)((ArrayList)localObject1).get(m);
          this.f.add(localObject3);
          if (((i)localObject3).e != null)
          {
            i3 = ((i)localObject3).e.size();
            n = 0;
            while (n < i3)
            {
              i locali = (i)((i)localObject3).e.get(n);
              locali.d.remove(localObject3);
              if (locali.d.size() == 0) {
                ((ArrayList)localObject2).add(locali);
              }
              n += 1;
            }
          }
          m += 1;
        }
        ((ArrayList)localObject1).clear();
        ((ArrayList)localObject1).addAll((Collection)localObject2);
        ((ArrayList)localObject2).clear();
      }
      this.g = false;
      if (this.f.size() != this.e.size()) {
        throw new IllegalStateException("Circular dependencies cannot exist in AnimatorSet");
      }
    }
    else
    {
      i2 = this.e.size();
      m = 0;
      while (m < i2)
      {
        localObject1 = (i)this.e.get(m);
        if ((((i)localObject1).b != null) && (((i)localObject1).b.size() > 0))
        {
          i3 = ((i)localObject1).b.size();
          n = 0;
          while (n < i3)
          {
            localObject2 = (g)((i)localObject1).b.get(n);
            if (((i)localObject1).d == null) {
              ((i)localObject1).d = new ArrayList();
            }
            if (!((i)localObject1).d.contains(((g)localObject2).a)) {
              ((i)localObject1).d.add(((g)localObject2).a);
            }
            n += 1;
          }
        }
        ((i)localObject1).f = false;
        m += 1;
      }
    }
    int i2 = this.f.size();
    int m = 0;
    while (m < i2)
    {
      localObject1 = (i)this.f.get(m);
      localObject2 = ((i)localObject1).a.a;
      if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
      {
        localObject2 = new ArrayList((Collection)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (b)((Iterator)localObject2).next();
          if (((localObject3 instanceof h)) || ((localObject3 instanceof e))) {
            ((i)localObject1).a.b((b)localObject3);
          }
        }
      }
      m += 1;
    }
    final Object localObject1 = new ArrayList();
    m = 0;
    if (m < i2)
    {
      localObject2 = (i)this.f.get(m);
      if (this.h == null) {
        this.h = new e(this, this);
      }
      if ((((i)localObject2).b == null) || (((i)localObject2).b.size() == 0)) {
        ((ArrayList)localObject1).add(localObject2);
      }
      for (;;)
      {
        ((i)localObject2).a.a(this.h);
        m += 1;
        break;
        i3 = ((i)localObject2).b.size();
        n = 0;
        while (n < i3)
        {
          localObject3 = (g)((i)localObject2).b.get(n);
          ((g)localObject3).a.a.a(new h(this, (i)localObject2, ((g)localObject3).b));
          n += 1;
        }
        ((i)localObject2).c = ((ArrayList)((i)localObject2).b.clone());
      }
    }
    if (this.j <= 0L)
    {
      localObject1 = ((ArrayList)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (i)((Iterator)localObject1).next();
        ((i)localObject2).a.a();
        this.c.add(((i)localObject2).a);
      }
    }
    this.k = x.b(new float[] { 0.0F, 1.0F });
    this.k.b(this.j);
    this.k.a(new c()
    {
      boolean a = false;
      
      public final void a(a paramAnonymousa)
      {
        if (!this.a)
        {
          int j = localObject1.size();
          int i = 0;
          while (i < j)
          {
            paramAnonymousa = (i)localObject1.get(i);
            paramAnonymousa.a.a();
            d.a(d.this).add(paramAnonymousa.a);
            i += 1;
          }
        }
      }
    });
    this.k.a();
    if (this.a != null)
    {
      localObject1 = (ArrayList)this.a.clone();
      n = ((ArrayList)localObject1).size();
      m = 0;
      while (m < n)
      {
        ((b)((ArrayList)localObject1).get(m)).b(this);
        m += 1;
      }
    }
    if ((this.e.size() == 0) && (this.j == 0L))
    {
      this.i = false;
      if (this.a != null)
      {
        localObject1 = (ArrayList)this.a.clone();
        n = ((ArrayList)localObject1).size();
        m = i1;
        while (m < n)
        {
          ((b)((ArrayList)localObject1).get(m)).a(this);
          m += 1;
        }
      }
    }
  }
  
  public final void a(a... paramVarArgs)
  {
    this.g = true;
    f localf = a(paramVarArgs[0]);
    int m = 1;
    while (m < paramVarArgs.length)
    {
      a locala = paramVarArgs[m];
      i locali2 = (i)localf.b.d.get(locala);
      i locali1 = locali2;
      if (locali2 == null)
      {
        locali1 = new i(locala);
        localf.b.d.put(locala, locali1);
        localf.b.e.add(locali1);
      }
      locali1.a(new g(localf.a, 0));
      m += 1;
    }
  }
  
  public final d b(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("duration must be a value of zero or greater");
    }
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext()) {
      ((i)localIterator.next()).a.a(paramLong);
    }
    this.l = paramLong;
    return this;
  }
  
  public final void b(a... paramVarArgs)
  {
    this.g = true;
    int m = 0;
    while (m <= 0)
    {
      f localf = a(paramVarArgs[0]);
      a locala = paramVarArgs[1];
      i locali2 = (i)localf.b.d.get(locala);
      i locali1 = locali2;
      if (locali2 == null)
      {
        locali1 = new i(locala);
        localf.b.d.put(locala, locali1);
        localf.b.e.add(locali1);
      }
      locali1.a(new g(localf.a, 1));
      m += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */