package org.apache.http.impl.execchain;

import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.NoHttpResponseException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.NonRepeatableRequestException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.util.Args;

@Immutable
public class RetryExec
  implements ClientExecChain
{
  private final Log log = LogFactory.getLog(getClass());
  private final ClientExecChain requestExecutor;
  private final HttpRequestRetryHandler retryHandler;
  
  public RetryExec(ClientExecChain paramClientExecChain, HttpRequestRetryHandler paramHttpRequestRetryHandler)
  {
    Args.notNull(paramClientExecChain, "HTTP request executor");
    Args.notNull(paramHttpRequestRetryHandler, "HTTP request retry handler");
    this.requestExecutor = paramClientExecChain;
    this.retryHandler = paramHttpRequestRetryHandler;
  }
  
  public CloseableHttpResponse execute(HttpRoute paramHttpRoute, HttpRequestWrapper paramHttpRequestWrapper, HttpClientContext paramHttpClientContext, HttpExecutionAware paramHttpExecutionAware)
  {
    Args.notNull(paramHttpRoute, "HTTP route");
    Args.notNull(paramHttpRequestWrapper, "HTTP request");
    Args.notNull(paramHttpClientContext, "HTTP context");
    Header[] arrayOfHeader = paramHttpRequestWrapper.getAllHeaders();
    int i = 1;
    try
    {
      CloseableHttpResponse localCloseableHttpResponse = this.requestExecutor.execute(paramHttpRoute, paramHttpRequestWrapper, paramHttpClientContext, paramHttpExecutionAware);
      return localCloseableHttpResponse;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        if ((paramHttpExecutionAware != null) && (paramHttpExecutionAware.isAborted()))
        {
          this.log.debug("Request has been aborted");
          throw localIOException;
        }
        if (!this.retryHandler.retryRequest(localIOException, i, paramHttpClientContext)) {
          break;
        }
        if (this.log.isInfoEnabled()) {
          this.log.info("I/O exception (" + localIOException.getClass().getName() + ") caught when processing request to " + paramHttpRoute + ": " + localIOException.getMessage());
        }
        if (this.log.isDebugEnabled()) {
          this.log.debug(localIOException.getMessage(), localIOException);
        }
        if (!RequestEntityProxy.isRepeatable(paramHttpRequestWrapper))
        {
          this.log.debug("Cannot retry non-repeatable request");
          throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity", localIOException);
        }
        paramHttpRequestWrapper.setHeaders(arrayOfHeader);
        if (this.log.isInfoEnabled()) {
          this.log.info("Retrying request to " + paramHttpRoute);
        }
        i += 1;
      }
      if ((localIOException instanceof NoHttpResponseException))
      {
        paramHttpRoute = new NoHttpResponseException(paramHttpRoute.getTargetHost().toHostString() + " failed to respond");
        paramHttpRoute.setStackTrace(localIOException.getStackTrace());
        throw paramHttpRoute;
      }
      throw localIOException;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\execchain\RetryExec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */