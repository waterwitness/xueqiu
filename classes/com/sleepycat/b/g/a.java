package com.sleepycat.b.g;

import java.nio.ByteBuffer;

public abstract class a
  implements ax
{
  public static void a(ax paramax, ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt < 8) {
      throw new IllegalArgumentException("The requested log version, " + paramInt + ", is older than the last format change, 8, for class " + paramax.getClass().getName());
    }
    paramax.a(paramByteBuffer);
  }
  
  public final void b(ByteBuffer paramByteBuffer, int paramInt)
  {
    a(this, paramByteBuffer, paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */