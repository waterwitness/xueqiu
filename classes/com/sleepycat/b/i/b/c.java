package com.sleepycat.b.i.b;

import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.h.q;
import com.sleepycat.b.p.aj;
import java.nio.channels.SocketChannel;
import java.util.concurrent.BlockingQueue;
import java.util.logging.Formatter;
import java.util.logging.Logger;

public class c
  extends aj
{
  protected final x a;
  protected final Logger b;
  protected final Formatter c;
  protected final BlockingQueue<SocketChannel> d;
  
  protected c(aa paramaa, x paramx, String paramString) {}
  
  protected Logger a()
  {
    return this.b;
  }
  
  public final void b()
  {
    if (n()) {
      return;
    }
    a(this.b);
  }
  
  protected final int c()
  {
    this.d.clear();
    this.d.add(q.a);
    return 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */