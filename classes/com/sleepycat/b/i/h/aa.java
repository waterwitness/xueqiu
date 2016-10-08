package com.sleepycat.b.i.h;

import com.sleepycat.b.p.w;
import java.nio.channels.SocketChannel;
import java.util.concurrent.BlockingQueue;
import java.util.logging.Level;

public final class aa
  extends ab
{
  private final Thread e;
  
  public aa(String paramString, BlockingQueue<SocketChannel> paramBlockingQueue, Thread paramThread)
  {
    super(paramString, paramBlockingQueue, paramThread);
    Thread localThread;
    this.e = localThread;
  }
  
  final void a()
  {
    if (this.e.isAlive()) {
      this.e.interrupt();
    }
    try
    {
      this.e.join();
      super.a();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  final void d(SocketChannel paramSocketChannel)
  {
    switch (x.1.a[this.e.getState().ordinal()])
    {
    default: 
      paramSocketChannel = com.sleepycat.b.aa.c("Thread for service:" + this.d + "is in state:" + this.e.getState());
      w.a(x.a(this.a), x.b(this.a), x.c(this.a), Level.WARNING, w.a(paramSocketChannel));
      throw paramSocketChannel;
    case 1: 
      this.e.start();
      w.a(x.a(this.a), x.b(this.a), x.c(this.a), Level.FINE, "Thread started for service: " + this.d);
    }
    for (;;)
    {
      super.d(paramSocketChannel);
      return;
      w.a(x.a(this.a), x.b(this.a), x.c(this.a), Level.FINE, "Thread started for service: " + this.d);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */