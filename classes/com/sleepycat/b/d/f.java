package com.sleepycat.b.d;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.p.w;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;

final class f
{
  private final ConcurrentHashMap<Thread, Thread> b;
  private final ad c;
  private final Logger d;
  
  static
  {
    if (!b.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  f(ad paramad, Logger paramLogger)
  {
    this.c = paramad;
    this.d = paramLogger;
    this.b = new ConcurrentHashMap();
  }
  
  final boolean a()
  {
    Thread localThread = Thread.currentThread();
    if (this.b.containsKey(localThread))
    {
      w.a(this.d, this.c, "reentrant call to eviction from " + w.a());
      if (!a) {
        throw new AssertionError("reentrant call to eviction from " + w.a());
      }
      return false;
    }
    this.b.put(localThread, localThread);
    return true;
  }
  
  final void b()
  {
    if ((!a) && (!this.b.contains(Thread.currentThread()))) {
      throw new AssertionError();
    }
    this.b.remove(Thread.currentThread());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\d\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */