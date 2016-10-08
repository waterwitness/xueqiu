package com.squareup.okhttp.internal.spdy;

import c.a;
import java.io.InterruptedIOException;

class SpdyStream$SpdyTimeout
  extends a
{
  SpdyStream$SpdyTimeout(SpdyStream paramSpdyStream) {}
  
  public void exitAndThrowIfTimedOut()
  {
    if (exit()) {
      throw new InterruptedIOException("timeout");
    }
  }
  
  protected void timedOut()
  {
    this.this$0.closeLater(ErrorCode.CANCEL);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\SpdyStream$SpdyTimeout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */