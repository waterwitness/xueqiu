package com.sleepycat.b.i.c;

import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.h.x;
import com.sleepycat.b.i.h.z;
import java.nio.channels.SocketChannel;
import java.util.logging.Logger;

public final class l
  extends z
{
  final aa a;
  final Logger b;
  private final i c;
  
  public l(x paramx, aa paramaa)
  {
    super("NodeState", paramx);
    this.a = paramaa;
    this.c = new i(paramaa.i.Y().b(), paramaa.a, paramaa.i);
    this.b = com.sleepycat.b.p.w.a(getClass());
  }
  
  public final Runnable a(SocketChannel paramSocketChannel)
  {
    return new m(this, paramSocketChannel, this.c);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */