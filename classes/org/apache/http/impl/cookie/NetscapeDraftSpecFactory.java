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
public class NetscapeDraftSpecFactory
  implements CookieSpecFactory, CookieSpecProvider
{
  private final CookieSpec cookieSpec;
  
  public NetscapeDraftSpecFactory()
  {
    this(null);
  }
  
  public NetscapeDraftSpecFactory(String[] paramArrayOfString)
  {
    this.cookieSpec = new NetscapeDraftSpec(paramArrayOfString);
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
        break label56;
      }
    }
    label56:
    for (paramHttpParams = (String[])paramHttpParams.toArray(new String[paramHttpParams.size()]);; paramHttpParams = null)
    {
      return new NetscapeDraftSpec(paramHttpParams);
      return new NetscapeDraftSpec();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\NetscapeDraftSpecFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */