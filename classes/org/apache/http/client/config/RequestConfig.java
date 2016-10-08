package org.apache.http.client.config;

import java.net.InetAddress;
import java.util.Collection;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;

@Immutable
public class RequestConfig
  implements Cloneable
{
  public static final RequestConfig DEFAULT = new RequestConfig.Builder().build();
  private final boolean authenticationEnabled;
  private final boolean circularRedirectsAllowed;
  private final int connectTimeout;
  private final int connectionRequestTimeout;
  private final boolean contentCompressionEnabled;
  private final String cookieSpec;
  private final boolean expectContinueEnabled;
  private final InetAddress localAddress;
  private final int maxRedirects;
  private final HttpHost proxy;
  private final Collection<String> proxyPreferredAuthSchemes;
  private final boolean redirectsEnabled;
  private final boolean relativeRedirectsAllowed;
  private final int socketTimeout;
  private final boolean staleConnectionCheckEnabled;
  private final Collection<String> targetPreferredAuthSchemes;
  
  protected RequestConfig()
  {
    this(false, null, null, false, null, false, false, false, 0, false, null, null, 0, 0, 0, true);
  }
  
  RequestConfig(boolean paramBoolean1, HttpHost paramHttpHost, InetAddress paramInetAddress, boolean paramBoolean2, String paramString, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, int paramInt1, boolean paramBoolean6, Collection<String> paramCollection1, Collection<String> paramCollection2, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean7)
  {
    this.expectContinueEnabled = paramBoolean1;
    this.proxy = paramHttpHost;
    this.localAddress = paramInetAddress;
    this.staleConnectionCheckEnabled = paramBoolean2;
    this.cookieSpec = paramString;
    this.redirectsEnabled = paramBoolean3;
    this.relativeRedirectsAllowed = paramBoolean4;
    this.circularRedirectsAllowed = paramBoolean5;
    this.maxRedirects = paramInt1;
    this.authenticationEnabled = paramBoolean6;
    this.targetPreferredAuthSchemes = paramCollection1;
    this.proxyPreferredAuthSchemes = paramCollection2;
    this.connectionRequestTimeout = paramInt2;
    this.connectTimeout = paramInt3;
    this.socketTimeout = paramInt4;
    this.contentCompressionEnabled = paramBoolean7;
  }
  
  public static RequestConfig.Builder copy(RequestConfig paramRequestConfig)
  {
    return new RequestConfig.Builder().setExpectContinueEnabled(paramRequestConfig.isExpectContinueEnabled()).setProxy(paramRequestConfig.getProxy()).setLocalAddress(paramRequestConfig.getLocalAddress()).setStaleConnectionCheckEnabled(paramRequestConfig.isStaleConnectionCheckEnabled()).setCookieSpec(paramRequestConfig.getCookieSpec()).setRedirectsEnabled(paramRequestConfig.isRedirectsEnabled()).setRelativeRedirectsAllowed(paramRequestConfig.isRelativeRedirectsAllowed()).setCircularRedirectsAllowed(paramRequestConfig.isCircularRedirectsAllowed()).setMaxRedirects(paramRequestConfig.getMaxRedirects()).setAuthenticationEnabled(paramRequestConfig.isAuthenticationEnabled()).setTargetPreferredAuthSchemes(paramRequestConfig.getTargetPreferredAuthSchemes()).setProxyPreferredAuthSchemes(paramRequestConfig.getProxyPreferredAuthSchemes()).setConnectionRequestTimeout(paramRequestConfig.getConnectionRequestTimeout()).setConnectTimeout(paramRequestConfig.getConnectTimeout()).setSocketTimeout(paramRequestConfig.getSocketTimeout()).setDecompressionEnabled(paramRequestConfig.isDecompressionEnabled()).setContentCompressionEnabled(paramRequestConfig.isContentCompressionEnabled());
  }
  
  public static RequestConfig.Builder custom()
  {
    return new RequestConfig.Builder();
  }
  
  protected RequestConfig clone()
  {
    return (RequestConfig)super.clone();
  }
  
  public int getConnectTimeout()
  {
    return this.connectTimeout;
  }
  
  public int getConnectionRequestTimeout()
  {
    return this.connectionRequestTimeout;
  }
  
  public String getCookieSpec()
  {
    return this.cookieSpec;
  }
  
  public InetAddress getLocalAddress()
  {
    return this.localAddress;
  }
  
  public int getMaxRedirects()
  {
    return this.maxRedirects;
  }
  
  public HttpHost getProxy()
  {
    return this.proxy;
  }
  
  public Collection<String> getProxyPreferredAuthSchemes()
  {
    return this.proxyPreferredAuthSchemes;
  }
  
  public int getSocketTimeout()
  {
    return this.socketTimeout;
  }
  
  public Collection<String> getTargetPreferredAuthSchemes()
  {
    return this.targetPreferredAuthSchemes;
  }
  
  public boolean isAuthenticationEnabled()
  {
    return this.authenticationEnabled;
  }
  
  public boolean isCircularRedirectsAllowed()
  {
    return this.circularRedirectsAllowed;
  }
  
  public boolean isContentCompressionEnabled()
  {
    return this.contentCompressionEnabled;
  }
  
  @Deprecated
  public boolean isDecompressionEnabled()
  {
    return this.contentCompressionEnabled;
  }
  
  public boolean isExpectContinueEnabled()
  {
    return this.expectContinueEnabled;
  }
  
  public boolean isRedirectsEnabled()
  {
    return this.redirectsEnabled;
  }
  
  public boolean isRelativeRedirectsAllowed()
  {
    return this.relativeRedirectsAllowed;
  }
  
  @Deprecated
  public boolean isStaleConnectionCheckEnabled()
  {
    return this.staleConnectionCheckEnabled;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("expectContinueEnabled=").append(this.expectContinueEnabled);
    localStringBuilder.append(", proxy=").append(this.proxy);
    localStringBuilder.append(", localAddress=").append(this.localAddress);
    localStringBuilder.append(", cookieSpec=").append(this.cookieSpec);
    localStringBuilder.append(", redirectsEnabled=").append(this.redirectsEnabled);
    localStringBuilder.append(", relativeRedirectsAllowed=").append(this.relativeRedirectsAllowed);
    localStringBuilder.append(", maxRedirects=").append(this.maxRedirects);
    localStringBuilder.append(", circularRedirectsAllowed=").append(this.circularRedirectsAllowed);
    localStringBuilder.append(", authenticationEnabled=").append(this.authenticationEnabled);
    localStringBuilder.append(", targetPreferredAuthSchemes=").append(this.targetPreferredAuthSchemes);
    localStringBuilder.append(", proxyPreferredAuthSchemes=").append(this.proxyPreferredAuthSchemes);
    localStringBuilder.append(", connectionRequestTimeout=").append(this.connectionRequestTimeout);
    localStringBuilder.append(", connectTimeout=").append(this.connectTimeout);
    localStringBuilder.append(", socketTimeout=").append(this.socketTimeout);
    localStringBuilder.append(", contentCompressionEnabled=").append(this.contentCompressionEnabled);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\config\RequestConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */