package com.sleepycat.b.g.a;

import com.sleepycat.b.g.af;
import com.sleepycat.b.g.at;
import com.sleepycat.b.g.aw;
import java.nio.ByteBuffer;

public final class s
  extends r<aw>
{
  private static volatile at e = null;
  
  public s()
  {
    super(aw.class);
  }
  
  public s(aw paramaw)
  {
    super(af.x, paramaw);
  }
  
  public final int a(int paramInt)
  {
    if ((e != null) && (paramInt == 7)) {
      return e.a();
    }
    return super.a(paramInt);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if ((e != null) && (paramInt == 7))
    {
      e.a(paramByteBuffer);
      return;
    }
    super.a(paramByteBuffer, paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\a\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */