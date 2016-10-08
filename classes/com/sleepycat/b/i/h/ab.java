package com.sleepycat.b.i.h;

import com.sleepycat.b.aa;
import com.sleepycat.b.p.w;
import java.io.IOException;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.logging.Level;

public class ab
  extends ad
{
  final BlockingQueue<SocketChannel> b;
  
  ab(String paramString, BlockingQueue<SocketChannel> paramBlockingQueue)
  {
    super(paramBlockingQueue);
    BlockingQueue localBlockingQueue;
    this.b = localBlockingQueue;
  }
  
  void a()
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      SocketChannel localSocketChannel = (SocketChannel)localIterator.next();
      try
      {
        localSocketChannel.close();
      }
      catch (IOException localIOException) {}
    }
    this.b.add(q.a);
  }
  
  void d(SocketChannel paramSocketChannel)
  {
    if (super.c()) {
      w.a(x.a(this.c), x.b(this.c), x.c(this.c), Level.INFO, "Simulated test IO exception");
    }
    try
    {
      paramSocketChannel.close();
      if (!this.b.add(paramSocketChannel)) {
        throw aa.c("request queue overflow");
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        w.a(x.a(this.c), x.b(this.c), x.c(this.c), Level.FINEST, "Close failure in '" + this.d + "' service: " + w.a(localIOException));
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */