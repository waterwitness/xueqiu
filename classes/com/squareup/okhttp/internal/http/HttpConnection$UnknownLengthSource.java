package com.squareup.okhttp.internal.http;

import c.d;
import c.f;

class HttpConnection$UnknownLengthSource
  extends HttpConnection.AbstractSource
{
  private boolean inputExhausted;
  
  private HttpConnection$UnknownLengthSource(HttpConnection paramHttpConnection)
  {
    super(paramHttpConnection, null);
  }
  
  public void close()
  {
    if (this.closed) {
      return;
    }
    if (!this.inputExhausted) {
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
    if (this.inputExhausted) {
      return -1L;
    }
    paramLong = HttpConnection.access$500(this.this$0).read(paramd, paramLong);
    if (paramLong == -1L)
    {
      this.inputExhausted = true;
      endOfInput(false);
      return -1L;
    }
    return paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\HttpConnection$UnknownLengthSource.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */