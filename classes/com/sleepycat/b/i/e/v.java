package com.sleepycat.b.i.e;

import com.sleepycat.b.i.h.d;
import com.sleepycat.b.i.h.e;
import java.nio.ByteBuffer;

public class v
  extends d
{
  final k a = null;
  private s c = null;
  
  v(t paramt, s params)
  {
    super(paramt);
    this.c = params;
  }
  
  public final e a()
  {
    return t.t;
  }
  
  public final ByteBuffer b()
  {
    ByteBuffer localByteBuffer = a(this.c.a(t.c(this.b)));
    this.b.a(this.c, localByteBuffer);
    localByteBuffer.flip();
    return localByteBuffer;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */