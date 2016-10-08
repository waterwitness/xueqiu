package com.sleepycat.b.i.b;

import java.net.InetSocketAddress;

final class o
  extends RuntimeException
{
  final InetSocketAddress a;
  
  o(InetSocketAddress paramInetSocketAddress)
  {
    this.a = paramInetSocketAddress;
  }
  
  public final String getMessage()
  {
    return "More recent proposal at: " + this.a.getHostName();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */