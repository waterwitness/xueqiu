package com.sleepycat.a.a;

import com.sleepycat.c.c;
import com.sleepycat.c.d;

public class j<E>
{
  private int outputBufferSize = 0;
  
  public static l entryToInput(com.sleepycat.b.m paramm)
  {
    return new l(paramm.a, paramm.d, paramm.e);
  }
  
  public static void inputToEntry(l paraml, com.sleepycat.b.m paramm)
  {
    paramm.a(paraml.d, paraml.b, paraml.l());
  }
  
  public static m newOutput()
  {
    return new m();
  }
  
  public static m newOutput(byte[] paramArrayOfByte)
  {
    return new m(paramArrayOfByte);
  }
  
  public static void outputToEntry(m paramm, com.sleepycat.b.m paramm1)
  {
    paramm1.a(paramm.b, 0, paramm.a);
  }
  
  public int getTupleBufferSize()
  {
    return this.outputBufferSize;
  }
  
  protected m getTupleOutput(E paramE)
  {
    int i = getTupleBufferSize();
    if (i != 0) {
      return new m(new byte[i]);
    }
    return new m();
  }
  
  public void setTupleBufferSize(int paramInt)
  {
    this.outputBufferSize = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\a\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */