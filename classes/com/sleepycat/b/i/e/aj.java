package com.sleepycat.b.i.e;

import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.h.e;
import java.nio.ByteBuffer;
import java.util.UUID;

public class aj
  extends ad
{
  public final UUID a;
  private final x d;
  
  public aj(t paramt, UUID paramUUID, x paramx)
  {
    super(paramt);
    this.a = paramUUID;
    this.d = paramx;
  }
  
  public final e a()
  {
    return t.h;
  }
  
  public final ByteBuffer b()
  {
    return a(new Object[] { Long.valueOf(this.a.getMostSignificantBits()), Long.valueOf(this.a.getLeastSignificantBits()), this.d });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */