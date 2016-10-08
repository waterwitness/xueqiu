package com.sleepycat.b.f;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;

public class f
  extends ReentrantReadWriteLock
{
  public String a;
  public boolean b;
  public List<Thread> c;
  public boolean d;
  
  static
  {
    if (!f.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      return;
    }
  }
  
  public f(String paramString)
  {
    super(false);
    if (!e)
    {
      List localList = Collections.synchronizedList(new ArrayList());
      this.c = localList;
      if (localList == null) {
        throw new AssertionError();
      }
    }
    this.d = false;
    this.a = paramString;
  }
  
  public final void a()
  {
    try
    {
      if (isWriteLockedByCurrentThread()) {
        throw aa.c("Latch already held: " + this.a);
      }
    }
    finally
    {
      if (!e) {
        ad.H();
      }
    }
    writeLock().lock();
    if ((!e) && (this.b)) {
      d.a.a(this);
    }
    if (!e) {
      ad.H();
    }
  }
  
  public final boolean b()
  {
    try
    {
      if (isWriteLockedByCurrentThread()) {
        throw aa.c("Latch already held: " + this.a);
      }
    }
    finally
    {
      if (!e) {
        ad.H();
      }
    }
    boolean bool = writeLock().tryLock();
    if ((!e) && ((this.b & bool))) {
      d.a.a(this);
    }
    if (!e) {
      ad.H();
    }
    return bool;
  }
  
  public final void c()
  {
    if (this.d) {
      a();
    }
    for (;;)
    {
      return;
      int i = 0;
      try
      {
        if (!e) {
          i = 1;
        }
        if ((i == 0) || (this.c.add(Thread.currentThread()))) {
          readLock().lock();
        }
        if ((!e) && (this.b)) {
          d.a.a(this);
        }
        return;
      }
      finally
      {
        if (!e) {
          ad.H();
        }
      }
    }
  }
  
  public final void d()
  {
    try
    {
      if (isWriteLockedByCurrentThread())
      {
        writeLock().unlock();
        if ((!e) && (this.b) && (!d.a.b(this))) {
          throw new AssertionError();
        }
      }
    }
    catch (IllegalMonitorStateException localIllegalMonitorStateException)
    {
      localIllegalMonitorStateException.printStackTrace();
    }
    do
    {
      do
      {
        return;
      } while (this.d);
      int i = 0;
      if (!e) {
        i = 1;
      }
      if ((i != 0) && (!this.c.remove(Thread.currentThread()))) {
        throw aa.c("Latch not held: " + this.a);
      }
      readLock().unlock();
    } while ((e) || (!this.b) || (d.a.b(this)));
    throw new AssertionError();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\f\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */