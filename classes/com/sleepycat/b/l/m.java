package com.sleepycat.b.l;

import com.sleepycat.b.c.ao;
import com.sleepycat.b.d.b;

public final class m
  extends l
{
  private final byte[][] b;
  
  static
  {
    if (!l.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  m(int paramInt)
  {
    this.b = new byte[paramInt][];
  }
  
  public final l a(int paramInt, byte[] paramArrayOfByte)
  {
    this.b[paramInt] = paramArrayOfByte;
    return this;
  }
  
  final void a(boolean paramBoolean, b paramb) {}
  
  public final long b()
  {
    return ao.B + ao.c(this.b.length);
  }
  
  public final boolean c()
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */