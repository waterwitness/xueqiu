package com.squareup.okhttp.internal.spdy;

import c.d;
import c.e;
import c.g;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class Http2$Writer
  implements FrameWriter
{
  private final boolean client;
  private boolean closed;
  private final d hpackBuffer;
  private final Hpack.Writer hpackWriter;
  private int maxFrameSize;
  private final e sink;
  
  Http2$Writer(e parame, boolean paramBoolean)
  {
    this.sink = parame;
    this.client = paramBoolean;
    this.hpackBuffer = new d();
    this.hpackWriter = new Hpack.Writer(this.hpackBuffer);
    this.maxFrameSize = 16384;
  }
  
  private void writeContinuationFrames(int paramInt, long paramLong)
  {
    if (paramLong > 0L)
    {
      int i = (int)Math.min(this.maxFrameSize, paramLong);
      paramLong -= i;
      if (paramLong == 0L) {}
      for (byte b = 4;; b = 0)
      {
        frameHeader(paramInt, i, (byte)9, b);
        this.sink.write(this.hpackBuffer, i);
        break;
      }
    }
  }
  
  public final void ackSettings(Settings paramSettings)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    this.maxFrameSize = paramSettings.getMaxFrameSize(this.maxFrameSize);
    frameHeader(0, 0, (byte)4, (byte)1);
    this.sink.flush();
  }
  
  public final void close()
  {
    try
    {
      this.closed = true;
      this.sink.close();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void connectionPreface()
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    boolean bool = this.client;
    if (!bool) {}
    for (;;)
    {
      return;
      if (Http2.access$100().isLoggable(Level.FINE)) {
        Http2.access$100().fine(String.format(">> CONNECTION %s", new Object[] { Http2.access$000().b() }));
      }
      this.sink.b(Http2.access$000().d());
      this.sink.flush();
    }
  }
  
  public final void data(boolean paramBoolean, int paramInt1, d paramd, int paramInt2)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    byte b = 0;
    if (paramBoolean) {
      b = 1;
    }
    dataFrame(paramInt1, b, paramd, paramInt2);
  }
  
  final void dataFrame(int paramInt1, byte paramByte, d paramd, int paramInt2)
  {
    frameHeader(paramInt1, paramInt2, (byte)0, paramByte);
    if (paramInt2 > 0) {
      this.sink.write(paramd, paramInt2);
    }
  }
  
  public final void flush()
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    this.sink.flush();
  }
  
  final void frameHeader(int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
  {
    if (Http2.access$100().isLoggable(Level.FINE)) {
      Http2.access$100().fine(Http2.FrameLogger.formatHeader(false, paramInt1, paramInt2, paramByte1, paramByte2));
    }
    if (paramInt2 > this.maxFrameSize) {
      throw Http2.access$500("FRAME_SIZE_ERROR length > %d: %d", new Object[] { Integer.valueOf(this.maxFrameSize), Integer.valueOf(paramInt2) });
    }
    if ((0x80000000 & paramInt1) != 0) {
      throw Http2.access$500("reserved bit set: %s", new Object[] { Integer.valueOf(paramInt1) });
    }
    Http2.access$600(this.sink, paramInt2);
    this.sink.g(paramByte1 & 0xFF);
    this.sink.g(paramByte2 & 0xFF);
    this.sink.e(0x7FFFFFFF & paramInt1);
  }
  
  public final void goAway(int paramInt, ErrorCode paramErrorCode, byte[] paramArrayOfByte)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (paramErrorCode.httpCode == -1) {
      throw Http2.access$500("errorCode.httpCode == -1", new Object[0]);
    }
    frameHeader(0, paramArrayOfByte.length + 8, (byte)7, (byte)0);
    this.sink.e(paramInt);
    this.sink.e(paramErrorCode.httpCode);
    if (paramArrayOfByte.length > 0) {
      this.sink.b(paramArrayOfByte);
    }
    this.sink.flush();
  }
  
  public final void headers(int paramInt, List<Header> paramList)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    headers(false, paramInt, paramList);
  }
  
  final void headers(boolean paramBoolean, int paramInt, List<Header> paramList)
  {
    if (this.closed) {
      throw new IOException("closed");
    }
    if (this.hpackBuffer.b != 0L) {
      throw new IllegalStateException();
    }
    this.hpackWriter.writeHeaders(paramList);
    long l = this.hpackBuffer.b;
    int i = (int)Math.min(this.maxFrameSize, l);
    if (l == i) {}
    for (byte b1 = 4;; b1 = 0)
    {
      byte b2 = b1;
      if (paramBoolean) {
        b2 = (byte)(b1 | 0x1);
      }
      frameHeader(paramInt, i, (byte)1, b2);
      this.sink.write(this.hpackBuffer, i);
      if (l > i) {
        writeContinuationFrames(paramInt, l - i);
      }
      return;
    }
  }
  
  public final int maxDataLength()
  {
    return this.maxFrameSize;
  }
  
  public final void ping(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    byte b = 0;
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (paramBoolean) {
      b = 1;
    }
    frameHeader(0, 8, (byte)6, b);
    this.sink.e(paramInt1);
    this.sink.e(paramInt2);
    this.sink.flush();
  }
  
  public final void pushPromise(int paramInt1, int paramInt2, List<Header> paramList)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (this.hpackBuffer.b != 0L) {
      throw new IllegalStateException();
    }
    this.hpackWriter.writeHeaders(paramList);
    long l = this.hpackBuffer.b;
    int i = (int)Math.min(this.maxFrameSize - 4, l);
    if (l == i) {}
    for (byte b = 4;; b = 0)
    {
      frameHeader(paramInt1, i + 4, (byte)5, b);
      this.sink.e(0x7FFFFFFF & paramInt2);
      this.sink.write(this.hpackBuffer, i);
      if (l > i) {
        writeContinuationFrames(paramInt1, l - i);
      }
      return;
    }
  }
  
  public final void rstStream(int paramInt, ErrorCode paramErrorCode)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (paramErrorCode.spdyRstCode == -1) {
      throw new IllegalArgumentException();
    }
    frameHeader(paramInt, 4, (byte)3, (byte)0);
    this.sink.e(paramErrorCode.httpCode);
    this.sink.flush();
  }
  
  public final void settings(Settings paramSettings)
  {
    int i = 0;
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    frameHeader(0, paramSettings.size() * 6, (byte)4, (byte)0);
    int j;
    if (i < 10)
    {
      if (!paramSettings.isSet(i)) {
        break label107;
      }
      if (i != 4) {
        break label114;
      }
      j = 3;
    }
    for (;;)
    {
      label61:
      this.sink.f(j);
      this.sink.e(paramSettings.get(i));
      break label107;
      this.sink.flush();
      return;
      label107:
      label114:
      do
      {
        j = i;
        break label61;
        i += 1;
        break;
      } while (i != 7);
      j = 4;
    }
  }
  
  public final void synReply(boolean paramBoolean, int paramInt, List<Header> paramList)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    headers(paramBoolean, paramInt, paramList);
  }
  
  public final void synStream(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<Header> paramList)
  {
    if (paramBoolean2) {
      try
      {
        throw new UnsupportedOperationException();
      }
      finally {}
    }
    if (this.closed) {
      throw new IOException("closed");
    }
    headers(paramBoolean1, paramInt1, paramList);
  }
  
  public final void windowUpdate(int paramInt, long paramLong)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if ((paramLong == 0L) || (paramLong > 2147483647L)) {
      throw Http2.access$500("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[] { Long.valueOf(paramLong) });
    }
    frameHeader(paramInt, 4, (byte)8, (byte)0);
    this.sink.e((int)paramLong);
    this.sink.flush();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\Http2$Writer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */