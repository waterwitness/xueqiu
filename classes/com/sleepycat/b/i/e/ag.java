package com.sleepycat.b.i.e;

import com.sleepycat.b.am;
import java.nio.ByteBuffer;

public abstract class ag
  extends ad
{
  private final am a;
  private final int d;
  
  public ag(t paramt, am paramam, int paramInt)
  {
    super(paramt);
    this.a = paramam;
    this.d = paramInt;
  }
  
  public ByteBuffer b()
  {
    return a(new Object[] { this.a.a(), Integer.valueOf(this.d) });
  }
  
  public byte c()
  {
    return (byte)this.d;
  }
  
  public am d()
  {
    return this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */