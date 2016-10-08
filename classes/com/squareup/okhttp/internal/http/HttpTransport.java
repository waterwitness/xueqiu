package com.squareup.okhttp.internal.http;

import c.m;
import c.r;
import c.s;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Response.Builder;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.Route;
import java.net.Proxy;

public final class HttpTransport
  implements Transport
{
  private final HttpConnection httpConnection;
  private final HttpEngine httpEngine;
  
  public HttpTransport(HttpEngine paramHttpEngine, HttpConnection paramHttpConnection)
  {
    this.httpEngine = paramHttpEngine;
    this.httpConnection = paramHttpConnection;
  }
  
  private s getTransferStream(Response paramResponse)
  {
    if (!HttpEngine.hasBody(paramResponse)) {
      return this.httpConnection.newFixedLengthSource(0L);
    }
    if ("chunked".equalsIgnoreCase(paramResponse.header("Transfer-Encoding"))) {
      return this.httpConnection.newChunkedSource(this.httpEngine);
    }
    long l = OkHeaders.contentLength(paramResponse);
    if (l != -1L) {
      return this.httpConnection.newFixedLengthSource(l);
    }
    return this.httpConnection.newUnknownLengthSource();
  }
  
  public final boolean canReuseConnection()
  {
    if ("close".equalsIgnoreCase(this.httpEngine.getRequest().header("Connection"))) {}
    while (("close".equalsIgnoreCase(this.httpEngine.getResponse().header("Connection"))) || (this.httpConnection.isClosed())) {
      return false;
    }
    return true;
  }
  
  public final r createRequestBody(Request paramRequest, long paramLong)
  {
    if ("chunked".equalsIgnoreCase(paramRequest.header("Transfer-Encoding"))) {
      return this.httpConnection.newChunkedSink();
    }
    if (paramLong != -1L) {
      return this.httpConnection.newFixedLengthSink(paramLong);
    }
    throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
  }
  
  public final void disconnect(HttpEngine paramHttpEngine)
  {
    this.httpConnection.closeIfOwnedBy(paramHttpEngine);
  }
  
  public final void finishRequest()
  {
    this.httpConnection.flush();
  }
  
  public final ResponseBody openResponseBody(Response paramResponse)
  {
    s locals = getTransferStream(paramResponse);
    return new RealResponseBody(paramResponse.headers(), m.a(locals));
  }
  
  public final Response.Builder readResponseHeaders()
  {
    return this.httpConnection.readResponse();
  }
  
  public final void releaseConnectionOnIdle()
  {
    if (canReuseConnection())
    {
      this.httpConnection.poolOnIdle();
      return;
    }
    this.httpConnection.closeOnIdle();
  }
  
  public final void writeRequestBody(RetryableSink paramRetryableSink)
  {
    this.httpConnection.writeRequestBody(paramRetryableSink);
  }
  
  public final void writeRequestHeaders(Request paramRequest)
  {
    this.httpEngine.writingRequestHeaders();
    String str = RequestLine.get(paramRequest, this.httpEngine.getConnection().getRoute().getProxy().type(), this.httpEngine.getConnection().getProtocol());
    this.httpConnection.writeRequest(paramRequest.headers(), str);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\HttpTransport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */