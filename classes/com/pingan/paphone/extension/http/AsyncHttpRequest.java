package com.pingan.paphone.extension.http;

import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

class AsyncHttpRequest
  implements Runnable
{
  private final AbstractHttpClient client;
  private final HttpContext context;
  private int executionCount;
  private boolean isBinaryRequest;
  private final HttpUriRequest request;
  private final AsyncHttpResponseHandler responseHandler;
  
  public AsyncHttpRequest(AbstractHttpClient paramAbstractHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    this.client = paramAbstractHttpClient;
    this.context = paramHttpContext;
    this.request = paramHttpUriRequest;
    this.responseHandler = paramAsyncHttpResponseHandler;
    if ((paramAsyncHttpResponseHandler instanceof BinaryHttpResponseHandler)) {
      this.isBinaryRequest = true;
    }
  }
  
  private void makeRequest()
  {
    if (!Thread.currentThread().isInterrupted()) {}
    try
    {
      HttpResponse localHttpResponse = this.client.execute(this.request, this.context);
      if ((!Thread.currentThread().isInterrupted()) && (this.responseHandler != null)) {
        this.responseHandler.sendResponseMessage(localHttpResponse);
      }
      return;
    }
    catch (IOException localIOException)
    {
      while (Thread.currentThread().isInterrupted()) {}
      throw localIOException;
    }
  }
  
  private void makeRequestWithRetries()
  {
    boolean bool = true;
    Object localObject1 = null;
    Object localObject2 = this.client.getHttpRequestRetryHandler();
    IOException localIOException2;
    while (bool) {
      try
      {
        makeRequest();
        return;
      }
      catch (UnknownHostException localUnknownHostException)
      {
        while (this.responseHandler == null) {}
        this.responseHandler.sendFailureMessage(localUnknownHostException, "can't resolve host");
        return;
      }
      catch (SocketException localSocketException)
      {
        while (this.responseHandler == null) {}
        this.responseHandler.sendFailureMessage(localSocketException, "can't resolve host");
        return;
      }
      catch (SocketTimeoutException localSocketTimeoutException)
      {
        while (this.responseHandler == null) {}
        this.responseHandler.sendFailureMessage(localSocketTimeoutException, "socket time out");
        return;
      }
      catch (IOException localIOException1)
      {
        i = this.executionCount + 1;
        this.executionCount = i;
        bool = ((HttpRequestRetryHandler)localObject2).retryRequest(localIOException1, i, this.context);
      }
      catch (NullPointerException localNullPointerException)
      {
        localIOException2 = new IOException("NPE in HttpClient" + localNullPointerException.getMessage());
        int i = this.executionCount + 1;
        this.executionCount = i;
        bool = ((HttpRequestRetryHandler)localObject2).retryRequest(localIOException2, i, this.context);
      }
    }
    localObject2 = new ConnectException();
    ((ConnectException)localObject2).initCause(localIOException2);
    throw ((Throwable)localObject2);
  }
  
  public void run()
  {
    try
    {
      if (this.responseHandler != null) {
        this.responseHandler.sendStartMessage();
      }
      makeRequestWithRetries();
      if (this.responseHandler != null) {
        this.responseHandler.sendFinishMessage();
      }
      return;
    }
    catch (IOException localIOException)
    {
      while (this.responseHandler == null) {}
      this.responseHandler.sendFinishMessage();
      if (this.isBinaryRequest)
      {
        this.responseHandler.sendFailureMessage(localIOException, null);
        return;
      }
      this.responseHandler.sendFailureMessage(localIOException, null);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\extension\http\AsyncHttpRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */