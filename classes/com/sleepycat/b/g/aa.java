package com.sleepycat.b.g;

import com.sleepycat.b.bo;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.f.a;
import com.sleepycat.b.p.j;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.LockSupport;

public class aa
  implements ap
{
  private static final String i;
  public final ByteBuffer a;
  public long b;
  long c;
  a d;
  boolean e;
  AtomicInteger f = new AtomicInteger();
  byte[] g;
  private ad j;
  
  static
  {
    if (!aa.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      i = aa.class.getName();
      return;
    }
  }
  
  aa(int paramInt, ad paramad)
  {
    this.g = new byte[paramInt];
    this.a = ByteBuffer.wrap(this.g);
    this.d = new a(i);
    this.j = paramad;
    c();
  }
  
  aa(ByteBuffer paramByteBuffer, long paramLong)
  {
    this.a = paramByteBuffer;
    this.b = paramLong;
    this.c = paramLong;
    this.e = false;
  }
  
  public final ByteBuffer a(long paramLong)
  {
    for (;;)
    {
      try
      {
        ByteBuffer localByteBuffer = this.a.duplicate();
        localByteBuffer.position((int)(paramLong - j.e(this.b)));
        return localByteBuffer;
      }
      catch (IllegalArgumentException localIllegalArgumentException) {}
    }
  }
  
  public final ByteBuffer a(long paramLong, int paramInt)
  {
    ByteBuffer localByteBuffer = a(paramLong);
    if (localByteBuffer.remaining() < paramInt) {
      throw new c("copy.remaining=" + localByteBuffer.remaining() + " numBytes=" + paramInt);
    }
    return localByteBuffer;
  }
  
  public final void a()
  {
    this.d.a(false);
  }
  
  final boolean a(int paramInt)
  {
    return paramInt <= this.a.capacity() - this.a.position();
  }
  
  public final int b()
  {
    return 8;
  }
  
  final void c()
  {
    this.d.a();
    this.a.clear();
    this.b = -1L;
    this.c = -1L;
    this.e = false;
    this.f.set(0);
    this.d.c();
  }
  
  public final void d()
  {
    int k = 0;
    while (k == 0) {
      if (this.f.get() > 0)
      {
        LockSupport.parkNanos(this, 100L);
        if (Thread.interrupted()) {
          throw new bo(this.j, "Interrupt during read operation");
        }
      }
      else
      {
        this.d.a();
        if (this.f.get() == 0) {
          k = 1;
        } else {
          this.d.c();
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */