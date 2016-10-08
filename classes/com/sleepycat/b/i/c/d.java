package com.sleepycat.b.i.c;

import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.h.x;
import com.sleepycat.b.i.h.z;
import com.sleepycat.b.p.w;
import java.nio.channels.SocketChannel;
import java.util.logging.Logger;

public final class d
  extends z
{
  final aa a;
  public final x b;
  final Logger c;
  
  public d(x paramx, aa paramaa)
  {
    super("BinaryNodeState", paramx);
    this.a = paramaa;
    this.b = paramx;
    this.c = w.a(getClass());
    paramx.a(this);
  }
  
  public final Runnable a(SocketChannel paramSocketChannel)
  {
    return new e(this, paramSocketChannel);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */