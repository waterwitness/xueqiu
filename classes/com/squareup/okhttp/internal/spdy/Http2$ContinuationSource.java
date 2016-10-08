package com.squareup.okhttp.internal.spdy;

import c.d;
import c.f;
import c.s;
import c.t;
import java.util.logging.Level;
import java.util.logging.Logger;

final class Http2$ContinuationSource
  implements s
{
  byte flags;
  int left;
  int length;
  short padding;
  private final f source;
  int streamId;
  
  public Http2$ContinuationSource(f paramf)
  {
    this.source = paramf;
  }
  
  private void readContinuationHeader()
  {
    int i = this.streamId;
    int j = Http2.access$300(this.source);
    this.left = j;
    this.length = j;
    byte b = (byte)(this.source.f() & 0xFF);
    this.flags = ((byte)(this.source.f() & 0xFF));
    if (Http2.access$100().isLoggable(Level.FINE)) {
      Http2.access$100().fine(Http2.FrameLogger.formatHeader(true, this.streamId, this.length, b, this.flags));
    }
    this.streamId = (this.source.h() & 0x7FFFFFFF);
    if (b != 9) {
      throw Http2.access$200("%s != TYPE_CONTINUATION", new Object[] { Byte.valueOf(b) });
    }
    if (this.streamId != i) {
      throw Http2.access$200("TYPE_CONTINUATION streamId changed", new Object[0]);
    }
  }
  
  public final void close() {}
  
  public final long read(d paramd, long paramLong)
  {
    if (this.left == 0)
    {
      this.source.f(this.padding);
      this.padding = 0;
      if ((this.flags & 0x4) == 0) {}
    }
    do
    {
      return -1L;
      readContinuationHeader();
      break;
      paramLong = this.source.read(paramd, Math.min(paramLong, this.left));
    } while (paramLong == -1L);
    this.left = ((int)(this.left - paramLong));
    return paramLong;
  }
  
  public final t timeout()
  {
    return this.source.timeout();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\Http2$ContinuationSource.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */