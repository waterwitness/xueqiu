package com.sleepycat.b.i.h;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.i.c.b.a;
import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.p.w;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.SocketChannel;
import java.util.List;
import java.util.logging.Logger;

public final class p
  extends o
{
  private volatile boolean c;
  private volatile int d;
  private final ad e;
  private final Logger f;
  private long g = 0L;
  
  public p(aa paramaa, SocketChannel paramSocketChannel, int paramInt)
  {
    super(paramSocketChannel);
    this.d = paramInt;
    this.e = paramaa.i;
    this.f = paramaa.a();
    this.c = true;
    if (paramInt > 0) {
      paramaa.w.a.add(this);
    }
  }
  
  public final void a(int paramInt)
  {
    this.d = paramInt;
    this.c = true;
  }
  
  public final boolean a(long paramLong)
  {
    if (!this.b.isOpen()) {
      return false;
    }
    if (!this.b.isConnected()) {
      return true;
    }
    if (this.c)
    {
      this.g = paramLong;
      this.c = false;
      return true;
    }
    if ((this.d == 0) || (paramLong - this.g < this.d)) {
      return true;
    }
    w.c(this.f, this.e, "Inactive channel: " + this.a + " forced close. Timeout: " + this.d + "ms.");
    try
    {
      this.b.close();
      return false;
    }
    catch (IOException localIOException) {}
    return false;
  }
  
  public final void close()
  {
    this.b.close();
    this.c = false;
  }
  
  public final int read(ByteBuffer paramByteBuffer)
  {
    int i = this.b.read(paramByteBuffer);
    if (i > 0) {
      this.c = true;
    }
    return i;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */