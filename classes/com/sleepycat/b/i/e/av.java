package com.sleepycat.b.i.e;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.i.h.d;
import com.sleepycat.b.p.au;
import java.nio.ByteBuffer;

abstract class av
  extends d
{
  protected final au b;
  
  av(t paramt, au paramau)
  {
    super(paramt);
    this.b = paramau;
  }
  
  public ByteBuffer b()
  {
    ByteBuffer localByteBuffer = a(8);
    ar.b(localByteBuffer, this.b.c);
    localByteBuffer.flip();
    return localByteBuffer;
  }
  
  final au c()
  {
    return this.b;
  }
  
  public String toString()
  {
    return super.toString() + " " + this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */