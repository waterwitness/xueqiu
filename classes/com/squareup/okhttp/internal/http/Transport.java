package com.squareup.okhttp.internal.http;

import c.r;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Response.Builder;
import com.squareup.okhttp.ResponseBody;

public abstract interface Transport
{
  public static final int DISCARD_STREAM_TIMEOUT_MILLIS = 100;
  
  public abstract boolean canReuseConnection();
  
  public abstract r createRequestBody(Request paramRequest, long paramLong);
  
  public abstract void disconnect(HttpEngine paramHttpEngine);
  
  public abstract void finishRequest();
  
  public abstract ResponseBody openResponseBody(Response paramResponse);
  
  public abstract Response.Builder readResponseHeaders();
  
  public abstract void releaseConnectionOnIdle();
  
  public abstract void writeRequestBody(RetryableSink paramRetryableSink);
  
  public abstract void writeRequestHeaders(Request paramRequest);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\Transport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */