package com.squareup.okhttp.internal.spdy;

import c.d;
import c.f;
import c.s;
import c.t;
import java.io.EOFException;
import java.io.IOException;

final class SpdyStream$SpdyDataSource
  implements s
{
  private boolean closed;
  private boolean finished;
  private final long maxByteCount;
  private final d readBuffer = new d();
  private final d receiveBuffer = new d();
  
  static
  {
    if (!SpdyStream.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private SpdyStream$SpdyDataSource(SpdyStream paramSpdyStream, long paramLong)
  {
    this.maxByteCount = paramLong;
  }
  
  private void checkNotClosed()
  {
    if (this.closed) {
      throw new IOException("stream closed");
    }
    if (SpdyStream.access$800(this.this$0) != null) {
      throw new IOException("stream was reset: " + SpdyStream.access$800(this.this$0));
    }
  }
  
  /* Error */
  private void waitUntilReadable()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 34	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   4: invokestatic 87	com/squareup/okhttp/internal/spdy/SpdyStream:access$700	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    //   7: invokevirtual 92	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout:enter	()V
    //   10: aload_0
    //   11: getfield 43	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource:readBuffer	Lc/d;
    //   14: getfield 95	c/d:b	J
    //   17: lconst_0
    //   18: lcmp
    //   19: ifne +50 -> 69
    //   22: aload_0
    //   23: getfield 52	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource:finished	Z
    //   26: ifne +43 -> 69
    //   29: aload_0
    //   30: getfield 57	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource:closed	Z
    //   33: ifne +36 -> 69
    //   36: aload_0
    //   37: getfield 34	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   40: invokestatic 69	com/squareup/okhttp/internal/spdy/SpdyStream:access$800	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   43: ifnonnull +26 -> 69
    //   46: aload_0
    //   47: getfield 34	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   50: invokestatic 99	com/squareup/okhttp/internal/spdy/SpdyStream:access$900	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    //   53: goto -43 -> 10
    //   56: astore_1
    //   57: aload_0
    //   58: getfield 34	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   61: invokestatic 87	com/squareup/okhttp/internal/spdy/SpdyStream:access$700	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    //   64: invokevirtual 102	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout:exitAndThrowIfTimedOut	()V
    //   67: aload_1
    //   68: athrow
    //   69: aload_0
    //   70: getfield 34	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   73: invokestatic 87	com/squareup/okhttp/internal/spdy/SpdyStream:access$700	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    //   76: invokevirtual 102	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout:exitAndThrowIfTimedOut	()V
    //   79: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	SpdyDataSource
    //   56	12	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   10	53	56	finally
  }
  
  public final void close()
  {
    synchronized (this.this$0)
    {
      this.closed = true;
      this.readBuffer.p();
      this.this$0.notifyAll();
      SpdyStream.access$1000(this.this$0);
      return;
    }
  }
  
  public final long read(d arg1, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    synchronized (this.this$0)
    {
      waitUntilReadable();
      checkNotClosed();
      if (this.readBuffer.b == 0L) {
        return -1L;
      }
      paramLong = this.readBuffer.read(???, Math.min(paramLong, this.readBuffer.b));
      ??? = this.this$0;
      ???.unacknowledgedBytesRead += paramLong;
      if (this.this$0.unacknowledgedBytesRead >= SpdyStream.access$500(this.this$0).okHttpSettings.getInitialWindowSize(65536) / 2)
      {
        SpdyStream.access$500(this.this$0).writeWindowUpdateLater(SpdyStream.access$600(this.this$0), this.this$0.unacknowledgedBytesRead);
        this.this$0.unacknowledgedBytesRead = 0L;
      }
      synchronized (SpdyStream.access$500(this.this$0))
      {
        ??? = SpdyStream.access$500(this.this$0);
        ((SpdyConnection)???).unacknowledgedBytesRead += paramLong;
        if (SpdyStream.access$500(this.this$0).unacknowledgedBytesRead >= SpdyStream.access$500(this.this$0).okHttpSettings.getInitialWindowSize(65536) / 2)
        {
          SpdyStream.access$500(this.this$0).writeWindowUpdateLater(0, SpdyStream.access$500(this.this$0).unacknowledgedBytesRead);
          SpdyStream.access$500(this.this$0).unacknowledgedBytesRead = 0L;
        }
        return paramLong;
      }
    }
  }
  
  final void receive(f paramf, long paramLong)
  {
    long l = paramLong;
    if (!$assertionsDisabled)
    {
      l = paramLong;
      if (Thread.holdsLock(this.this$0)) {
        throw new AssertionError();
      }
    }
    for (;;)
    {
      l -= paramLong;
      synchronized (this.this$0)
      {
        if (this.readBuffer.b == 0L)
        {
          i = 1;
          this.readBuffer.a(this.receiveBuffer);
          if (i != 0) {
            this.this$0.notifyAll();
          }
          if (l > 0L) {}
          boolean bool;
          synchronized (this.this$0)
          {
            bool = this.finished;
            if (this.readBuffer.b + l > this.maxByteCount)
            {
              i = 1;
              if (i != 0)
              {
                paramf.f(l);
                this.this$0.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
              }
            }
            else
            {
              i = 0;
            }
          }
          if (bool)
          {
            paramf.f(l);
            return;
          }
          paramLong = paramf.read(this.receiveBuffer, l);
          if (paramLong != -1L) {
            continue;
          }
          throw new EOFException();
        }
        int i = 0;
      }
    }
  }
  
  public final t timeout()
  {
    return SpdyStream.access$700(this.this$0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\SpdyStream$SpdyDataSource.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */