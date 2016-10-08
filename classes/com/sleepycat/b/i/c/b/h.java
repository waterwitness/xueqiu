package com.sleepycat.b.i.c.b;

import com.sleepycat.b.bn;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.an;
import com.sleepycat.b.i.e.f;
import com.sleepycat.b.i.e.n;
import com.sleepycat.b.i.e.t;
import com.sleepycat.b.i.h.af;
import com.sleepycat.b.i.h.p;
import com.sleepycat.b.i.h.q;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.w;
import java.io.IOException;
import java.net.Socket;
import java.nio.channels.SocketChannel;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;

public final class h
{
  private static long u = 0L;
  public final aa a;
  final k b;
  final l c;
  au d;
  volatile au e = au.a;
  volatile u f;
  volatile boolean g = false;
  final AtomicBoolean h = new AtomicBoolean(false);
  public x i = x.c;
  private int j;
  private final m k;
  private final aj l;
  private final p m;
  private final f n;
  private int o;
  private volatile long p = 0L;
  private final n q;
  private final Logger r;
  private final x s;
  private volatile int t = 0;
  
  public h()
  {
    this.k = null;
    this.a = null;
    this.l = null;
    this.q = null;
    this.n = null;
    this.m = null;
    this.s = x.c;
    this.r = w.a(getClass(), "TestFeeder");
    this.b = null;
    this.c = null;
    this.h.set(true);
  }
  
  h(m paramm, SocketChannel paramSocketChannel)
  {
    this.k = paramm;
    this.a = paramm.a;
    this.l = this.a.i;
    this.q = this.a.g;
    this.s = this.a.a;
    this.n = new com.sleepycat.b.i.e.m(this.a.i, this.a.i.aj);
    this.r = w.a(getClass());
    this.m = a(paramSocketChannel);
    this.b = new k(this, this.a.i);
    this.c = new l(this, this.a.i);
    this.j = paramm.a.d();
  }
  
  private p a(SocketChannel paramSocketChannel)
  {
    try
    {
      paramSocketChannel.configureBlocking(true);
      w.c(this.r, this.l, "Feeder accepted connection from " + paramSocketChannel);
      int i1 = this.a.i.u.a(an.Y);
      boolean bool = this.a.i.u.a(an.t);
      paramSocketChannel.socket().setTcpNoDelay(bool);
      paramSocketChannel = new p(this.a, paramSocketChannel, i1);
      return paramSocketChannel;
    }
    catch (IOException paramSocketChannel)
    {
      w.b(this.r, this.l, "IO exception while configuring channel Exception:" + paramSocketChannel.getMessage());
      throw paramSocketChannel;
    }
  }
  
  final void a()
  {
    u localu = this.f;
    if (localu != null) {
      localu.a(new v(this.e, this.i.a));
    }
  }
  
  final void a(Exception paramException)
  {
    if (!this.h.compareAndSet(false, true)) {
      return;
    }
    ??? = this.f;
    if (??? != null) {
      ((u)???).a(v.a(this.i.a));
    }
    Object localObject3 = this.k;
    if ((!m.k) && (!this.h.get())) {
      throw new AssertionError();
    }
    for (;;)
    {
      synchronized (((m)localObject3).d)
      {
        synchronized (((m)localObject3).c)
        {
          ((m)localObject3).d.remove(this);
          Object localObject4 = this.i.a;
          ((m)localObject3).c.remove(localObject4);
          if (this.b.a != null)
          {
            ??? = this.b.a.a(bn.a);
            if (this.c.a != null) {
              ((ai)???).a(this.c.a.a(bn.a));
            }
            this.k.h.a((ai)???);
            ??? = this.r;
            localObject3 = this.l;
            localObject4 = new StringBuilder("Shutting down feeder for replica ").append(this.i.a);
            if (paramException != null) {
              break label359;
            }
            paramException = "";
            w.c((Logger)???, (ad)localObject3, paramException + q.a((ai)???));
            if (this.a.s < 0L) {}
          }
        }
      }
      try
      {
        this.b.join();
        this.c.a(this.r);
        this.b.a(this.r);
        w.e(this.r, this.l, this.m + " isOpen=" + this.m.a().isOpen());
        return;
        paramException = finally;
        throw paramException;
        paramException = finally;
        throw paramException;
        ??? = new ai("BinaryProtocol", "Network traffic due to the replication stream.");
        continue;
        label359:
        paramException = " Reason: " + paramException.getMessage();
      }
      catch (InterruptedException paramException)
      {
        for (;;)
        {
          w.b(this.r, this.l, "Interrupted while waiting to join thread:" + this.c);
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */