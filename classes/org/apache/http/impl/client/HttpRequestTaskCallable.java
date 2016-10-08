package org.apache.http.impl.client;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.protocol.HttpContext;

class HttpRequestTaskCallable<V>
  implements Callable<V>
{
  private final FutureCallback<V> callback;
  private final AtomicBoolean cancelled = new AtomicBoolean(false);
  private final HttpContext context;
  private long ended = -1L;
  private final HttpClient httpclient;
  private final FutureRequestExecutionMetrics metrics;
  private final HttpUriRequest request;
  private final ResponseHandler<V> responseHandler;
  private final long scheduled = System.currentTimeMillis();
  private long started = -1L;
  
  HttpRequestTaskCallable(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext, ResponseHandler<V> paramResponseHandler, FutureCallback<V> paramFutureCallback, FutureRequestExecutionMetrics paramFutureRequestExecutionMetrics)
  {
    this.httpclient = paramHttpClient;
    this.responseHandler = paramResponseHandler;
    this.request = paramHttpUriRequest;
    this.context = paramHttpContext;
    this.callback = paramFutureCallback;
    this.metrics = paramFutureRequestExecutionMetrics;
  }
  
  public V call()
  {
    if (!this.cancelled.get()) {
      try
      {
        this.metrics.getActiveConnections().incrementAndGet();
        this.started = System.currentTimeMillis();
        try
        {
          this.metrics.getScheduledConnections().decrementAndGet();
          Object localObject1 = this.httpclient.execute(this.request, this.responseHandler, this.context);
          this.ended = System.currentTimeMillis();
          this.metrics.getSuccessfulConnections().increment(this.started);
          if (this.callback != null) {
            this.callback.completed(localObject1);
          }
          return (V)localObject1;
        }
        catch (Exception localException)
        {
          this.metrics.getFailedConnections().increment(this.started);
          this.ended = System.currentTimeMillis();
          if (this.callback != null) {
            this.callback.failed(localException);
          }
          throw localException;
        }
        throw new IllegalStateException("call has been cancelled for request " + this.request.getURI());
      }
      finally
      {
        this.metrics.getRequests().increment(this.started);
        this.metrics.getTasks().increment(this.started);
        this.metrics.getActiveConnections().decrementAndGet();
      }
    }
  }
  
  public void cancel()
  {
    this.cancelled.set(true);
    if (this.callback != null) {
      this.callback.cancelled();
    }
  }
  
  public long getEnded()
  {
    return this.ended;
  }
  
  public long getScheduled()
  {
    return this.scheduled;
  }
  
  public long getStarted()
  {
    return this.started;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\HttpRequestTaskCallable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */