package com.sleepycat.b.i.h;

import java.nio.channels.SocketChannel;
import java.util.concurrent.ExecutorService;

public abstract class z
  extends ad
{
  private final x a;
  
  public z(String paramString, x paramx)
  {
    super(paramString);
    this.a = paramx;
  }
  
  public abstract Runnable a(SocketChannel paramSocketChannel);
  
  public void a() {}
  
  final void d(SocketChannel paramSocketChannel)
  {
    x.d(this.a).execute(a(paramSocketChannel));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */