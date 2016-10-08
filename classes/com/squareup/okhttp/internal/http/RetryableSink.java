package com.squareup.okhttp.internal.http;

import c.d;
import c.r;
import c.t;
import com.squareup.okhttp.internal.Util;
import java.net.ProtocolException;

public final class RetryableSink
  implements r
{
  private boolean closed;
  private final d content = new d();
  private final int limit;
  
  public RetryableSink()
  {
    this(-1);
  }
  
  public RetryableSink(int paramInt)
  {
    this.limit = paramInt;
  }
  
  public final void close()
  {
    if (this.closed) {}
    do
    {
      return;
      this.closed = true;
    } while (this.content.b >= this.limit);
    throw new ProtocolException("content-length promised " + this.limit + " bytes, but received " + this.content.b);
  }
  
  public final long contentLength()
  {
    return this.content.b;
  }
  
  public final void flush() {}
  
  public final t timeout()
  {
    return t.NONE;
  }
  
  public final void write(d paramd, long paramLong)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    Util.checkOffsetAndCount(paramd.b, 0L, paramLong);
    if ((this.limit != -1) && (this.content.b > this.limit - paramLong)) {
      throw new ProtocolException("exceeded content-length limit of " + this.limit + " bytes");
    }
    this.content.write(paramd, paramLong);
  }
  
  public final void writeToSocket(r paramr)
  {
    d locald = new d();
    this.content.a(locald, 0L, this.content.b);
    paramr.write(locald, locald.b);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\RetryableSink.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */