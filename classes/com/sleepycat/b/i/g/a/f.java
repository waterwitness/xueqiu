package com.sleepycat.b.i.g.a;

import com.sleepycat.b.aa;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.h.x;
import com.sleepycat.b.i.h.z;
import java.nio.channels.SocketChannel;
import java.util.concurrent.atomic.AtomicBoolean;

public final class f
  extends z
{
  final AtomicBoolean a = new AtomicBoolean(false);
  final aj b;
  public final x c;
  
  public f(x paramx, aj paramaj)
  {
    super("LDiff", paramx);
    this.b = paramaj;
    this.c = paramx;
    paramx.a(this);
  }
  
  public final Runnable a(SocketChannel paramSocketChannel)
  {
    if (!this.a.compareAndSet(false, true)) {
      throw aa.c("Service is already busy");
    }
    return new g(this, paramSocketChannel);
  }
  
  public final boolean b()
  {
    return this.a.get();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\g\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */