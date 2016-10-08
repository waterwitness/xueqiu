package org.apache.http.impl.client;

import java.io.Closeable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.protocol.HttpContext;

@ThreadSafe
public class FutureRequestExecutionService
  implements Closeable
{
  private final AtomicBoolean closed = new AtomicBoolean(false);
  private final ExecutorService executorService;
  private final HttpClient httpclient;
  private final FutureRequestExecutionMetrics metrics = new FutureRequestExecutionMetrics();
  
  public FutureRequestExecutionService(HttpClient paramHttpClient, ExecutorService paramExecutorService)
  {
    this.httpclient = paramHttpClient;
    this.executorService = paramExecutorService;
  }
  
  public void close()
  {
    this.closed.set(true);
    this.executorService.shutdownNow();
    if ((this.httpclient instanceof Closeable)) {
      ((Closeable)this.httpclient).close();
    }
  }
  
  public <T> HttpRequestFutureTask<T> execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext, ResponseHandler<T> paramResponseHandler)
  {
    return execute(paramHttpUriRequest, paramHttpContext, paramResponseHandler, null);
  }
  
  public <T> HttpRequestFutureTask<T> execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext, ResponseHandler<T> paramResponseHandler, FutureCallback<T> paramFutureCallback)
  {
    if (this.closed.get()) {
      throw new IllegalStateException("Close has been called on this httpclient instance.");
    }
    this.metrics.getScheduledConnections().incrementAndGet();
    paramHttpUriRequest = new HttpRequestFutureTask(paramHttpUriRequest, new HttpRequestTaskCallable(this.httpclient, paramHttpUriRequest, paramHttpContext, paramResponseHandler, paramFutureCallback, this.metrics));
    this.executorService.execute(paramHttpUriRequest);
    return paramHttpUriRequest;
  }
  
  public FutureRequestExecutionMetrics metrics()
  {
    return this.metrics;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\FutureRequestExecutionService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */