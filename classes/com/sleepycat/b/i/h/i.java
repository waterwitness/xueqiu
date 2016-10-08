package com.sleepycat.b.i.h;

import java.nio.ByteBuffer;

public abstract class i
  extends k
{
  public String b;
  
  public i(a parama, String paramString)
  {
    super(parama);
    if (paramString == null)
    {
      this.b = " ";
      return;
    }
    this.b = paramString;
  }
  
  public ByteBuffer b()
  {
    return a(new Object[] { this.b });
  }
  
  public String toString()
  {
    return this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */