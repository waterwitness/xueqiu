package com.android.volley;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

public final class d
  extends Thread
{
  private static final boolean b = z.b;
  volatile boolean a = false;
  private final BlockingQueue<n<?>> c;
  private final BlockingQueue<n<?>> d;
  private final b e;
  private final u f;
  
  public d(BlockingQueue<n<?>> paramBlockingQueue1, BlockingQueue<n<?>> paramBlockingQueue2, b paramb, u paramu)
  {
    this.c = paramBlockingQueue1;
    this.d = paramBlockingQueue2;
    this.e = paramb;
    this.f = paramu;
  }
  
  public final void run()
  {
    if (b) {
      z.a("start new dispatcher", new Object[0]);
    }
    Process.setThreadPriority(10);
    this.e.a();
    label73:
    c localc;
    for (;;)
    {
      try
      {
        n localn = (n)this.c.take();
        localn.a("cache-queue-take");
        if (!localn.h) {
          break label73;
        }
        localn.b("cache-discard-canceled");
        continue;
        if (!this.a) {
          continue;
        }
      }
      catch (InterruptedException localInterruptedException) {}
      return;
      localc = this.e.a(localInterruptedException.b());
      if (localc == null)
      {
        localInterruptedException.a("cache-miss");
        this.d.put(localInterruptedException);
      }
      else
      {
        if (localc.d >= System.currentTimeMillis()) {
          break label257;
        }
        i = 1;
        label124:
        if (i == 0) {
          break;
        }
        localInterruptedException.a("cache-hit-expired");
        localInterruptedException.k = localc;
        this.d.put(localInterruptedException);
      }
    }
    localInterruptedException.a("cache-hit");
    r localr = localInterruptedException.a(new k(localc.a, localc.f));
    localInterruptedException.a("cache-hit-parsed");
    if (localc.e < System.currentTimeMillis()) {}
    for (int i = 1;; i = 0)
    {
      if (i == 0)
      {
        this.f.a(localInterruptedException, localr);
        break;
      }
      localInterruptedException.a("cache-hit-refresh-needed");
      localInterruptedException.k = localc;
      localr.d = true;
      this.f.a(localInterruptedException, localr, new Runnable()
      {
        public final void run()
        {
          try
          {
            d.a(d.this).put(localInterruptedException);
            return;
          }
          catch (InterruptedException localInterruptedException) {}
        }
      });
      break;
      label257:
      i = 0;
      break label124;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */