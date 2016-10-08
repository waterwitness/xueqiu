package org.apache.http.impl.client;

import java.util.Collection;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.config.RequestConfig;

@Immutable
public class ProxyAuthenticationStrategy
  extends AuthenticationStrategyImpl
{
  public static final ProxyAuthenticationStrategy INSTANCE = new ProxyAuthenticationStrategy();
  
  public ProxyAuthenticationStrategy()
  {
    super(407, "Proxy-Authenticate");
  }
  
  Collection<String> getPreferredAuthSchemes(RequestConfig paramRequestConfig)
  {
    return paramRequestConfig.getProxyPreferredAuthSchemes();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\ProxyAuthenticationStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */