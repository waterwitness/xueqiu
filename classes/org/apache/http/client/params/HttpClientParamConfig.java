package org.apache.http.client.params;

import java.net.InetAddress;
import java.util.Collection;
import org.apache.http.HttpHost;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.config.RequestConfig.Builder;
import org.apache.http.params.HttpParams;

@Deprecated
public final class HttpClientParamConfig
{
  public static RequestConfig getRequestConfig(HttpParams paramHttpParams)
  {
    RequestConfig.Builder localBuilder = RequestConfig.custom().setSocketTimeout(paramHttpParams.getIntParameter("http.socket.timeout", 0)).setStaleConnectionCheckEnabled(paramHttpParams.getBooleanParameter("http.connection.stalecheck", true)).setConnectTimeout(paramHttpParams.getIntParameter("http.connection.timeout", 0)).setExpectContinueEnabled(paramHttpParams.getBooleanParameter("http.protocol.expect-continue", false)).setProxy((HttpHost)paramHttpParams.getParameter("http.route.default-proxy")).setLocalAddress((InetAddress)paramHttpParams.getParameter("http.route.local-address")).setProxyPreferredAuthSchemes((Collection)paramHttpParams.getParameter("http.auth.proxy-scheme-pref")).setTargetPreferredAuthSchemes((Collection)paramHttpParams.getParameter("http.auth.target-scheme-pref")).setAuthenticationEnabled(paramHttpParams.getBooleanParameter("http.protocol.handle-authentication", true)).setCircularRedirectsAllowed(paramHttpParams.getBooleanParameter("http.protocol.allow-circular-redirects", false)).setConnectionRequestTimeout((int)paramHttpParams.getLongParameter("http.conn-manager.timeout", 0L)).setCookieSpec((String)paramHttpParams.getParameter("http.protocol.cookie-policy")).setMaxRedirects(paramHttpParams.getIntParameter("http.protocol.max-redirects", 50)).setRedirectsEnabled(paramHttpParams.getBooleanParameter("http.protocol.handle-redirects", true));
    if (!paramHttpParams.getBooleanParameter("http.protocol.reject-relative-redirect", false)) {}
    for (boolean bool = true;; bool = false) {
      return localBuilder.setRelativeRedirectsAllowed(bool).build();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\params\HttpClientParamConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */