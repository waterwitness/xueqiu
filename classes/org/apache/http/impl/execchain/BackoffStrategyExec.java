package org.apache.http.impl.execchain;

import java.io.IOException;
import java.lang.reflect.UndeclaredThrowableException;
import org.apache.http.HttpException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.BackoffManager;
import org.apache.http.client.ConnectionBackoffStrategy;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.util.Args;

@Immutable
public class BackoffStrategyExec
  implements ClientExecChain
{
  private final BackoffManager backoffManager;
  private final ConnectionBackoffStrategy connectionBackoffStrategy;
  private final ClientExecChain requestExecutor;
  
  public BackoffStrategyExec(ClientExecChain paramClientExecChain, ConnectionBackoffStrategy paramConnectionBackoffStrategy, BackoffManager paramBackoffManager)
  {
    Args.notNull(paramClientExecChain, "HTTP client request executor");
    Args.notNull(paramConnectionBackoffStrategy, "Connection backoff strategy");
    Args.notNull(paramBackoffManager, "Backoff manager");
    this.requestExecutor = paramClientExecChain;
    this.connectionBackoffStrategy = paramConnectionBackoffStrategy;
    this.backoffManager = paramBackoffManager;
  }
  
  public CloseableHttpResponse execute(HttpRoute paramHttpRoute, HttpRequestWrapper paramHttpRequestWrapper, HttpClientContext paramHttpClientContext, HttpExecutionAware paramHttpExecutionAware)
  {
    Args.notNull(paramHttpRoute, "HTTP route");
    Args.notNull(paramHttpRequestWrapper, "HTTP request");
    Args.notNull(paramHttpClientContext, "HTTP context");
    try
    {
      paramHttpRequestWrapper = this.requestExecutor.execute(paramHttpRoute, paramHttpRequestWrapper, paramHttpClientContext, paramHttpExecutionAware);
      if (this.connectionBackoffStrategy.shouldBackoff(paramHttpRequestWrapper))
      {
        this.backoffManager.backOff(paramHttpRoute);
        return paramHttpRequestWrapper;
      }
    }
    catch (Exception paramHttpRequestWrapper)
    {
      if (this.connectionBackoffStrategy.shouldBackoff(paramHttpRequestWrapper)) {
        this.backoffManager.backOff(paramHttpRoute);
      }
      if ((paramHttpRequestWrapper instanceof RuntimeException)) {
        throw ((RuntimeException)paramHttpRequestWrapper);
      }
      if ((paramHttpRequestWrapper instanceof HttpException)) {
        throw ((HttpException)paramHttpRequestWrapper);
      }
      if ((paramHttpRequestWrapper instanceof IOException)) {
        throw ((IOException)paramHttpRequestWrapper);
      }
      throw new UndeclaredThrowableException(paramHttpRequestWrapper);
    }
    this.backoffManager.probe(paramHttpRoute);
    return paramHttpRequestWrapper;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\execchain\BackoffStrategyExec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */