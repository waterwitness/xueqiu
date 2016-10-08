package org.apache.http.impl.cookie;

import org.apache.http.annotation.ThreadSafe;
import org.apache.http.cookie.CommonCookieAttributeHandler;

@ThreadSafe
public class RFC6265LaxSpec
  extends RFC6265CookieSpecBase
{
  public RFC6265LaxSpec()
  {
    super(new CommonCookieAttributeHandler[] { new BasicPathHandler(), new BasicDomainHandler(), new LaxMaxAgeHandler(), new BasicSecureHandler(), new LaxExpiresHandler() });
  }
  
  RFC6265LaxSpec(CommonCookieAttributeHandler... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public String toString()
  {
    return "rfc6265-lax";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\RFC6265LaxSpec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */