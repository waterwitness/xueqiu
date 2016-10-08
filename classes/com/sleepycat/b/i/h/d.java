package com.sleepycat.b.i.h;

import com.sleepycat.b.g.ar;
import java.nio.ByteBuffer;

public abstract class d
{
  public d(a parama) {}
  
  public abstract e a();
  
  public final ByteBuffer a(int paramInt)
  {
    ByteBuffer localByteBuffer = a.a(this.j, paramInt + 6);
    ar.a(localByteBuffer, a().a);
    ar.a(localByteBuffer, paramInt);
    return localByteBuffer;
  }
  
  public ByteBuffer b()
  {
    ByteBuffer localByteBuffer = a(0);
    localByteBuffer.flip();
    return localByteBuffer;
  }
  
  public String toString()
  {
    return a().toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */