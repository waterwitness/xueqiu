package com.sleepycat.b.i.h;

import com.sleepycat.b.i.c.b.x;
import java.nio.ByteBuffer;

abstract class h
  extends k
{
  private final int a;
  private final int c;
  
  public h(a parama, int paramInt)
  {
    super(parama);
    this.a = paramInt;
    this.c = parama.C.b;
  }
  
  public ByteBuffer b()
  {
    return a(new Object[] { Integer.valueOf(this.a), Integer.valueOf(this.c) });
  }
  
  public int c()
  {
    return this.c;
  }
  
  public int d()
  {
    return this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */