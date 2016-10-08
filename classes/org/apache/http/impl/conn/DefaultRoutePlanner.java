package org.apache.http.impl.conn;

import java.net.InetAddress;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.UnsupportedSchemeException;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Immutable
public class DefaultRoutePlanner
  implements HttpRoutePlanner
{
  private final SchemePortResolver schemePortResolver;
  
  public DefaultRoutePlanner(SchemePortResolver paramSchemePortResolver)
  {
    if (paramSchemePortResolver != null) {}
    for (;;)
    {
      this.schemePortResolver = paramSchemePortResolver;
      return;
      paramSchemePortResolver = DefaultSchemePortResolver.INSTANCE;
    }
  }
  
  protected HttpHost determineProxy(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    return null;
  }
  
  public HttpRoute determineRoute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "Request");
    if (paramHttpHost == null) {
      throw new ProtocolException("Target host is not specified");
    }
    Object localObject = HttpClientContext.adapt(paramHttpContext).getRequestConfig();
    InetAddress localInetAddress = ((RequestConfig)localObject).getLocalAddress();
    HttpHost localHttpHost = ((RequestConfig)localObject).getProxy();
    localObject = localHttpHost;
    if (localHttpHost == null) {
      localObject = determineProxy(paramHttpHost, paramHttpRequest, paramHttpContext);
    }
    paramHttpRequest = paramHttpHost;
    if (paramHttpHost.getPort() <= 0) {}
    boolean bool;
    try
    {
      paramHttpRequest = new HttpHost(paramHttpHost.getHostName(), this.schemePortResolver.resolve(paramHttpHost), paramHttpHost.getSchemeName());
      bool = paramHttpRequest.getSchemeName().equalsIgnoreCase("https");
      if (localObject == null) {
        return new HttpRoute(paramHttpRequest, localInetAddress, bool);
      }
    }
    catch (UnsupportedSchemeException paramHttpHost)
    {
      throw new HttpException(paramHttpHost.getMessage());
    }
    return new HttpRoute(paramHttpRequest, localInetAddress, (HttpHost)localObject, bool);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\DefaultRoutePlanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */