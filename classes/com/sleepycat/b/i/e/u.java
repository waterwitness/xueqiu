package com.sleepycat.b.i.e;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.i.h.d;
import com.sleepycat.b.i.h.e;
import java.nio.ByteBuffer;

public class u
  extends d
{
  public final long a;
  
  public u(t paramt, long paramLong)
  {
    super(paramt);
    this.a = paramLong;
  }
  
  public final e a()
  {
    return t.q;
  }
  
  public final ByteBuffer b()
  {
    ByteBuffer localByteBuffer = a(8);
    ar.b(localByteBuffer, this.a);
    localByteBuffer.flip();
    return localByteBuffer;
  }
  
  public String toString()
  {
    return super.toString() + " txn " + this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */