package com.loopj.android.http;

import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.protocol.HttpContext;

public class PreemtiveAuthorizationHttpRequestInterceptor
  implements HttpRequestInterceptor
{
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    paramHttpRequest = (AuthState)paramHttpContext.getAttribute("http.auth.target-scope");
    CredentialsProvider localCredentialsProvider = (CredentialsProvider)paramHttpContext.getAttribute("http.auth.credentials-provider");
    paramHttpContext = (HttpHost)paramHttpContext.getAttribute("http.target_host");
    if (paramHttpRequest.getAuthScheme() == null)
    {
      paramHttpContext = localCredentialsProvider.getCredentials(new AuthScope(paramHttpContext.getHostName(), paramHttpContext.getPort()));
      if (paramHttpContext != null)
      {
        paramHttpRequest.setAuthScheme(new BasicScheme());
        paramHttpRequest.setCredentials(paramHttpContext);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\PreemtiveAuthorizationHttpRequestInterceptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */