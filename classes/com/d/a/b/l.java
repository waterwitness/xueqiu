package com.d.a.b;

import com.d.a.a.a.b;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

final class l
{
  final h a;
  Executor b;
  Executor c;
  Executor d;
  final Map<Integer, String> e = Collections.synchronizedMap(new HashMap());
  final AtomicBoolean f = new AtomicBoolean(false);
  final AtomicBoolean g = new AtomicBoolean(false);
  final AtomicBoolean h = new AtomicBoolean(false);
  final Object i = new Object();
  private final Map<String, ReentrantLock> j = new WeakHashMap();
  
  l(h paramh)
  {
    this.a = paramh;
    this.b = paramh.g;
    this.c = paramh.h;
    this.d = Executors.newCachedThreadPool(a.a(5, "uil-pool-d-"));
  }
  
  private Executor b()
  {
    return a.a(this.a.k, this.a.l, this.a.m);
  }
  
  final String a(com.d.a.b.e.a parama)
  {
    return (String)this.e.get(Integer.valueOf(parama.f()));
  }
  
  final ReentrantLock a(String paramString)
  {
    ReentrantLock localReentrantLock2 = (ReentrantLock)this.j.get(paramString);
    ReentrantLock localReentrantLock1 = localReentrantLock2;
    if (localReentrantLock2 == null)
    {
      localReentrantLock1 = new ReentrantLock();
      this.j.put(paramString, localReentrantLock1);
    }
    return localReentrantLock1;
  }
  
  final void a()
  {
    if ((!this.a.i) && (((ExecutorService)this.b).isShutdown())) {
      this.b = b();
    }
    if ((!this.a.j) && (((ExecutorService)this.c).isShutdown())) {
      this.c = b();
    }
  }
  
  final void b(com.d.a.b.e.a parama)
  {
    this.e.remove(Integer.valueOf(parama.f()));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */