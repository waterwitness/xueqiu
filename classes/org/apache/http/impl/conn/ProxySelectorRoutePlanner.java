package org.apache.http.impl.conn;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
@NotThreadSafe
public class ProxySelectorRoutePlanner
  implements HttpRoutePlanner
{
  protected ProxySelector proxySelector;
  protected final SchemeRegistry schemeRegistry;
  
  public ProxySelectorRoutePlanner(SchemeRegistry paramSchemeRegistry, ProxySelector paramProxySelector)
  {
    Args.notNull(paramSchemeRegistry, "SchemeRegistry");
    this.schemeRegistry = paramSchemeRegistry;
    this.proxySelector = paramProxySelector;
  }
  
  protected Proxy chooseProxy(List<Proxy> paramList, HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Args.notEmpty(paramList, "List of proxies");
    paramHttpHost = null;
    int i = 0;
    while ((paramHttpHost == null) && (i < paramList.size()))
    {
      paramHttpContext = (Proxy)paramList.get(i);
      paramHttpRequest = paramHttpContext;
      switch (1.$SwitchMap$java$net$Proxy$Type[paramHttpContext.type().ordinal()])
      {
      default: 
        paramHttpRequest = paramHttpHost;
      }
      i += 1;
      paramHttpHost = paramHttpRequest;
    }
    paramList = paramHttpHost;
    if (paramHttpHost == null) {
      paramList = Proxy.NO_PROXY;
    }
    return paramList;
  }
  
  protected HttpHost determineProxy(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Object localObject2 = this.proxySelector;
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = ProxySelector.getDefault();
    }
    if (localObject1 == null) {}
    for (;;)
    {
      return null;
      try
      {
        localObject2 = new URI(paramHttpHost.toURI());
        paramHttpHost = chooseProxy(((ProxySelector)localObject1).select((URI)localObject2), paramHttpHost, paramHttpRequest, paramHttpContext);
        if (paramHttpHost.type() == Proxy.Type.HTTP) {
          if (!(paramHttpHost.address() instanceof InetSocketAddress)) {
            throw new HttpException("Unable to handle non-Inet proxy address: " + paramHttpHost.address());
          }
        }
      }
      catch (URISyntaxException paramHttpRequest)
      {
        throw new HttpException("Cannot convert host to URI: " + paramHttpHost, paramHttpRequest);
      }
    }
    paramHttpHost = (InetSocketAddress)paramHttpHost.address();
    return new HttpHost(getHost(paramHttpHost), paramHttpHost.getPort());
  }
  
  public HttpRoute determineRoute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    Object localObject = ConnRouteParams.getForcedRoute(paramHttpRequest.getParams());
    if (localObject != null) {
      return (HttpRoute)localObject;
    }
    Asserts.notNull(paramHttpHost, "Target host");
    localObject = ConnRouteParams.getLocalAddress(paramHttpRequest.getParams());
    paramHttpRequest = determineProxy(paramHttpHost, paramHttpRequest, paramHttpContext);
    boolean bool = this.schemeRegistry.getScheme(paramHttpHost.getSchemeName()).isLayered();
    if (paramHttpRequest == null) {
      return new HttpRoute(paramHttpHost, (InetAddress)localObject, bool);
    }
    return new HttpRoute(paramHttpHost, (InetAddress)localObject, paramHttpRequest, bool);
  }
  
  protected String getHost(InetSocketAddress paramInetSocketAddress)
  {
    if (paramInetSocketAddress.isUnresolved()) {
      return paramInetSocketAddress.getHostName();
    }
    return paramInetSocketAddress.getAddress().getHostAddress();
  }
  
  public ProxySelector getProxySelector()
  {
    return this.proxySelector;
  }
  
  public void setProxySelector(ProxySelector paramProxySelector)
  {
    this.proxySelector = paramProxySelector;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\ProxySelectorRoutePlanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */