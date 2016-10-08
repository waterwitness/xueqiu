package org.apache.http.impl.client;

import java.io.Closeable;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.auth.AuthState;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.Configurable;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.params.HttpClientParamConfig;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Lookup;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.impl.execchain.ClientExecChain;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpParamsNames;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@ThreadSafe
class InternalHttpClient
  extends CloseableHttpClient
  implements Configurable
{
  private final Lookup<AuthSchemeProvider> authSchemeRegistry;
  private final List<Closeable> closeables;
  private final HttpClientConnectionManager connManager;
  private final Lookup<CookieSpecProvider> cookieSpecRegistry;
  private final CookieStore cookieStore;
  private final CredentialsProvider credentialsProvider;
  private final RequestConfig defaultConfig;
  private final ClientExecChain execChain;
  private final Log log = LogFactory.getLog(getClass());
  private final HttpRoutePlanner routePlanner;
  
  public InternalHttpClient(ClientExecChain paramClientExecChain, HttpClientConnectionManager paramHttpClientConnectionManager, HttpRoutePlanner paramHttpRoutePlanner, Lookup<CookieSpecProvider> paramLookup, Lookup<AuthSchemeProvider> paramLookup1, CookieStore paramCookieStore, CredentialsProvider paramCredentialsProvider, RequestConfig paramRequestConfig, List<Closeable> paramList)
  {
    Args.notNull(paramClientExecChain, "HTTP client exec chain");
    Args.notNull(paramHttpClientConnectionManager, "HTTP connection manager");
    Args.notNull(paramHttpRoutePlanner, "HTTP route planner");
    this.execChain = paramClientExecChain;
    this.connManager = paramHttpClientConnectionManager;
    this.routePlanner = paramHttpRoutePlanner;
    this.cookieSpecRegistry = paramLookup;
    this.authSchemeRegistry = paramLookup1;
    this.cookieStore = paramCookieStore;
    this.credentialsProvider = paramCredentialsProvider;
    this.defaultConfig = paramRequestConfig;
    this.closeables = paramList;
  }
  
  private HttpRoute determineRoute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    if (paramHttpHost == null) {
      paramHttpHost = (HttpHost)paramHttpRequest.getParams().getParameter("http.default-host");
    }
    for (;;)
    {
      return this.routePlanner.determineRoute(paramHttpHost, paramHttpRequest, paramHttpContext);
    }
  }
  
  private void setupContext(HttpClientContext paramHttpClientContext)
  {
    if (paramHttpClientContext.getAttribute("http.auth.target-scope") == null) {
      paramHttpClientContext.setAttribute("http.auth.target-scope", new AuthState());
    }
    if (paramHttpClientContext.getAttribute("http.auth.proxy-scope") == null) {
      paramHttpClientContext.setAttribute("http.auth.proxy-scope", new AuthState());
    }
    if (paramHttpClientContext.getAttribute("http.authscheme-registry") == null) {
      paramHttpClientContext.setAttribute("http.authscheme-registry", this.authSchemeRegistry);
    }
    if (paramHttpClientContext.getAttribute("http.cookiespec-registry") == null) {
      paramHttpClientContext.setAttribute("http.cookiespec-registry", this.cookieSpecRegistry);
    }
    if (paramHttpClientContext.getAttribute("http.cookie-store") == null) {
      paramHttpClientContext.setAttribute("http.cookie-store", this.cookieStore);
    }
    if (paramHttpClientContext.getAttribute("http.auth.credentials-provider") == null) {
      paramHttpClientContext.setAttribute("http.auth.credentials-provider", this.credentialsProvider);
    }
    if (paramHttpClientContext.getAttribute("http.request-config") == null) {
      paramHttpClientContext.setAttribute("http.request-config", this.defaultConfig);
    }
  }
  
  public void close()
  {
    if (this.closeables != null)
    {
      Iterator localIterator = this.closeables.iterator();
      while (localIterator.hasNext())
      {
        Closeable localCloseable = (Closeable)localIterator.next();
        try
        {
          localCloseable.close();
        }
        catch (IOException localIOException)
        {
          this.log.error(localIOException.getMessage(), localIOException);
        }
      }
    }
  }
  
  protected CloseableHttpResponse doExecute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Object localObject = null;
    Args.notNull(paramHttpRequest, "HTTP request");
    if ((paramHttpRequest instanceof HttpExecutionAware)) {}
    for (HttpExecutionAware localHttpExecutionAware = (HttpExecutionAware)paramHttpRequest;; localHttpExecutionAware = null) {
      for (;;)
      {
        try
        {
          HttpRequestWrapper localHttpRequestWrapper = HttpRequestWrapper.wrap(paramHttpRequest, paramHttpHost);
          if (paramHttpContext != null)
          {
            HttpClientContext localHttpClientContext = HttpClientContext.adapt(paramHttpContext);
            paramHttpContext = (HttpContext)localObject;
            if ((paramHttpRequest instanceof Configurable)) {
              paramHttpContext = ((Configurable)paramHttpRequest).getConfig();
            }
            if (paramHttpContext == null)
            {
              paramHttpRequest = paramHttpRequest.getParams();
              if ((!(paramHttpRequest instanceof HttpParamsNames)) || (!((HttpParamsNames)paramHttpRequest).getNames().isEmpty()))
              {
                paramHttpRequest = HttpClientParamConfig.getRequestConfig(paramHttpRequest);
                if (paramHttpRequest != null) {
                  localHttpClientContext.setRequestConfig(paramHttpRequest);
                }
                setupContext(localHttpClientContext);
                paramHttpHost = determineRoute(paramHttpHost, localHttpRequestWrapper, localHttpClientContext);
                return this.execChain.execute(paramHttpHost, localHttpRequestWrapper, localHttpClientContext, localHttpExecutionAware);
              }
            }
          }
          else
          {
            paramHttpContext = new BasicHttpContext();
            continue;
          }
          paramHttpRequest = paramHttpContext;
        }
        catch (HttpException paramHttpHost)
        {
          throw new ClientProtocolException(paramHttpHost);
        }
      }
    }
  }
  
  public RequestConfig getConfig()
  {
    return this.defaultConfig;
  }
  
  public ClientConnectionManager getConnectionManager()
  {
    new ClientConnectionManager()
    {
      public void closeExpiredConnections()
      {
        InternalHttpClient.this.connManager.closeExpiredConnections();
      }
      
      public void closeIdleConnections(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
      {
        InternalHttpClient.this.connManager.closeIdleConnections(paramAnonymousLong, paramAnonymousTimeUnit);
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
        InternalHttpClient.this.connManager.shutdown();
      }
    };
  }
  
  public HttpParams getParams()
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\InternalHttpClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */