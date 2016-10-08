package org.apache.http.impl.execchain;

import java.io.InterruptedIOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.ServiceUnavailableRetryStrategy;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.util.Args;

@Immutable
public class ServiceUnavailableRetryExec
  implements ClientExecChain
{
  private final Log log = LogFactory.getLog(getClass());
  private final ClientExecChain requestExecutor;
  private final ServiceUnavailableRetryStrategy retryStrategy;
  
  public ServiceUnavailableRetryExec(ClientExecChain paramClientExecChain, ServiceUnavailableRetryStrategy paramServiceUnavailableRetryStrategy)
  {
    Args.notNull(paramClientExecChain, "HTTP request executor");
    Args.notNull(paramServiceUnavailableRetryStrategy, "Retry strategy");
    this.requestExecutor = paramClientExecChain;
    this.retryStrategy = paramServiceUnavailableRetryStrategy;
  }
  
  public CloseableHttpResponse execute(HttpRoute paramHttpRoute, HttpRequestWrapper paramHttpRequestWrapper, HttpClientContext paramHttpClientContext, HttpExecutionAware paramHttpExecutionAware)
  {
    Header[] arrayOfHeader = paramHttpRequestWrapper.getAllHeaders();
    int i = 1;
    for (;;)
    {
      localCloseableHttpResponse = this.requestExecutor.execute(paramHttpRoute, paramHttpRequestWrapper, paramHttpClientContext, paramHttpExecutionAware);
      try
      {
        if (this.retryStrategy.retryRequest(localCloseableHttpResponse, i, paramHttpClientContext))
        {
          localCloseableHttpResponse.close();
          long l = this.retryStrategy.getRetryInterval();
          if (l > 0L) {}
          try
          {
            this.log.trace("Wait for " + l);
            Thread.sleep(l);
            paramHttpRequestWrapper.setHeaders(arrayOfHeader);
            i += 1;
          }
          catch (InterruptedException paramHttpRoute)
          {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
          }
        }
        return localCloseableHttpResponse;
      }
      catch (RuntimeException paramHttpRoute)
      {
        localCloseableHttpResponse.close();
        throw paramHttpRoute;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\execchain\ServiceUnavailableRetryExec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */