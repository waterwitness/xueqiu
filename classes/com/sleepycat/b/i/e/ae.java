package com.sleepycat.b.i.e;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.i.h.d;
import com.sleepycat.b.i.h.e;
import java.nio.ByteBuffer;

public class ae
  extends d
{
  public final long a;
  public final long b;
  
  public ae(t paramt, long paramLong1, long paramLong2)
  {
    super(paramt);
    this.a = paramLong1;
    this.b = paramLong2;
  }
  
  public final e a()
  {
    return t.n;
  }
  
  public final ByteBuffer b()
  {
    ByteBuffer localByteBuffer = a(16);
    ar.b(localByteBuffer, this.a);
    ar.b(localByteBuffer, this.b);
    localByteBuffer.flip();
    return localByteBuffer;
  }
  
  public String toString()
  {
    return super.toString() + " masterNow=" + this.a + " currentCommit=" + this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */