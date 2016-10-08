package com.squareup.okhttp.internal.spdy;

import c.d;
import c.r;
import c.t;

final class SpdyStream$SpdyDataSink
  implements r
{
  private static final long EMIT_BUFFER_SIZE = 16384L;
  private boolean closed;
  private boolean finished;
  private final d sendBuffer = new d();
  
  static
  {
    if (!SpdyStream.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  SpdyStream$SpdyDataSink(SpdyStream paramSpdyStream) {}
  
  /* Error */
  private void emitDataFrame(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 35	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 35	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   11: invokestatic 57	com/squareup/okhttp/internal/spdy/SpdyStream:access$1100	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    //   14: invokevirtual 62	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout:enter	()V
    //   17: aload_0
    //   18: getfield 35	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   21: getfield 65	com/squareup/okhttp/internal/spdy/SpdyStream:bytesLeftInWriteWindow	J
    //   24: lconst_0
    //   25: lcmp
    //   26: ifgt +55 -> 81
    //   29: aload_0
    //   30: getfield 46	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:finished	Z
    //   33: ifne +48 -> 81
    //   36: aload_0
    //   37: getfield 51	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:closed	Z
    //   40: ifne +41 -> 81
    //   43: aload_0
    //   44: getfield 35	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   47: invokestatic 69	com/squareup/okhttp/internal/spdy/SpdyStream:access$800	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   50: ifnonnull +31 -> 81
    //   53: aload_0
    //   54: getfield 35	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   57: invokestatic 72	com/squareup/okhttp/internal/spdy/SpdyStream:access$900	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    //   60: goto -43 -> 17
    //   63: astore_3
    //   64: aload_0
    //   65: getfield 35	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   68: invokestatic 57	com/squareup/okhttp/internal/spdy/SpdyStream:access$1100	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    //   71: invokevirtual 75	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout:exitAndThrowIfTimedOut	()V
    //   74: aload_3
    //   75: athrow
    //   76: astore_3
    //   77: aload_2
    //   78: monitorexit
    //   79: aload_3
    //   80: athrow
    //   81: aload_0
    //   82: getfield 35	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   85: invokestatic 57	com/squareup/okhttp/internal/spdy/SpdyStream:access$1100	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    //   88: invokevirtual 75	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout:exitAndThrowIfTimedOut	()V
    //   91: aload_0
    //   92: getfield 35	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   95: invokestatic 78	com/squareup/okhttp/internal/spdy/SpdyStream:access$1200	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    //   98: aload_0
    //   99: getfield 35	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   102: getfield 65	com/squareup/okhttp/internal/spdy/SpdyStream:bytesLeftInWriteWindow	J
    //   105: aload_0
    //   106: getfield 42	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:sendBuffer	Lc/d;
    //   109: getfield 81	c/d:b	J
    //   112: invokestatic 87	java/lang/Math:min	(JJ)J
    //   115: lstore 5
    //   117: aload_0
    //   118: getfield 35	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   121: astore_3
    //   122: aload_3
    //   123: aload_3
    //   124: getfield 65	com/squareup/okhttp/internal/spdy/SpdyStream:bytesLeftInWriteWindow	J
    //   127: lload 5
    //   129: lsub
    //   130: putfield 65	com/squareup/okhttp/internal/spdy/SpdyStream:bytesLeftInWriteWindow	J
    //   133: aload_2
    //   134: monitorexit
    //   135: aload_0
    //   136: getfield 35	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   139: invokestatic 91	com/squareup/okhttp/internal/spdy/SpdyStream:access$500	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    //   142: astore_2
    //   143: aload_0
    //   144: getfield 35	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   147: invokestatic 95	com/squareup/okhttp/internal/spdy/SpdyStream:access$600	(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I
    //   150: istore 4
    //   152: iload_1
    //   153: ifeq +32 -> 185
    //   156: lload 5
    //   158: aload_0
    //   159: getfield 42	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:sendBuffer	Lc/d;
    //   162: getfield 81	c/d:b	J
    //   165: lcmp
    //   166: ifne +19 -> 185
    //   169: iconst_1
    //   170: istore_1
    //   171: aload_2
    //   172: iload 4
    //   174: iload_1
    //   175: aload_0
    //   176: getfield 42	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:sendBuffer	Lc/d;
    //   179: lload 5
    //   181: invokevirtual 101	com/squareup/okhttp/internal/spdy/SpdyConnection:writeData	(IZLc/d;J)V
    //   184: return
    //   185: iconst_0
    //   186: istore_1
    //   187: goto -16 -> 171
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	190	0	this	SpdyDataSink
    //   0	190	1	paramBoolean	boolean
    //   4	168	2	localObject1	Object
    //   63	12	3	localObject2	Object
    //   76	4	3	localObject3	Object
    //   121	3	3	localSpdyStream	SpdyStream
    //   150	23	4	i	int
    //   115	65	5	l	long
    // Exception table:
    //   from	to	target	type
    //   17	60	63	finally
    //   7	17	76	finally
    //   64	76	76	finally
    //   77	79	76	finally
    //   81	135	76	finally
  }
  
  public final void close()
  {
    assert (!Thread.holdsLock(this.this$0));
    synchronized (this.this$0)
    {
      if (this.closed) {
        return;
      }
      if (this.this$0.sink.finished) {
        break label113;
      }
      if (this.sendBuffer.b > 0L)
      {
        if (this.sendBuffer.b <= 0L) {
          break label113;
        }
        emitDataFrame(true);
      }
    }
    SpdyStream.access$500(this.this$0).writeData(SpdyStream.access$600(this.this$0), true, null, 0L);
    label113:
    synchronized (this.this$0)
    {
      this.closed = true;
      SpdyStream.access$500(this.this$0).flush();
      SpdyStream.access$1000(this.this$0);
      return;
    }
  }
  
  public final void flush()
  {
    assert (!Thread.holdsLock(this.this$0));
    synchronized (this.this$0)
    {
      SpdyStream.access$1200(this.this$0);
      if (this.sendBuffer.b > 0L) {
        emitDataFrame(false);
      }
    }
    SpdyStream.access$500(this.this$0).flush();
  }
  
  public final t timeout()
  {
    return SpdyStream.access$1100(this.this$0);
  }
  
  public final void write(d paramd, long paramLong)
  {
    assert (!Thread.holdsLock(this.this$0));
    this.sendBuffer.write(paramd, paramLong);
    while (this.sendBuffer.b >= 16384L) {
      emitDataFrame(false);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\SpdyStream$SpdyDataSink.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */