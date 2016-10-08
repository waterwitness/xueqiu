package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.HttpEngine;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

public class Call
{
  volatile boolean canceled;
  private final OkHttpClient client;
  HttpEngine engine;
  private boolean executed;
  Request originalRequest;
  
  protected Call(OkHttpClient paramOkHttpClient, Request paramRequest)
  {
    this.client = paramOkHttpClient.copyWithDefaults();
    this.originalRequest = paramRequest;
  }
  
  private Response getResponseWithInterceptorChain(boolean paramBoolean)
  {
    return new Call.ApplicationInterceptorChain(this, 0, this.originalRequest, paramBoolean).proceed(this.originalRequest);
  }
  
  private String toLoggableString()
  {
    if (this.canceled) {}
    for (String str1 = "canceled call";; str1 = "call") {
      try
      {
        String str2 = new URL(this.originalRequest.url(), "/...").toString();
        str2 = str1 + " to " + str2;
        return str2;
      }
      catch (MalformedURLException localMalformedURLException) {}
    }
    return str1;
  }
  
  public void cancel()
  {
    this.canceled = true;
    if (this.engine != null) {
      this.engine.disconnect();
    }
  }
  
  public void enqueue(Callback paramCallback)
  {
    enqueue(paramCallback, false);
  }
  
  void enqueue(Callback paramCallback, boolean paramBoolean)
  {
    try
    {
      if (this.executed) {
        throw new IllegalStateException("Already Executed");
      }
    }
    finally {}
    this.executed = true;
    this.client.getDispatcher().enqueue(new Call.AsyncCall(this, paramCallback, paramBoolean, null));
  }
  
  public Response execute()
  {
    try
    {
      if (this.executed) {
        throw new IllegalStateException("Already Executed");
      }
    }
    finally {}
    this.executed = true;
    try
    {
      this.client.getDispatcher().executed(this);
      Response localResponse1 = getResponseWithInterceptorChain(false);
      if (localResponse1 == null) {
        throw new IOException("Canceled");
      }
    }
    finally
    {
      this.client.getDispatcher().finished(this);
    }
    this.client.getDispatcher().finished(this);
    return localResponse2;
  }
  
  Response getResponse(Request paramRequest, boolean paramBoolean)
  {
    Object localObject1 = paramRequest.body();
    Object localObject2;
    if (localObject1 != null)
    {
      paramRequest = paramRequest.newBuilder();
      localObject2 = ((RequestBody)localObject1).contentType();
      if (localObject2 != null) {
        paramRequest.header("Content-Type", ((MediaType)localObject2).toString());
      }
      long l = ((RequestBody)localObject1).contentLength();
      if (l != -1L)
      {
        paramRequest.header("Content-Length", Long.toString(l));
        paramRequest.removeHeader("Transfer-Encoding");
        paramRequest = paramRequest.build();
      }
    }
    for (;;)
    {
      this.engine = new HttpEngine(this.client, paramRequest, false, false, paramBoolean, null, null, null, null);
      int i = 0;
      for (;;)
      {
        if (this.canceled)
        {
          this.engine.releaseConnection();
          paramRequest = null;
          label118:
          return paramRequest;
          paramRequest.header("Transfer-Encoding", "chunked");
          paramRequest.removeHeader("Content-Length");
          break;
        }
        try
        {
          this.engine.sendRequest();
          this.engine.readResponse();
          localObject1 = this.engine.getResponse();
          paramRequest = this.engine.followUpRequest();
          if (paramRequest == null)
          {
            paramRequest = (Request)localObject1;
            if (paramBoolean) {
              break label118;
            }
            this.engine.releaseConnection();
            return (Response)localObject1;
          }
        }
        catch (IOException paramRequest)
        {
          localObject1 = this.engine.recover(paramRequest, null);
          if (localObject1 != null)
          {
            this.engine = ((HttpEngine)localObject1);
            continue;
          }
          throw paramRequest;
        }
        i += 1;
        if (i > 20) {
          throw new ProtocolException("Too many follow-up requests: " + i);
        }
        if (!this.engine.sameConnection(paramRequest.url())) {
          this.engine.releaseConnection();
        }
        localObject2 = this.engine.close();
        this.engine = new HttpEngine(this.client, paramRequest, false, false, paramBoolean, (Connection)localObject2, null, null, (Response)localObject1);
      }
    }
  }
  
  public boolean isCanceled()
  {
    return this.canceled;
  }
  
  Object tag()
  {
    return this.originalRequest.tag();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Call.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */