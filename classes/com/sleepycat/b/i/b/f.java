package com.sleepycat.b.i.b;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.i.c.ap;
import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.c.t;
import com.sleepycat.b.i.e.n;
import com.sleepycat.b.p.aj;
import com.sleepycat.b.p.w;
import java.util.Date;
import java.util.concurrent.CountDownLatch;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.Logger;

final class f
  extends aj
{
  v a;
  p b;
  private final com.sleepycat.b.i.p d;
  private final i e;
  
  private f(d paramd, com.sleepycat.b.i.p paramp, i parami, ad paramad, String paramString)
  {
    super(paramad, "ElectionThread_" + paramString);
    this.d = paramp;
    this.e = parami;
  }
  
  protected final Logger a()
  {
    return d.a(this.c);
  }
  
  protected final int c()
  {
    CountDownLatch localCountDownLatch = d.h(this.c).a;
    if (localCountDownLatch != null) {
      localCountDownLatch.countDown();
    }
    return d.e(this.c).m;
  }
  
  public final void run()
  {
    try
    {
      w.a(d.a(this.c), this.D, d.b(this.c), Level.INFO, "Started election thread " + new Date());
      this.a = d.c(this.c).a(this.d, this.e);
      j.a(d.d(this.c).f(), this.a, d.e(this.c), d.f(this.c), d.a(this.c), d.g(this.c).i, null);
      localObject5 = d.a(this.c);
      localObject7 = this.D;
      localObject8 = d.b(this.c);
      localObject9 = Level.INFO;
      localObject10 = new StringBuilder("Election thread exited. Group master: ");
      if (d.g(this.c) == null) {
        break label660;
      }
      localObject1 = d.g(this.c).g.j();
    }
    catch (p localp)
    {
      for (;;)
      {
        Object localObject1;
        this.b = localp;
        Object localObject2 = d.a(this.c);
        localObject5 = this.D;
        localObject7 = d.b(this.c);
        localObject8 = Level.INFO;
        localObject9 = new StringBuilder("Exiting election after ");
        localObject10 = this.e;
        w.a((Logger)localObject2, (ad)localObject5, (Formatter)localObject7, (Level)localObject8, ((i)localObject10).a - ((i)localObject10).b + " retries");
        localObject5 = d.a(this.c);
        localObject7 = this.D;
        localObject8 = d.b(this.c);
        localObject9 = Level.INFO;
        localObject10 = new StringBuilder("Election thread exited. Group master: ");
        if (d.g(this.c) == null) {
          break;
        }
        localObject2 = d.g(this.c).g.j();
        localObject2 = localObject2;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        w.a(d.a(this.c), this.D, d.b(this.c), Level.INFO, "Election thread interrupted");
        localObject5 = d.a(this.c);
        localObject7 = this.D;
        localObject8 = d.b(this.c);
        localObject9 = Level.INFO;
        localObject10 = new StringBuilder("Election thread exited. Group master: ");
        if (d.g(this.c) == null) {
          break;
        }
        Object localObject3 = d.g(this.c).g.j();
        localObject3 = localObject3;
      }
    }
    catch (Exception localException)
    {
      Object localObject5;
      for (;;)
      {
        this.F = localException;
        localObject5 = d.a(this.c);
        localObject7 = this.D;
        localObject8 = d.b(this.c);
        localObject9 = Level.INFO;
        localObject10 = new StringBuilder("Election thread exited. Group master: ");
        if (d.g(this.c) == null) {
          break;
        }
        localObject4 = d.g(this.c).g.j();
        localObject4 = localObject4;
      }
      localObject4 = Integer.valueOf(Integer.MAX_VALUE);
      w.a((Logger)localObject7, (ad)localObject8, (Formatter)localObject9, (Level)localObject10, localObject4);
      throw ((Throwable)localObject5);
    }
    finally
    {
      for (;;)
      {
        Object localObject4;
        Object localObject7 = d.a(this.c);
        Object localObject8 = this.D;
        Object localObject9 = d.b(this.c);
        Object localObject10 = Level.INFO;
        StringBuilder localStringBuilder = new StringBuilder("Election thread exited. Group master: ");
        if (d.g(this.c) != null)
        {
          localObject4 = d.g(this.c).g.j();
          continue;
          localObject4 = Integer.valueOf(Integer.MAX_VALUE);
          continue;
          localObject4 = Integer.valueOf(Integer.MAX_VALUE);
          continue;
          localObject4 = Integer.valueOf(Integer.MAX_VALUE);
          continue;
          label660:
          localObject4 = Integer.valueOf(Integer.MAX_VALUE);
        }
      }
    }
    localObject1 = localObject1;
    w.a((Logger)localObject5, (ad)localObject7, (Formatter)localObject8, (Level)localObject9, (String)localObject1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */