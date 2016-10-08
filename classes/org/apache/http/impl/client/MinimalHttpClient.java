package org.apache.http.impl.client;

import java.util.concurrent.TimeUnit;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.Configurable;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.execchain.MinimalClientExec;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.util.Args;

@ThreadSafe
class MinimalHttpClient
  extends CloseableHttpClient
{
  private final HttpClientConnectionManager connManager;
  private final HttpParams params;
  private final MinimalClientExec requestExecutor;
  
  public MinimalHttpClient(HttpClientConnectionManager paramHttpClientConnectionManager)
  {
    this.connManager = ((HttpClientConnectionManager)Args.notNull(paramHttpClientConnectionManager, "HTTP connection manager"));
    this.requestExecutor = new MinimalClientExec(new HttpRequestExecutor(), paramHttpClientConnectionManager, DefaultConnectionReuseStrategy.INSTANCE, DefaultConnectionKeepAliveStrategy.INSTANCE);
    this.params = new BasicHttpParams();
  }
  
  public void close()
  {
    this.connManager.shutdown();
  }
  
  protected CloseableHttpResponse doExecute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpHost, "Target host");
    Args.notNull(paramHttpRequest, "HTTP request");
    if ((paramHttpRequest instanceof HttpExecutionAware)) {}
    for (HttpExecutionAware localHttpExecutionAware = (HttpExecutionAware)paramHttpRequest;; localHttpExecutionAware = null) {
      for (;;)
      {
        try
        {
          HttpRequestWrapper localHttpRequestWrapper = HttpRequestWrapper.wrap(paramHttpRequest);
          if (paramHttpContext != null)
          {
            paramHttpContext = HttpClientContext.adapt(paramHttpContext);
            HttpRoute localHttpRoute = new HttpRoute(paramHttpHost);
            if ((paramHttpRequest instanceof Configurable))
            {
              paramHttpHost = ((Configurable)paramHttpRequest).getConfig();
              if (paramHttpHost != null) {
                paramHttpContext.setRequestConfig(paramHttpHost);
              }
              return this.requestExecutor.execute(localHttpRoute, localHttpRequestWrapper, paramHttpContext, localHttpExecutionAware);
            }
          }
          else
          {
            paramHttpContext = new BasicHttpContext();
            continue;
          }
          paramHttpHost = null;
        }
        catch (HttpException paramHttpHost)
        {
          throw new ClientProtocolException(paramHttpHost);
        }
      }
    }
  }
  
  public ClientConnectionManager getConnectionManager()
  {
    new ClientConnectionManager()
    {
      public void closeExpiredConnections()
      {
        MinimalHttpClient.this.connManager.closeExpiredConnections();
      }
      
      public void closeIdleConnections(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
      {
        MinimalHttpClient.this.connManager.closeIdleConnections(paramAnonymousLong, paramAnonymousTimeUnit);
      }
      
      public SchemeRegistry getSchemeRegistry()
      {
        throw new UnsupportedOperationException();
      }
      
      public void releaseConnection(ManagedClientConnection paramAnonymousManagedClientConnection, long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
      {
        throw new UnsupportedOperationException();
      }
      
      public ClientConnectionRequest requestConnection(HttpRoute paramAnonymousHttpRoute, Object paramAnonymousObject)
      {
        throw new UnsupportedOperationException();
      }
      
      public void shutdown()
      {
        MinimalHttpClient.this.connManager.shutdown();
      }
    };
  }
  
  public HttpParams getParams()
  {
    return this.params;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\MinimalHttpClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */