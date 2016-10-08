package org.apache.http.client.protocol;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthState;
import org.apache.http.client.AuthCache;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.BasicAuthCache;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Deprecated
@Immutable
public class ResponseAuthCache
  implements HttpResponseInterceptor
{
  private final Log log = LogFactory.getLog(getClass());
  
  private void cache(AuthCache paramAuthCache, HttpHost paramHttpHost, AuthScheme paramAuthScheme)
  {
    if (this.log.isDebugEnabled()) {
      this.log.debug("Caching '" + paramAuthScheme.getSchemeName() + "' auth scheme for " + paramHttpHost);
    }
    paramAuthCache.put(paramHttpHost, paramAuthScheme);
  }
  
  private boolean isCachable(AuthState paramAuthState)
  {
    paramAuthState = paramAuthState.getAuthScheme();
    if ((paramAuthState == null) || (!paramAuthState.isComplete())) {}
    do
    {
      return false;
      paramAuthState = paramAuthState.getSchemeName();
    } while ((!paramAuthState.equalsIgnoreCase("Basic")) && (!paramAuthState.equalsIgnoreCase("Digest")));
    return true;
  }
  
  private void uncache(AuthCache paramAuthCache, HttpHost paramHttpHost, AuthScheme paramAuthScheme)
  {
    if (this.log.isDebugEnabled()) {
      this.log.debug("Removing from cache '" + paramAuthScheme.getSchemeName() + "' auth scheme for " + paramHttpHost);
    }
    paramAuthCache.remove(paramHttpHost);
  }
  
  public void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpResponse, "HTTP request");
    Args.notNull(paramHttpContext, "HTTP context");
    Object localObject1 = (AuthCache)paramHttpContext.getAttribute("http.auth.auth-cache");
    paramHttpResponse = (HttpHost)paramHttpContext.getAttribute("http.target_host");
    AuthState localAuthState = (AuthState)paramHttpContext.getAttribute("http.auth.target-scope");
    Object localObject2;
    if ((paramHttpResponse != null) && (localAuthState != null))
    {
      if (this.log.isDebugEnabled()) {
        this.log.debug("Target auth state: " + localAuthState.getState());
      }
      if (isCachable(localAuthState))
      {
        SchemeRegistry localSchemeRegistry = (SchemeRegistry)paramHttpContext.getAttribute("http.scheme-registry");
        localObject2 = paramHttpResponse;
        if (paramHttpResponse.getPort() < 0)
        {
          localObject2 = localSchemeRegistry.getScheme(paramHttpResponse);
          localObject2 = new HttpHost(paramHttpResponse.getHostName(), ((Scheme)localObject2).resolvePort(paramHttpResponse.getPort()), paramHttpResponse.getSchemeName());
        }
        paramHttpResponse = (HttpResponse)localObject1;
        if (localObject1 == null)
        {
          paramHttpResponse = new BasicAuthCache();
          paramHttpContext.setAttribute("http.auth.auth-cache", paramHttpResponse);
        }
        switch (1.$SwitchMap$org$apache$http$auth$AuthProtocolState[localAuthState.getState().ordinal()])
        {
        }
      }
    }
    for (;;)
    {
      localObject2 = (HttpHost)paramHttpContext.getAttribute("http.proxy_host");
      localAuthState = (AuthState)paramHttpContext.getAttribute("http.auth.proxy-scope");
      if ((localObject2 != null) && (localAuthState != null))
      {
        if (this.log.isDebugEnabled()) {
          this.log.debug("Proxy auth state: " + localAuthState.getState());
        }
        if (isCachable(localAuthState))
        {
          localObject1 = paramHttpResponse;
          if (paramHttpResponse == null)
          {
            localObject1 = new BasicAuthCache();
            paramHttpContext.setAttribute("http.auth.auth-cache", localObject1);
          }
        }
      }
      switch (1.$SwitchMap$org$apache$http$auth$AuthProtocolState[localAuthState.getState().ordinal()])
      {
      default: 
        return;
        cache(paramHttpResponse, (HttpHost)localObject2, localAuthState.getAuthScheme());
        continue;
        uncache(paramHttpResponse, (HttpHost)localObject2, localAuthState.getAuthScheme());
        break;
      case 1: 
        cache((AuthCache)localObject1, (HttpHost)localObject2, localAuthState.getAuthScheme());
        return;
      case 2: 
        uncache((AuthCache)localObject1, (HttpHost)localObject2, localAuthState.getAuthScheme());
        return;
        paramHttpResponse = (HttpResponse)localObject1;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\protocol\ResponseAuthCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */