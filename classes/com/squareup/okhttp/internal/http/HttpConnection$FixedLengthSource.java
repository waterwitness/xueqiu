package com.squareup.okhttp.internal.http;

import c.d;
import c.f;
import com.squareup.okhttp.internal.Util;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

class HttpConnection$FixedLengthSource
  extends HttpConnection.AbstractSource
{
  private long bytesRemaining;
  
  public HttpConnection$FixedLengthSource(HttpConnection paramHttpConnection, long paramLong)
  {
    super(paramHttpConnection, null);
    this.bytesRemaining = paramLong;
    if (this.bytesRemaining == 0L) {
      endOfInput(true);
    }
  }
  
  public void close()
  {
    if (this.closed) {
      return;
    }
    if ((this.bytesRemaining != 0L) && (!Util.discard(this, 100, TimeUnit.MILLISECONDS))) {
      unexpectedEndOfInput();
    }
    this.closed = true;
  }
  
  public long read(d paramd, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    if (this.bytesRemaining == 0L) {
      return -1L;
    }
    paramLong = HttpConnection.access$500(this.this$0).read(paramd, Math.min(this.bytesRemaining, paramLong));
    if (paramLong == -1L)
    {
      unexpectedEndOfInput();
      throw new ProtocolException("unexpected end of stream");
    }
    this.bytesRemaining -= paramLong;
    if (this.bytesRemaining == 0L) {
      endOfInput(true);
    }
    return paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\HttpConnection$FixedLengthSource.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */