package com.sleepycat.b.i.b;

import java.util.concurrent.CountDownLatch;

final class e
  implements k
{
  CountDownLatch a = null;
  
  public final CountDownLatch a()
  {
    try
    {
      this.a = new CountDownLatch(1);
      CountDownLatch localCountDownLatch = this.a;
      return localCountDownLatch;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(s params, ai paramai)
  {
    try
    {
      if (this.a != null) {
        this.a.countDown();
      }
      return;
    }
    finally
    {
      params = finally;
      throw params;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */