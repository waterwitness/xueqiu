package com.sleepycat.b.i.c.a;

import com.sleepycat.b.i.h.e;
import com.sleepycat.b.i.h.k;
import java.nio.ByteBuffer;

public class n
  extends k
{
  protected final String d;
  protected final long e;
  protected final long f;
  
  public n(d paramd, String paramString, long paramLong1, long paramLong2)
  {
    super(paramd);
    this.d = paramString;
    this.e = paramLong1;
    this.f = paramLong2;
  }
  
  public e a()
  {
    return this.g.f;
  }
  
  public ByteBuffer b()
  {
    return a(new Object[] { this.d, Long.valueOf(this.e), Long.valueOf(this.f) });
  }
  
  public final long c()
  {
    return this.e;
  }
  
  public final long d()
  {
    return this.f;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\a\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */