package com.squareup.okhttp.internal.http;

import c.d;
import c.e;
import c.f;
import c.m;
import c.r;
import c.s;
import c.t;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Headers.Builder;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Response.Builder;
import com.squareup.okhttp.internal.Internal;
import java.io.EOFException;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;

public final class HttpConnection
{
  private static final int ON_IDLE_CLOSE = 2;
  private static final int ON_IDLE_HOLD = 0;
  private static final int ON_IDLE_POOL = 1;
  private static final int STATE_CLOSED = 6;
  private static final int STATE_IDLE = 0;
  private static final int STATE_OPEN_REQUEST_BODY = 1;
  private static final int STATE_OPEN_RESPONSE_BODY = 4;
  private static final int STATE_READING_RESPONSE_BODY = 5;
  private static final int STATE_READ_RESPONSE_HEADERS = 3;
  private static final int STATE_WRITING_REQUEST_BODY = 2;
  private final Connection connection;
  private int onIdle = 0;
  private final ConnectionPool pool;
  private final e sink;
  private final Socket socket;
  private final f source;
  private int state = 0;
  
  public HttpConnection(ConnectionPool paramConnectionPool, Connection paramConnection, Socket paramSocket)
  {
    this.pool = paramConnectionPool;
    this.connection = paramConnection;
    this.socket = paramSocket;
    this.source = m.a(m.b(paramSocket));
    this.sink = m.a(m.a(paramSocket));
  }
  
  public final long bufferSize()
  {
    return this.source.a().b;
  }
  
  public final void closeIfOwnedBy(Object paramObject)
  {
    Internal.instance.closeIfOwnedBy(this.connection, paramObject);
  }
  
  public final void closeOnIdle()
  {
    this.onIdle = 2;
    if (this.state == 0)
    {
      this.state = 6;
      this.connection.getSocket().close();
    }
  }
  
  public final void flush()
  {
    this.sink.flush();
  }
  
  public final boolean isClosed()
  {
    return this.state == 6;
  }
  
  public final boolean isReadable()
  {
    try
    {
      int i = this.socket.getSoTimeout();
      try
      {
        this.socket.setSoTimeout(1);
        boolean bool = this.source.d();
        return !bool;
      }
      finally
      {
        this.socket.setSoTimeout(i);
      }
      return false;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      return true;
    }
    catch (IOException localIOException) {}
  }
  
  public final r newChunkedSink()
  {
    if (this.state != 1) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 2;
    return new HttpConnection.ChunkedSink(this, null);
  }
  
  public final s newChunkedSource(HttpEngine paramHttpEngine)
  {
    if (this.state != 4) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 5;
    return new HttpConnection.ChunkedSource(this, paramHttpEngine);
  }
  
  public final r newFixedLengthSink(long paramLong)
  {
    if (this.state != 1) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 2;
    return new HttpConnection.FixedLengthSink(this, paramLong, null);
  }
  
  public final s newFixedLengthSource(long paramLong)
  {
    if (this.state != 4) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 5;
    return new HttpConnection.FixedLengthSource(this, paramLong);
  }
  
  public final s newUnknownLengthSource()
  {
    if (this.state != 4) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 5;
    return new HttpConnection.UnknownLengthSource(this, null);
  }
  
  public final void poolOnIdle()
  {
    this.onIdle = 1;
    if (this.state == 0)
    {
      this.onIdle = 0;
      Internal.instance.recycle(this.pool, this.connection);
    }
  }
  
  public final void readHeaders(Headers.Builder paramBuilder)
  {
    for (;;)
    {
      String str = this.source.n();
      if (str.length() == 0) {
        break;
      }
      Internal.instance.addLenient(paramBuilder, str);
    }
  }
  
  public final Response.Builder readResponse()
  {
    if ((this.state != 1) && (this.state != 3)) {
      throw new IllegalStateException("state: " + this.state);
    }
    try
    {
      StatusLine localStatusLine;
      do
      {
        localStatusLine = StatusLine.parse(this.source.n());
        localObject = new Response.Builder().protocol(localStatusLine.protocol).code(localStatusLine.code).message(localStatusLine.message);
        Headers.Builder localBuilder = new Headers.Builder();
        readHeaders(localBuilder);
        localBuilder.add(OkHeaders.SELECTED_PROTOCOL, localStatusLine.protocol.toString());
        ((Response.Builder)localObject).headers(localBuilder.build());
      } while (localStatusLine.code == 100);
      this.state = 4;
      return (Response.Builder)localObject;
    }
    catch (EOFException localEOFException)
    {
      Object localObject = new IOException("unexpected end of stream on " + this.connection + " (recycle count=" + Internal.instance.recycleCount(this.connection) + ")");
      ((IOException)localObject).initCause(localEOFException);
      throw ((Throwable)localObject);
    }
  }
  
  public final void setTimeouts(int paramInt1, int paramInt2)
  {
    if (paramInt1 != 0) {
      this.source.timeout().timeout(paramInt1, TimeUnit.MILLISECONDS);
    }
    if (paramInt2 != 0) {
      this.sink.timeout().timeout(paramInt2, TimeUnit.MILLISECONDS);
    }
  }
  
  public final void writeRequest(Headers paramHeaders, String paramString)
  {
    if (this.state != 0) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.sink.b(paramString).b("\r\n");
    int i = 0;
    int j = paramHeaders.size();
    while (i < j)
    {
      this.sink.b(paramHeaders.name(i)).b(": ").b(paramHeaders.value(i)).b("\r\n");
      i += 1;
    }
    this.sink.b("\r\n");
    this.state = 1;
  }
  
  public final void writeRequestBody(RetryableSink paramRetryableSink)
  {
    if (this.state != 1) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 3;
    paramRetryableSink.writeToSocket(this.sink);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\HttpConnection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */