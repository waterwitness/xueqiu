package org.apache.http.impl.conn;

import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Immutable
public class DefaultProxyRoutePlanner
  extends DefaultRoutePlanner
{
  private final HttpHost proxy;
  
  public DefaultProxyRoutePlanner(HttpHost paramHttpHost)
  {
    this(paramHttpHost, null);
  }
  
  public DefaultProxyRoutePlanner(HttpHost paramHttpHost, SchemePortResolver paramSchemePortResolver)
  {
    super(paramSchemePortResolver);
    this.proxy = ((HttpHost)Args.notNull(paramHttpHost, "Proxy host"));
  }
  
  protected HttpHost determineProxy(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    return this.proxy;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\DefaultProxyRoutePlanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */