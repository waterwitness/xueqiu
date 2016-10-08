package com.squareup.okhttp.internal.http;

import c.d;
import c.f;
import com.squareup.okhttp.Headers.Builder;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

class HttpConnection$ChunkedSource
  extends HttpConnection.AbstractSource
{
  private static final long NO_CHUNK_YET = -1L;
  private long bytesRemainingInChunk = -1L;
  private boolean hasMoreChunks = true;
  private final HttpEngine httpEngine;
  
  HttpConnection$ChunkedSource(HttpConnection paramHttpConnection, HttpEngine paramHttpEngine)
  {
    super(paramHttpConnection, null);
    this.httpEngine = paramHttpEngine;
  }
  
  private void readChunkSize()
  {
    if (this.bytesRemainingInChunk != -1L) {
      HttpConnection.access$500(this.this$0).n();
    }
    try
    {
      this.bytesRemainingInChunk = HttpConnection.access$500(this.this$0).l();
      String str = HttpConnection.access$500(this.this$0).n().trim();
      if ((this.bytesRemainingInChunk < 0L) || ((!str.isEmpty()) && (!str.startsWith(";")))) {
        throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + str + "\"");
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new ProtocolException(localNumberFormatException.getMessage());
    }
    if (this.bytesRemainingInChunk == 0L)
    {
      this.hasMoreChunks = false;
      Headers.Builder localBuilder = new Headers.Builder();
      this.this$0.readHeaders(localBuilder);
      this.httpEngine.receiveHeaders(localBuilder.build());
      endOfInput(true);
    }
  }
  
  public void close()
  {
    if (this.closed) {
      return;
    }
    if ((this.hasMoreChunks) && (!Util.discard(this, 100, TimeUnit.MILLISECONDS))) {
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
    if (!this.hasMoreChunks) {}
    do
    {
      return -1L;
      if ((this.bytesRemainingInChunk != 0L) && (this.bytesRemainingInChunk != -1L)) {
        break;
      }
      readChunkSize();
    } while (!this.hasMoreChunks);
    paramLong = HttpConnection.access$500(this.this$0).read(paramd, Math.min(paramLong, this.bytesRemainingInChunk));
    if (paramLong == -1L)
    {
      unexpectedEndOfInput();
      throw new IOException("unexpected end of stream");
    }
    this.bytesRemainingInChunk -= paramLong;
    return paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\HttpConnection$ChunkedSource.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */