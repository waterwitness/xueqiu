package com.sleepycat.b.i.c.a;

import com.sleepycat.b.i.h.e;
import java.nio.ByteBuffer;

public class j
  extends n
{
  final byte[] b;
  
  public j(d paramd, String paramString, long paramLong1, long paramLong2, byte[] paramArrayOfByte)
  {
    super(paramd, paramString, paramLong1, paramLong2);
    this.b = paramArrayOfByte;
  }
  
  public e a()
  {
    return this.c.i;
  }
  
  public ByteBuffer b()
  {
    return a(new Object[] { this.d, Long.valueOf(this.e), Long.valueOf(this.f), this.b });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */