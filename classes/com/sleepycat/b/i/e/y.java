package com.sleepycat.b.i.e;

import com.sleepycat.b.i.h.d;
import com.sleepycat.b.i.h.e;
import java.nio.ByteBuffer;

public class y
  extends d
{
  protected final k d = null;
  protected s e;
  
  public y(t paramt, s params)
  {
    super(paramt);
    this.e = params;
  }
  
  public e a()
  {
    return t.l;
  }
  
  public ByteBuffer b()
  {
    ByteBuffer localByteBuffer = a(c());
    this.f.a(this.e, localByteBuffer);
    localByteBuffer.flip();
    return localByteBuffer;
  }
  
  protected final int c()
  {
    return this.e.a(t.c(this.f));
  }
  
  public final k d()
  {
    return this.d;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    if (this.d != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.d);
    }
    if (this.e != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.e);
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */