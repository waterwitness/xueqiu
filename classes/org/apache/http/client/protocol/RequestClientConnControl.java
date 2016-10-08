package org.apache.http.client.protocol;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.RequestLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Immutable
public class RequestClientConnControl
  implements HttpRequestInterceptor
{
  private static final String PROXY_CONN_DIRECTIVE = "Proxy-Connection";
  private final Log log = LogFactory.getLog(getClass());
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    if (paramHttpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT")) {
      paramHttpRequest.setHeader("Proxy-Connection", "Keep-Alive");
    }
    do
    {
      return;
      paramHttpContext = HttpClientContext.adapt(paramHttpContext).getHttpRoute();
      if (paramHttpContext == null)
      {
        this.log.debug("Connection route not set in the context");
        return;
      }
      if (((paramHttpContext.getHopCount() == 1) || (paramHttpContext.isTunnelled())) && (!paramHttpRequest.containsHeader("Connection"))) {
        paramHttpRequest.addHeader("Connection", "Keep-Alive");
      }
    } while ((paramHttpContext.getHopCount() != 2) || (paramHttpContext.isTunnelled()) || (paramHttpRequest.containsHeader("Proxy-Connection")));
    paramHttpRequest.addHeader("Proxy-Connection", "Keep-Alive");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\protocol\RequestClientConnControl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */