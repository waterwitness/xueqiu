package com.sleepycat.b.g.a;

import com.sleepycat.b.g.af;
import com.sleepycat.b.g.ax;
import java.nio.ByteBuffer;

abstract class r<T extends ax>
  extends q<T>
  implements p
{
  static
  {
    if (!r.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  r(af paramaf, T paramT)
  {
    super(paramaf, paramT);
  }
  
  r(Class<T> paramClass)
  {
    super(paramClass);
  }
  
  public int a(int paramInt)
  {
    return d.a(this, paramInt);
  }
  
  public void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    d.b(this, paramInt);
    ((ax)this.c).b(paramByteBuffer, paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\a\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */