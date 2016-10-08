package com.sleepycat.b.i.c.b;

import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.p;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.w;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock;
import java.util.logging.Logger;

public class r
{
  public static boolean e;
  public final x a;
  public final aa b;
  public au c;
  public boolean d;
  private final Logger g;
  
  static
  {
    if (!r.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      e = false;
      return;
    }
  }
  
  r(x paramx, aa paramaa)
  {
    this.a = paramx;
    this.b = paramaa;
    this.c = au.a;
    this.d = false;
    this.g = w.a(getClass());
  }
  
  public final void a(au paramau, String paramString)
  {
    if ((!f) && (!this.b.g.b())) {
      throw new AssertionError("LocalCBVLSNUpdater.set() can only be called by the master");
    }
    if (!this.c.a(paramau))
    {
      w.d(this.g, this.b.i, "update local CBVLSN for " + this.a + " from nodeCBVLSN " + this.c + " to " + paramau + " from " + paramString);
      if (this.c.b(paramau) >= 0) {
        throw com.sleepycat.b.aa.a(this.b.i, "nodeCBVLSN" + this.c + " >= " + paramau + " attempted update local CBVLSN for " + this.a + " from " + paramString);
      }
      this.c = paramau;
      this.d = true;
    }
    paramString = this.b.i;
    paramau = paramString.ax.readLock();
    paramau.lock();
    for (;;)
    {
      try
      {
        long l = paramString.aw.getCount();
        if (l > 0L) {
          return;
        }
        if (!this.d) {
          continue;
        }
        if (e)
        {
          this.d = false;
          continue;
        }
        bool = this.b.k();
      }
      finally
      {
        paramau.unlock();
      }
      boolean bool;
      if (!bool) {
        try
        {
          paramString = this.c;
          if ((!paramString.c()) && (paramString.b(this.b.r.a) >= 0) && (this.b.j.a(this.a, paramString))) {
            this.d = false;
          }
        }
        catch (com.sleepycat.b.aa paramString)
        {
          throw paramString;
        }
        catch (com.sleepycat.b.n paramString)
        {
          paramString.printStackTrace();
          w.b(this.b.x, this.b.i, "local cbvlsn update failed for node: " + this.a + " Error: " + paramString.getMessage());
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */