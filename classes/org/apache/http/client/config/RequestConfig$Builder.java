package org.apache.http.client.config;

import java.net.InetAddress;
import java.util.Collection;
import org.apache.http.HttpHost;

public class RequestConfig$Builder
{
  private boolean authenticationEnabled = true;
  private boolean circularRedirectsAllowed;
  private int connectTimeout = -1;
  private int connectionRequestTimeout = -1;
  private boolean contentCompressionEnabled = true;
  private String cookieSpec;
  private boolean expectContinueEnabled;
  private InetAddress localAddress;
  private int maxRedirects = 50;
  private HttpHost proxy;
  private Collection<String> proxyPreferredAuthSchemes;
  private boolean redirectsEnabled = true;
  private boolean relativeRedirectsAllowed = true;
  private int socketTimeout = -1;
  private boolean staleConnectionCheckEnabled = false;
  private Collection<String> targetPreferredAuthSchemes;
  
  public RequestConfig build()
  {
    return new RequestConfig(this.expectContinueEnabled, this.proxy, this.localAddress, this.staleConnectionCheckEnabled, this.cookieSpec, this.redirectsEnabled, this.relativeRedirectsAllowed, this.circularRedirectsAllowed, this.maxRedirects, this.authenticationEnabled, this.targetPreferredAuthSchemes, this.proxyPreferredAuthSchemes, this.connectionRequestTimeout, this.connectTimeout, this.socketTimeout, this.contentCompressionEnabled);
  }
  
  public Builder setAuthenticationEnabled(boolean paramBoolean)
  {
    this.authenticationEnabled = paramBoolean;
    return this;
  }
  
  public Builder setCircularRedirectsAllowed(boolean paramBoolean)
  {
    this.circularRedirectsAllowed = paramBoolean;
    return this;
  }
  
  public Builder setConnectTimeout(int paramInt)
  {
    this.connectTimeout = paramInt;
    return this;
  }
  
  public Builder setConnectionRequestTimeout(int paramInt)
  {
    this.connectionRequestTimeout = paramInt;
    return this;
  }
  
  public Builder setContentCompressionEnabled(boolean paramBoolean)
  {
    this.contentCompressionEnabled = paramBoolean;
    return this;
  }
  
  public Builder setCookieSpec(String paramString)
  {
    this.cookieSpec = paramString;
    return this;
  }
  
  @Deprecated
  public Builder setDecompressionEnabled(boolean paramBoolean)
  {
    this.contentCompressionEnabled = paramBoolean;
    return this;
  }
  
  public Builder setExpectContinueEnabled(boolean paramBoolean)
  {
    this.expectContinueEnabled = paramBoolean;
    return this;
  }
  
  public Builder setLocalAddress(InetAddress paramInetAddress)
  {
    this.localAddress = paramInetAddress;
    return this;
  }
  
  public Builder setMaxRedirects(int paramInt)
  {
    this.maxRedirects = paramInt;
    return this;
  }
  
  public Builder setProxy(HttpHost paramHttpHost)
  {
    this.proxy = paramHttpHost;
    return this;
  }
  
  public Builder setProxyPreferredAuthSchemes(Collection<String> paramCollection)
  {
    this.proxyPreferredAuthSchemes = paramCollection;
    return this;
  }
  
  public Builder setRedirectsEnabled(boolean paramBoolean)
  {
    this.redirectsEnabled = paramBoolean;
    return this;
  }
  
  public Builder setRelativeRedirectsAllowed(boolean paramBoolean)
  {
    this.relativeRedirectsAllowed = paramBoolean;
    return this;
  }
  
  public Builder setSocketTimeout(int paramInt)
  {
    this.socketTimeout = paramInt;
    return this;
  }
  
  @Deprecated
  public Builder setStaleConnectionCheckEnabled(boolean paramBoolean)
  {
    this.staleConnectionCheckEnabled = paramBoolean;
    return this;
  }
  
  public Builder setTargetPreferredAuthSchemes(Collection<String> paramCollection)
  {
    this.targetPreferredAuthSchemes = paramCollection;
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\config\RequestConfig$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */