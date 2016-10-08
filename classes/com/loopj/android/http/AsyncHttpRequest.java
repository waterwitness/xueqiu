package com.loopj.android.http;

import android.util.Log;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.UnknownHostException;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

public class AsyncHttpRequest
  implements Runnable
{
  private boolean cancelIsNotified;
  private final AbstractHttpClient client;
  private final HttpContext context;
  private int executionCount;
  private boolean isCancelled;
  private boolean isFinished;
  private boolean isRequestPreProcessed;
  private final HttpUriRequest request;
  private final ResponseHandlerInterface responseHandler;
  
  public AsyncHttpRequest(AbstractHttpClient paramAbstractHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    this.client = paramAbstractHttpClient;
    this.context = paramHttpContext;
    this.request = paramHttpUriRequest;
    this.responseHandler = paramResponseHandlerInterface;
  }
  
  private void makeRequest()
  {
    if (isCancelled()) {}
    HttpResponse localHttpResponse;
    do
    {
      do
      {
        do
        {
          return;
          if (this.request.getURI().getScheme() == null) {
            throw new MalformedURLException("No valid URI scheme was provided");
          }
          localHttpResponse = this.client.execute(this.request, this.context);
        } while ((isCancelled()) || (this.responseHandler == null));
        this.responseHandler.onPreProcessResponse(this.responseHandler, localHttpResponse);
      } while (isCancelled());
      this.responseHandler.sendResponseMessage(localHttpResponse);
    } while (isCancelled());
    this.responseHandler.onPostProcessResponse(this.responseHandler, localHttpResponse);
  }
  
  private void makeRequestWithRetries()
  {
    Object localObject = null;
    HttpRequestRetryHandler localHttpRequestRetryHandler = this.client.getHttpRequestRetryHandler();
    int j = 1;
    if (j != 0) {}
    label285:
    for (;;)
    {
      try
      {
        makeRequest();
        return;
      }
      catch (UnknownHostException localUnknownHostException)
      {
        IOException localIOException1 = new IOException("UnknownHostException exception: " + localUnknownHostException.getMessage());
        if (this.executionCount > 0)
        {
          i = this.executionCount + 1;
          this.executionCount = i;
          if (localHttpRequestRetryHandler.retryRequest(localIOException1, i, this.context))
          {
            bool = true;
            break label285;
            localObject = localIOException1;
            j = bool;
            if (!bool) {
              break;
            }
            localObject = localIOException1;
            j = bool;
            if (this.responseHandler == null) {
              break;
            }
            this.responseHandler.sendRetryMessage(this.executionCount);
            localObject = localIOException1;
            j = bool;
            break;
          }
        }
      }
      catch (Exception localException)
      {
        Log.e("AsyncHttpRequest", "Unhandled exception origin cause", localException);
        localObject = new IOException("Unhandled exception: " + localException.getMessage());
        throw ((Throwable)localObject);
        bool = false;
      }
      catch (NullPointerException localNullPointerException)
      {
        IOException localIOException2 = new IOException("NPE in HttpClient: " + localNullPointerException.getMessage());
        i = this.executionCount + 1;
        this.executionCount = i;
        bool = localHttpRequestRetryHandler.retryRequest(localIOException2, i, this.context);
      }
      catch (IOException localIOException3)
      {
        int i;
        boolean bool;
        if (!isCancelled())
        {
          i = this.executionCount + 1;
          this.executionCount = i;
          bool = localHttpRequestRetryHandler.retryRequest(localIOException3, i, this.context);
        }
      }
    }
  }
  
  private void sendCancelNotification()
  {
    try
    {
      if ((!this.isFinished) && (this.isCancelled) && (!this.cancelIsNotified))
      {
        this.cancelIsNotified = true;
        if (this.responseHandler != null) {
          this.responseHandler.sendCancelMessage();
        }
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    this.isCancelled = true;
    this.request.abort();
    return isCancelled();
  }
  
  public boolean isCancelled()
  {
    if (this.isCancelled) {
      sendCancelNotification();
    }
    return this.isCancelled;
  }
  
  public boolean isDone()
  {
    return (isCancelled()) || (this.isFinished);
  }
  
  public void onPostProcessRequest(AsyncHttpRequest paramAsyncHttpRequest) {}
  
  public void onPreProcessRequest(AsyncHttpRequest paramAsyncHttpRequest) {}
  
  public void run()
  {
    if (isCancelled()) {}
    for (;;)
    {
      return;
      if (!this.isRequestPreProcessed)
      {
        this.isRequestPreProcessed = true;
        onPreProcessRequest(this);
      }
      if (isCancelled()) {
        continue;
      }
      if (this.responseHandler != null) {
        this.responseHandler.sendStartMessage();
      }
      if (isCancelled()) {
        continue;
      }
      try
      {
        makeRequestWithRetries();
        if (isCancelled()) {
          continue;
        }
        if (this.responseHandler != null) {
          this.responseHandler.sendFinishMessage();
        }
        if (isCancelled()) {
          continue;
        }
        onPostProcessRequest(this);
        this.isFinished = true;
        return;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          if ((!isCancelled()) && (this.responseHandler != null)) {
            this.responseHandler.sendFailureMessage(0, null, null, localIOException);
          } else {
            Log.e("AsyncHttpRequest", "makeRequestWithRetries returned error, but handler is null", localIOException);
          }
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\AsyncHttpRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */