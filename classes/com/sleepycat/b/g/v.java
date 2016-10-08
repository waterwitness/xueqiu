package com.sleepycat.b.g;

import com.sleepycat.b.c.ad;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;

class v
  implements ap
{
  private final RandomAccessFile b;
  private final int c;
  private final m d;
  private final long e;
  private final int f;
  
  static
  {
    if (!v.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  v(RandomAccessFile paramRandomAccessFile, int paramInt1, m paramm, long paramLong, int paramInt2)
  {
    this.b = paramRandomAccessFile;
    this.c = paramInt1;
    this.d = paramm;
    this.e = paramLong;
    this.f = paramInt2;
  }
  
  public final ByteBuffer a(long paramLong)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(this.c);
    this.d.a(this.b, localByteBuffer, paramLong, this.e);
    if (!a) {
      ad.H();
    }
    localByteBuffer.flip();
    return localByteBuffer;
  }
  
  public final ByteBuffer a(long paramLong, int paramInt)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramInt);
    this.d.a(this.b, localByteBuffer, paramLong, this.e);
    if (!a) {
      ad.H();
    }
    localByteBuffer.flip();
    if (localByteBuffer.remaining() < paramInt) {
      throw new c("remaining=" + localByteBuffer.remaining() + " numBytes=" + paramInt);
    }
    return localByteBuffer;
  }
  
  public void a() {}
  
  public int b()
  {
    return this.f;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */