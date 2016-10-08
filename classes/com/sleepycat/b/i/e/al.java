package com.sleepycat.b.i.e;

import com.sleepycat.b.i.c.b.x;
import java.nio.ByteBuffer;

public abstract class al
  extends ad
{
  public final int c;
  public final x d;
  
  public al(t paramt, int paramInt)
  {
    super(paramt);
    this.c = paramInt;
    this.d = t.a(paramt);
  }
  
  public ByteBuffer b()
  {
    return a(new Object[] { Integer.valueOf(this.c), this.d });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */