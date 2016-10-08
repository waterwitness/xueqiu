package com.sleepycat.b.g;

import com.sleepycat.b.bo;
import com.sleepycat.b.c.ad;

final class i
{
  static int a = 0;
  static int b = 1;
  static int c = 2;
  private volatile boolean d = false;
  private volatile boolean e;
  private final long f;
  private boolean g;
  private final ad h;
  
  i(long paramLong, ad paramad)
  {
    this.f = paramLong;
    this.e = false;
    this.g = false;
    this.h = paramad;
  }
  
  final int a()
  {
    for (;;)
    {
      long l;
      try
      {
        i = c;
        if (!this.e) {
          l = System.currentTimeMillis();
        }
        try
        {
          wait(this.f);
          if (this.e)
          {
            i = c;
            return i;
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          throw new bo(this.h, "Unexpected interrupt while waiting for write or fsync", localInterruptedException);
        }
        if (this.g) {
          break label80;
        }
      }
      finally {}
      this.g = true;
      int i = b;
      continue;
      label80:
      if (System.currentTimeMillis() - l > this.f) {
        i = a;
      }
    }
  }
  
  final void a(boolean paramBoolean)
  {
    try
    {
      this.d |= paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final boolean b()
  {
    try
    {
      boolean bool = this.d;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void c()
  {
    try
    {
      this.e = true;
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void d()
  {
    try
    {
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */