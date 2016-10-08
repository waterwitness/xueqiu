package org.apache.http.client.protocol;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthProtocolState;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.client.AuthCache;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Immutable
public class RequestAuthCache
  implements HttpRequestInterceptor
{
  private final Log log = LogFactory.getLog(getClass());
  
  private void doPreemptiveAuth(HttpHost paramHttpHost, AuthScheme paramAuthScheme, AuthState paramAuthState, CredentialsProvider paramCredentialsProvider)
  {
    String str = paramAuthScheme.getSchemeName();
    if (this.log.isDebugEnabled()) {
      this.log.debug("Re-using cached '" + str + "' auth scheme for " + paramHttpHost);
    }
    paramHttpHost = paramCredentialsProvider.getCredentials(new AuthScope(paramHttpHost, AuthScope.ANY_REALM, str));
    if (paramHttpHost != null)
    {
      if ("BASIC".equalsIgnoreCase(paramAuthScheme.getSchemeName())) {
        paramAuthState.setState(AuthProtocolState.CHALLENGED);
      }
      for (;;)
      {
        paramAuthState.update(paramAuthScheme, paramHttpHost);
        return;
        paramAuthState.setState(AuthProtocolState.SUCCESS);
      }
    }
    this.log.debug("No credentials for preemptive authentication");
  }
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    Args.notNull(paramHttpContext, "HTTP context");
    Object localObject2 = HttpClientContext.adapt(paramHttpContext);
    Object localObject1 = ((HttpClientContext)localObject2).getAuthCache();
    if (localObject1 == null)
    {
      this.log.debug("Auth cache not set in the context");
      return;
    }
    paramHttpContext = ((HttpClientContext)localObject2).getCredentialsProvider();
    if (paramHttpContext == null)
    {
      this.log.debug("Credentials provider not set in the context");
      return;
    }
    RouteInfo localRouteInfo = ((HttpClientContext)localObject2).getHttpRoute();
    if (localRouteInfo == null)
    {
      this.log.debug("Route info not set in the context");
      return;
    }
    paramHttpRequest = ((HttpClientContext)localObject2).getTargetHost();
    if (paramHttpRequest == null)
    {
      this.log.debug("Target host not set in the context");
      return;
    }
    if (paramHttpRequest.getPort() < 0) {
      paramHttpRequest = new HttpHost(paramHttpRequest.getHostName(), localRouteInfo.getTargetHost().getPort(), paramHttpRequest.getSchemeName());
    }
    for (;;)
    {
      AuthState localAuthState = ((HttpClientContext)localObject2).getTargetAuthState();
      if ((localAuthState != null) && (localAuthState.getState() == AuthProtocolState.UNCHALLENGED))
      {
        AuthScheme localAuthScheme = ((AuthCache)localObject1).get(paramHttpRequest);
        if (localAuthScheme != null) {
          doPreemptiveAuth(paramHttpRequest, localAuthScheme, localAuthState, paramHttpContext);
        }
      }
      paramHttpRequest = localRouteInfo.getProxyHost();
      localObject2 = ((HttpClientContext)localObject2).getProxyAuthState();
      if ((paramHttpRequest == null) || (localObject2 == null) || (((AuthState)localObject2).getState() != AuthProtocolState.UNCHALLENGED)) {
        break;
      }
      localObject1 = ((AuthCache)localObject1).get(paramHttpRequest);
      if (localObject1 == null) {
        break;
      }
      doPreemptiveAuth(paramHttpRequest, (AuthScheme)localObject1, (AuthState)localObject2, paramHttpContext);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\protocol\RequestAuthCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */