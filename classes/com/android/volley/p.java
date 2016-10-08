package com.android.volley;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class p
{
  final Map<String, Queue<n<?>>> a = new HashMap();
  public final Set<n<?>> b = new HashSet();
  final PriorityBlockingQueue<n<?>> c = new PriorityBlockingQueue();
  public final b d;
  private AtomicInteger e = new AtomicInteger();
  private final PriorityBlockingQueue<n<?>> f = new PriorityBlockingQueue();
  private final h g;
  private final u h;
  private i[] i;
  private d j;
  
  private p(b paramb, h paramh)
  {
    this(paramb, paramh, new f(new Handler(Looper.getMainLooper())));
  }
  
  public p(b paramb, h paramh, byte paramByte)
  {
    this(paramb, paramh);
  }
  
  private p(b paramb, h paramh, u paramu)
  {
    this.d = paramb;
    this.g = paramh;
    this.i = new i[4];
    this.h = paramu;
  }
  
  public final <T> n<T> a(n<T> paramn)
  {
    paramn.f = this;
    synchronized (this.b)
    {
      this.b.add(paramn);
      paramn.e = Integer.valueOf(this.e.incrementAndGet());
      paramn.a("add-to-queue");
      if (!paramn.g)
      {
        this.f.add(paramn);
        return paramn;
      }
    }
    for (;;)
    {
      String str;
      synchronized (this.a)
      {
        str = paramn.b();
        if (this.a.containsKey(str))
        {
          Queue localQueue = (Queue)this.a.get(str);
          ??? = localQueue;
          if (localQueue == null) {
            ??? = new LinkedList();
          }
          ((Queue)???).add(paramn);
          this.a.put(str, ???);
          if (z.b) {
            z.a("Request for cacheKey=%s is in flight, putting on hold.", new Object[] { str });
          }
          return paramn;
        }
      }
      this.a.put(str, null);
      this.c.add(paramn);
    }
  }
  
  public final void a()
  {
    b();
    this.j = new d(this.c, this.f, this.d, this.h);
    this.j.start();
    int k = 0;
    while (k < this.i.length)
    {
      i locali = new i(this.f, this.g, this.d, this.h);
      this.i[k] = locali;
      locali.start();
      k += 1;
    }
  }
  
  public final void b()
  {
    Object localObject;
    if (this.j != null)
    {
      localObject = this.j;
      ((d)localObject).a = true;
      ((d)localObject).interrupt();
    }
    int k = 0;
    while (k < this.i.length)
    {
      if (this.i[k] != null)
      {
        localObject = this.i[k];
        ((i)localObject).a = true;
        ((i)localObject).interrupt();
      }
      k += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */