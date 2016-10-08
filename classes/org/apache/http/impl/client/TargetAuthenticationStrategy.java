package org.apache.http.impl.client;

import java.util.Collection;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.config.RequestConfig;

@Immutable
public class TargetAuthenticationStrategy
  extends AuthenticationStrategyImpl
{
  public static final TargetAuthenticationStrategy INSTANCE = new TargetAuthenticationStrategy();
  
  public TargetAuthenticationStrategy()
  {
    super(401, "WWW-Authenticate");
  }
  
  Collection<String> getPreferredAuthSchemes(RequestConfig paramRequestConfig)
  {
    return paramRequestConfig.getTargetPreferredAuthSchemes();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\TargetAuthenticationStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */