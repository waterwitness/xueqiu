package com.squareup.okhttp.internal.spdy;

import c.f;
import c.r;
import c.s;
import c.t;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;

public final class SpdyStream
{
  long bytesLeftInWriteWindow;
  private final SpdyConnection connection;
  private ErrorCode errorCode = null;
  private final int id;
  private final SpdyStream.SpdyTimeout readTimeout = new SpdyStream.SpdyTimeout(this);
  private final List<Header> requestHeaders;
  private List<Header> responseHeaders;
  final SpdyStream.SpdyDataSink sink;
  private final SpdyStream.SpdyDataSource source;
  long unacknowledgedBytesRead = 0L;
  private final SpdyStream.SpdyTimeout writeTimeout = new SpdyStream.SpdyTimeout(this);
  
  static
  {
    if (!SpdyStream.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  SpdyStream(int paramInt, SpdyConnection paramSpdyConnection, boolean paramBoolean1, boolean paramBoolean2, List<Header> paramList)
  {
    if (paramSpdyConnection == null) {
      throw new NullPointerException("connection == null");
    }
    if (paramList == null) {
      throw new NullPointerException("requestHeaders == null");
    }
    this.id = paramInt;
    this.connection = paramSpdyConnection;
    this.bytesLeftInWriteWindow = paramSpdyConnection.peerSettings.getInitialWindowSize(65536);
    this.source = new SpdyStream.SpdyDataSource(this, paramSpdyConnection.okHttpSettings.getInitialWindowSize(65536), null);
    this.sink = new SpdyStream.SpdyDataSink(this);
    SpdyStream.SpdyDataSource.access$102(this.source, paramBoolean2);
    SpdyStream.SpdyDataSink.access$202(this.sink, paramBoolean1);
    this.requestHeaders = paramList;
  }
  
  private void cancelStreamIfNecessary()
  {
    assert (!Thread.holdsLock(this));
    for (;;)
    {
      try
      {
        boolean bool;
        if ((!SpdyStream.SpdyDataSource.access$100(this.source)) && (SpdyStream.SpdyDataSource.access$300(this.source)))
        {
          if (SpdyStream.SpdyDataSink.access$200(this.sink)) {
            break label112;
          }
          if (SpdyStream.SpdyDataSink.access$400(this.sink))
          {
            break label112;
            bool = isOpen();
            if (i == 0) {
              break label95;
            }
            close(ErrorCode.CANCEL);
            return;
          }
        }
        i = 0;
        continue;
        if (bool) {
          continue;
        }
      }
      finally {}
      label95:
      this.connection.removeStream(this.id);
      return;
      label112:
      int i = 1;
    }
  }
  
  private void checkOutNotClosed()
  {
    if (SpdyStream.SpdyDataSink.access$400(this.sink)) {
      throw new IOException("stream closed");
    }
    if (SpdyStream.SpdyDataSink.access$200(this.sink)) {
      throw new IOException("stream finished");
    }
    if (this.errorCode != null) {
      throw new IOException("stream was reset: " + this.errorCode);
    }
  }
  
  private boolean closeInternal(ErrorCode paramErrorCode)
  {
    assert (!Thread.holdsLock(this));
    try
    {
      if (this.errorCode != null) {
        return false;
      }
      if ((SpdyStream.SpdyDataSource.access$100(this.source)) && (SpdyStream.SpdyDataSink.access$200(this.sink))) {
        return false;
      }
    }
    finally {}
    this.errorCode = paramErrorCode;
    notifyAll();
    this.connection.removeStream(this.id);
    return true;
  }
  
  private void waitForIo()
  {
    try
    {
      wait();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new InterruptedIOException();
    }
  }
  
  final void addBytesToWriteWindow(long paramLong)
  {
    this.bytesLeftInWriteWindow += paramLong;
    if (paramLong > 0L) {
      notifyAll();
    }
  }
  
  public final void close(ErrorCode paramErrorCode)
  {
    if (!closeInternal(paramErrorCode)) {
      return;
    }
    this.connection.writeSynReset(this.id, paramErrorCode);
  }
  
  public final void closeLater(ErrorCode paramErrorCode)
  {
    if (!closeInternal(paramErrorCode)) {
      return;
    }
    this.connection.writeSynResetLater(this.id, paramErrorCode);
  }
  
  public final SpdyConnection getConnection()
  {
    return this.connection;
  }
  
  public final ErrorCode getErrorCode()
  {
    try
    {
      ErrorCode localErrorCode = this.errorCode;
      return localErrorCode;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int getId()
  {
    return this.id;
  }
  
  public final List<Header> getRequestHeaders()
  {
    return this.requestHeaders;
  }
  
  /* Error */
  public final List<Header> getResponseHeaders()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 52	com/squareup/okhttp/internal/spdy/SpdyStream:readTimeout	Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    //   6: invokevirtual 229	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout:enter	()V
    //   9: aload_0
    //   10: getfield 231	com/squareup/okhttp/internal/spdy/SpdyStream:responseHeaders	Ljava/util/List;
    //   13: ifnonnull +32 -> 45
    //   16: aload_0
    //   17: getfield 56	com/squareup/okhttp/internal/spdy/SpdyStream:errorCode	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   20: ifnonnull +25 -> 45
    //   23: aload_0
    //   24: invokespecial 132	com/squareup/okhttp/internal/spdy/SpdyStream:waitForIo	()V
    //   27: goto -18 -> 9
    //   30: astore_1
    //   31: aload_0
    //   32: getfield 52	com/squareup/okhttp/internal/spdy/SpdyStream:readTimeout	Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    //   35: invokevirtual 234	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout:exitAndThrowIfTimedOut	()V
    //   38: aload_1
    //   39: athrow
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    //   45: aload_0
    //   46: getfield 52	com/squareup/okhttp/internal/spdy/SpdyStream:readTimeout	Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    //   49: invokevirtual 234	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyTimeout:exitAndThrowIfTimedOut	()V
    //   52: aload_0
    //   53: getfield 231	com/squareup/okhttp/internal/spdy/SpdyStream:responseHeaders	Ljava/util/List;
    //   56: ifnull +12 -> 68
    //   59: aload_0
    //   60: getfield 231	com/squareup/okhttp/internal/spdy/SpdyStream:responseHeaders	Ljava/util/List;
    //   63: astore_1
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_1
    //   67: areturn
    //   68: new 173	java/io/IOException
    //   71: dup
    //   72: new 180	java/lang/StringBuilder
    //   75: dup
    //   76: ldc -74
    //   78: invokespecial 183	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   81: aload_0
    //   82: getfield 56	com/squareup/okhttp/internal/spdy/SpdyStream:errorCode	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   85: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   88: invokevirtual 191	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: invokespecial 176	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   94: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	95	0	this	SpdyStream
    //   30	9	1	localObject1	Object
    //   40	4	1	localObject2	Object
    //   63	4	1	localList	List
    // Exception table:
    //   from	to	target	type
    //   9	27	30	finally
    //   2	9	40	finally
    //   31	40	40	finally
    //   45	64	40	finally
    //   68	95	40	finally
  }
  
  public final r getSink()
  {
    try
    {
      if ((this.responseHeaders == null) && (!isLocallyInitiated())) {
        throw new IllegalStateException("reply before requesting the sink");
      }
    }
    finally {}
    return this.sink;
  }
  
  public final s getSource()
  {
    return this.source;
  }
  
  public final boolean isLocallyInitiated()
  {
    if ((this.id & 0x1) == 1) {}
    for (int i = 1; this.connection.client == i; i = 0) {
      return true;
    }
    return false;
  }
  
  /* Error */
  public final boolean isOpen()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 56	com/squareup/okhttp/internal/spdy/SpdyStream:errorCode	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   8: astore_1
    //   9: aload_1
    //   10: ifnull +7 -> 17
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 94	com/squareup/okhttp/internal/spdy/SpdyStream:source	Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;
    //   21: invokestatic 145	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource:access$100	(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z
    //   24: ifne +13 -> 37
    //   27: aload_0
    //   28: getfield 94	com/squareup/okhttp/internal/spdy/SpdyStream:source	Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;
    //   31: invokestatic 148	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource:access$300	(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z
    //   34: ifeq +32 -> 66
    //   37: aload_0
    //   38: getfield 99	com/squareup/okhttp/internal/spdy/SpdyStream:sink	Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;
    //   41: invokestatic 152	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:access$200	(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z
    //   44: ifne +13 -> 57
    //   47: aload_0
    //   48: getfield 99	com/squareup/okhttp/internal/spdy/SpdyStream:sink	Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;
    //   51: invokestatic 155	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink:access$400	(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z
    //   54: ifeq +12 -> 66
    //   57: aload_0
    //   58: getfield 231	com/squareup/okhttp/internal/spdy/SpdyStream:responseHeaders	Ljava/util/List;
    //   61: astore_1
    //   62: aload_1
    //   63: ifnonnull -50 -> 13
    //   66: iconst_1
    //   67: istore_2
    //   68: goto -55 -> 13
    //   71: astore_1
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_1
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	SpdyStream
    //   8	55	1	localObject1	Object
    //   71	4	1	localObject2	Object
    //   1	67	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   4	9	71	finally
    //   17	37	71	finally
    //   37	57	71	finally
    //   57	62	71	finally
  }
  
  public final t readTimeout()
  {
    return this.readTimeout;
  }
  
  final void receiveData(f paramf, int paramInt)
  {
    assert (!Thread.holdsLock(this));
    this.source.receive(paramf, paramInt);
  }
  
  final void receiveFin()
  {
    assert (!Thread.holdsLock(this));
    try
    {
      SpdyStream.SpdyDataSource.access$102(this.source, true);
      boolean bool = isOpen();
      notifyAll();
      if (!bool) {
        this.connection.removeStream(this.id);
      }
      return;
    }
    finally {}
  }
  
  final void receiveHeaders(List<Header> paramList, HeadersMode paramHeadersMode)
  {
    assert (!Thread.holdsLock(this));
    Object localObject = null;
    boolean bool = true;
    label97:
    do
    {
      for (;;)
      {
        try
        {
          if (this.responseHeaders == null)
          {
            if (paramHeadersMode.failIfHeadersAbsent())
            {
              paramList = ErrorCode.PROTOCOL_ERROR;
              if (paramList == null) {
                break;
              }
              closeLater(paramList);
              return;
            }
            this.responseHeaders = paramList;
            bool = isOpen();
            notifyAll();
            paramList = (List<Header>)localObject;
            continue;
          }
          if (!paramHeadersMode.failIfHeadersPresent()) {
            break label97;
          }
        }
        finally {}
        paramList = ErrorCode.STREAM_IN_USE;
        continue;
        paramHeadersMode = new ArrayList();
        paramHeadersMode.addAll(this.responseHeaders);
        paramHeadersMode.addAll(paramList);
        this.responseHeaders = paramHeadersMode;
        paramList = (List<Header>)localObject;
      }
    } while (bool);
    this.connection.removeStream(this.id);
  }
  
  final void receiveRstStream(ErrorCode paramErrorCode)
  {
    try
    {
      if (this.errorCode == null)
      {
        this.errorCode = paramErrorCode;
        notifyAll();
      }
      return;
    }
    finally
    {
      paramErrorCode = finally;
      throw paramErrorCode;
    }
  }
  
  public final void reply(List<Header> paramList, boolean paramBoolean)
  {
    boolean bool = true;
    assert (!Thread.holdsLock(this));
    if (paramList == null) {
      try
      {
        throw new NullPointerException("responseHeaders == null");
      }
      finally {}
    }
    if (this.responseHeaders != null) {
      throw new IllegalStateException("reply already sent");
    }
    this.responseHeaders = paramList;
    if (!paramBoolean) {
      SpdyStream.SpdyDataSink.access$202(this.sink, true);
    }
    for (paramBoolean = bool;; paramBoolean = false)
    {
      this.connection.writeSynReply(this.id, paramBoolean, paramList);
      if (paramBoolean) {
        this.connection.flush();
      }
      return;
    }
  }
  
  public final t writeTimeout()
  {
    return this.writeTimeout;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\SpdyStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */