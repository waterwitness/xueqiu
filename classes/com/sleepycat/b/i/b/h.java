package com.sleepycat.b.i.b;

import com.sleepycat.b.i.c.am;
import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.c.b.m;
import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.c.t;
import com.sleepycat.b.i.e.n;
import com.sleepycat.b.p.w;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;

final class h
  extends TimerTask
{
  final int a;
  private final ReentrantLock c = new ReentrantLock();
  private int d = 0;
  
  public h(d paramd, int paramInt)
  {
    this.a = paramInt;
  }
  
  public final void run()
  {
    for (;;)
    {
      try
      {
        if (this.c.tryLock()) {
          continue;
        }
        i = this.d + 1;
        this.d = i;
        if (i % 100 == 0) {
          w.a(d.a(this.b), d.i(this.b), d.b(this.b), Level.WARNING, "Failed to acquire lock after " + this.d + " retries");
        }
        if (!this.c.isHeldByCurrentThread()) {
          continue;
        }
        localObject1 = this.c;
      }
      catch (Exception localException)
      {
        Object localObject1;
        boolean bool;
        final HashSet localHashSet;
        Iterator localIterator;
        w.a(d.a(this.b), d.i(this.b), d.b(this.b), Level.SEVERE, "Unexpected exception:" + localException.getMessage());
        if (!this.c.isHeldByCurrentThread()) {
          continue;
        }
        ReentrantLock localReentrantLock = this.c;
        continue;
        int i = localHashSet.size();
        if (i != 0) {
          continue;
        }
        if (!this.c.isHeldByCurrentThread()) {
          continue;
        }
        localReentrantLock = this.c;
        continue;
        w.a(d.a(this.b), d.i(this.b), d.b(this.b), Level.FINE, "informing learners:" + Arrays.toString(localHashSet.toArray()) + " active: " + Arrays.toString(localReentrantLock.toArray()));
        d.f(this.b).execute(new Runnable()
        {
          public final void run()
          {
            d.j(h.this.b).a(localHashSet, d.f(h.this.b));
          }
        });
        if (!this.c.isHeldByCurrentThread()) {
          continue;
        }
        localReentrantLock = this.c;
        continue;
      }
      finally
      {
        if (!this.c.isHeldByCurrentThread()) {
          continue;
        }
        this.c.unlock();
      }
      ((ReentrantLock)localObject1).unlock();
      return;
      this.d = 0;
      bool = d.g(this.b).g.a();
      if (bool) {
        continue;
      }
      if (this.c.isHeldByCurrentThread()) {
        localObject1 = this.c;
      }
    }
    localObject1 = d.g(this.b).f.a();
    ((Set)localObject1).add(d.g(this.b).a.a);
    localHashSet = new HashSet();
    localIterator = d.d(this.b).a(null).iterator();
    while (localIterator.hasNext())
    {
      am localam = (am)localIterator.next();
      if (!((Set)localObject1).contains(localam.a.a)) {
        localHashSet.add(localam.a());
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */