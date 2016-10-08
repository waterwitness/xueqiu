package org.apache.http.client.protocol;

import org.apache.commons.logging.Log;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthState;
import org.apache.http.conn.HttpRoutedConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Deprecated
@Immutable
public class RequestProxyAuthentication
  extends RequestAuthenticationBase
{
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    Args.notNull(paramHttpContext, "HTTP context");
    if (paramHttpRequest.containsHeader("Proxy-Authorization")) {}
    do
    {
      return;
      localObject = (HttpRoutedConnection)paramHttpContext.getAttribute("http.connection");
      if (localObject == null)
      {
        this.log.debug("HTTP connection not set in the context");
        return;
      }
    } while (((HttpRoutedConnection)localObject).getRoute().isTunnelled());
    Object localObject = (AuthState)paramHttpContext.getAttribute("http.auth.proxy-scope");
    if (localObject == null)
    {
      this.log.debug("Proxy auth state not set in the context");
      return;
    }
    if (this.log.isDebugEnabled()) {
      this.log.debug("Proxy auth state: " + ((AuthState)localObject).getState());
    }
    process((AuthState)localObject, paramHttpRequest, paramHttpContext);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\protocol\RequestProxyAuthentication.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */