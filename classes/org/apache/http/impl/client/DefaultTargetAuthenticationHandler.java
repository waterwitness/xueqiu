package org.apache.http.impl.client;

import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Deprecated
@Immutable
public class DefaultTargetAuthenticationHandler
  extends AbstractAuthenticationHandler
{
  protected List<String> getAuthPreferences(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    List localList = (List)paramHttpResponse.getParams().getParameter("http.auth.target-scheme-pref");
    if (localList != null) {
      return localList;
    }
    return super.getAuthPreferences(paramHttpResponse, paramHttpContext);
  }
  
  public Map<String, Header> getChallenges(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpResponse, "HTTP response");
    return parseChallenges(paramHttpResponse.getHeaders("WWW-Authenticate"));
  }
  
  public boolean isAuthenticationRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpResponse, "HTTP response");
    return paramHttpResponse.getStatusLine().getStatusCode() == 401;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\DefaultTargetAuthenticationHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */