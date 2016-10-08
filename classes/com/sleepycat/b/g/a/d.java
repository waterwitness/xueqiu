package com.sleepycat.b.g.a;

import com.sleepycat.b.g.ax;
import java.nio.ByteBuffer;

abstract class d<T extends ax>
  extends c<T>
  implements p
{
  d() {}
  
  d(Class<T> paramClass)
  {
    super(paramClass);
  }
  
  public static int a(p paramp, int paramInt)
  {
    b(paramp, paramInt);
    return paramp.d_();
  }
  
  public static void b(p paramp, int paramInt)
  {
    if (paramInt < 8) {
      throw new IllegalArgumentException("The requested log version, " + paramInt + ", is older than the last format change, 8, for class " + paramp.getClass().getName());
    }
  }
  
  public int a(int paramInt)
  {
    return a(this, paramInt);
  }
  
  public void a(ByteBuffer paramByteBuffer)
  {
    a(paramByteBuffer, 8);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */