package com.squareup.okhttp.internal.http;

import c.d;
import c.e;
import c.r;
import c.t;
import com.squareup.okhttp.internal.Util;
import java.net.ProtocolException;

final class HttpConnection$FixedLengthSink
  implements r
{
  private long bytesRemaining;
  private boolean closed;
  
  private HttpConnection$FixedLengthSink(HttpConnection paramHttpConnection, long paramLong)
  {
    this.bytesRemaining = paramLong;
  }
  
  public final void close()
  {
    if (this.closed) {
      return;
    }
    this.closed = true;
    if (this.bytesRemaining > 0L) {
      throw new ProtocolException("unexpected end of stream");
    }
    HttpConnection.access$402(this.this$0, 3);
  }
  
  public final void flush()
  {
    if (this.closed) {
      return;
    }
    HttpConnection.access$300(this.this$0).flush();
  }
  
  public final t timeout()
  {
    return HttpConnection.access$300(this.this$0).timeout();
  }
  
  public final void write(d paramd, long paramLong)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    Util.checkOffsetAndCount(paramd.b, 0L, paramLong);
    if (paramLong > this.bytesRemaining) {
      throw new ProtocolException("expected " + this.bytesRemaining + " bytes but received " + paramLong);
    }
    HttpConnection.access$300(this.this$0).write(paramd, paramLong);
    this.bytesRemaining -= paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\HttpConnection$FixedLengthSink.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */