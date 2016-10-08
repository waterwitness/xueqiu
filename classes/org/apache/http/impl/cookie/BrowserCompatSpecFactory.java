package org.apache.http.impl.cookie;

import java.util.Collection;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecFactory;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

@Deprecated
@Immutable
public class BrowserCompatSpecFactory
  implements CookieSpecFactory, CookieSpecProvider
{
  private final CookieSpec cookieSpec;
  private final BrowserCompatSpecFactory.SecurityLevel securityLevel;
  
  public BrowserCompatSpecFactory()
  {
    this(null, BrowserCompatSpecFactory.SecurityLevel.SECURITYLEVEL_DEFAULT);
  }
  
  public BrowserCompatSpecFactory(String[] paramArrayOfString)
  {
    this(null, BrowserCompatSpecFactory.SecurityLevel.SECURITYLEVEL_DEFAULT);
  }
  
  public BrowserCompatSpecFactory(String[] paramArrayOfString, BrowserCompatSpecFactory.SecurityLevel paramSecurityLevel)
  {
    this.securityLevel = paramSecurityLevel;
    this.cookieSpec = new BrowserCompatSpec(paramArrayOfString, paramSecurityLevel);
  }
  
  public CookieSpec create(HttpContext paramHttpContext)
  {
    return this.cookieSpec;
  }
  
  public CookieSpec newInstance(HttpParams paramHttpParams)
  {
    if (paramHttpParams != null)
    {
      paramHttpParams = (Collection)paramHttpParams.getParameter("http.protocol.cookie-datepatterns");
      if (paramHttpParams == null) {
        break label65;
      }
    }
    label65:
    for (paramHttpParams = (String[])paramHttpParams.toArray(new String[paramHttpParams.size()]);; paramHttpParams = null)
    {
      return new BrowserCompatSpec(paramHttpParams, this.securityLevel);
      return new BrowserCompatSpec(null, this.securityLevel);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\BrowserCompatSpecFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */