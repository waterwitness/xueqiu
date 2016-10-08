package com.sleepycat.b.i.e;

import com.sleepycat.b.i.h.e;
import java.nio.ByteBuffer;

public class w
  extends y
{
  public final boolean a;
  public final com.sleepycat.b.w b;
  
  public w(t paramt, boolean paramBoolean, com.sleepycat.b.w paramw, s params)
  {
    super(paramt, params);
    this.a = paramBoolean;
    this.b = paramw;
  }
  
  public final e a()
  {
    return t.p;
  }
  
  public final ByteBuffer b()
  {
    ByteBuffer localByteBuffer = a(super.c() + 1 + 1);
    if (this.a) {}
    for (int i = 1;; i = 0)
    {
      localByteBuffer.put((byte)i);
      localByteBuffer.put((byte)this.b.ordinal());
      this.c.a(this.e, localByteBuffer);
      localByteBuffer.flip();
      return localByteBuffer;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */