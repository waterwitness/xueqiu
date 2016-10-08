package com.sleepycat.b.n;

import com.sleepycat.b.an;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.i;
import com.sleepycat.b.p.ai;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class w
  extends l
{
  public w(ad paramad)
  {
    super(paramad);
  }
  
  final an a(boolean paramBoolean, q paramq, long paramLong1, o paramo, h paramh, e parame, long paramLong2, long paramLong3, long paramLong4, i parami)
  {
    int i = a(paramLong1);
    synchronized (this.g[i])
    {
      paramq = b(paramBoolean, paramq, paramLong1, paramo, paramh, parame, paramLong2, paramLong3, paramLong4, parami);
      return paramq;
    }
  }
  
  public final f a(Long paramLong, q paramq, o paramo)
  {
    int i = c(paramLong);
    synchronized (this.g[i])
    {
      paramLong = a(paramLong, paramq, paramo, i);
      return paramLong;
    }
  }
  
  final f a(Long paramLong, q paramq, o paramo, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = c(paramLong);
    synchronized (this.g[i])
    {
      paramLong = a(paramLong, paramq, paramo, paramBoolean1, paramBoolean2, i);
      return paramLong;
    }
  }
  
  public final o a(Long paramLong, q paramq)
  {
    int i = c(paramLong);
    synchronized (this.g[i])
    {
      paramLong = (e)this.h[i].get(paramLong);
      if (paramLong == null)
      {
        paramLong = null;
        return paramLong;
      }
      paramLong = paramLong.a(paramq);
    }
  }
  
  final Set<q> a(long paramLong, q paramq)
  {
    int i = a(paramLong);
    for (;;)
    {
      Object localObject;
      e locale;
      synchronized (this.g[i])
      {
        localObject = this.h[i];
        locale = (e)((Map)localObject).get(Long.valueOf(paramLong));
        if (locale != null) {
          break label194;
        }
        locale = (e)((Map)localObject).get(Long.valueOf(paramLong));
        break label194;
        return paramq;
        localObject = locale.b(paramq, this.j, i);
        if (localObject == null)
        {
          paramq = null;
          continue;
        }
        paramq = (q)localObject;
        if (locale.c() != 0) {
          continue;
        }
        paramq = (q)localObject;
        if (locale.d() != 0) {
          continue;
        }
        this.h[i].remove(Long.valueOf(paramLong));
        if (locale.e())
        {
          this.j.a(l.d, i);
          paramq = (q)localObject;
        }
      }
      this.j.a(l.c, i);
      paramq = (q)localObject;
      continue;
      label194:
      if (locale == null) {
        paramq = null;
      }
    }
  }
  
  public final Set<j> a(Long paramLong)
  {
    int i = c(paramLong);
    synchronized (this.g[i])
    {
      paramLong = (e)this.h[i].get(paramLong);
      if (paramLong == null)
      {
        paramLong = null;
        return paramLong;
      }
      paramLong = paramLong.b();
    }
  }
  
  final void a(ai paramai, boolean paramBoolean)
  {
    int i = 0;
    while (i < this.f)
    {
      ai localai;
      for (;;)
      {
        com.sleepycat.b.p.o localo3;
        synchronized (this.g[i])
        {
          localai = new ai("Single lock table", "Temporary stat group");
          Object localObject1 = new com.sleepycat.b.p.o(localai, n.e);
          com.sleepycat.b.p.o localo1 = new com.sleepycat.b.p.o(localai, n.g);
          com.sleepycat.b.p.o localo2 = new com.sleepycat.b.p.o(localai, n.c);
          localo3 = new com.sleepycat.b.p.o(localai, n.a);
          com.sleepycat.b.p.o localo4 = new com.sleepycat.b.p.o(localai, n.b);
          Object localObject2 = this.h[i];
          ((com.sleepycat.b.p.o)localObject1).a(((Map)localObject2).size());
          localObject1 = ((Map)localObject2).values().iterator();
          if (!((Iterator)localObject1).hasNext()) {
            break;
          }
          localObject2 = (e)((Iterator)localObject1).next();
          localo1.a(((e)localObject2).c());
          localo2.a(((e)localObject2).d());
          localObject2 = ((e)localObject2).b().iterator();
          if (!((Iterator)localObject2).hasNext()) {
            continue;
          }
          if (((j)((Iterator)localObject2).next()).g().h) {
            localo4.f();
          }
        }
        localo3.f();
      }
      paramai.a(localai);
      i += 1;
    }
  }
  
  final boolean a(Long paramLong, q paramq, o paramo, boolean paramBoolean, ao paramao)
  {
    int i = c(paramLong);
    for (;;)
    {
      boolean bool;
      synchronized (this.g[i])
      {
        e locale = (e)this.h[i].get(paramLong);
        if (locale == null)
        {
          bool = false;
          break label114;
          return paramBoolean;
        }
        else
        {
          bool = locale.a(paramq, paramo);
          break label114;
          if (!paramBoolean) {
            break label125;
          }
          paramLong = (e)this.h[i].get(paramLong);
          if (paramLong == null) {
            break label125;
          }
          paramLong.a(paramq, paramao, i);
        }
      }
      label114:
      if (bool)
      {
        paramBoolean = true;
        continue;
        label125:
        paramBoolean = false;
      }
    }
  }
  
  final void b(long paramLong, q paramq)
  {
    int i = a(paramLong);
    synchronized (this.g[i])
    {
      e locale = (e)this.h[i].get(Long.valueOf(paramLong));
      if (locale != null)
      {
        locale.b(paramq);
        paramq.b(paramLong);
      }
      return;
    }
  }
  
  public final boolean b(Long paramLong)
  {
    int i = c(paramLong);
    for (;;)
    {
      synchronized (this.g[i])
      {
        paramLong = (e)this.h[i].get(paramLong);
        if (paramLong == null)
        {
          bool = true;
          return bool;
        }
        if ((paramLong.c() == 0) && (paramLong.d() == 0)) {
          bool = true;
        }
      }
      boolean bool = false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */