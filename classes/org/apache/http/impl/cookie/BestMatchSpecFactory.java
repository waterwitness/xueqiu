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
public class BestMatchSpecFactory
  implements CookieSpecFactory, CookieSpecProvider
{
  private final CookieSpec cookieSpec;
  
  public BestMatchSpecFactory()
  {
    this(null, false);
  }
  
  public BestMatchSpecFactory(String[] paramArrayOfString, boolean paramBoolean)
  {
    this.cookieSpec = new BestMatchSpec(paramArrayOfString, paramBoolean);
  }
  
  public CookieSpec create(HttpContext paramHttpContext)
  {
    return this.cookieSpec;
  }
  
  public CookieSpec newInstance(HttpParams paramHttpParams)
  {
    if (paramHttpParams != null)
    {
      localObject = (Collection)paramHttpParams.getParameter("http.protocol.cookie-datepatterns");
      if (localObject == null) {
        break label65;
      }
    }
    label65:
    for (Object localObject = (String[])((Collection)localObject).toArray(new String[((Collection)localObject).size()]);; localObject = null)
    {
      return new BestMatchSpec((String[])localObject, paramHttpParams.getBooleanParameter("http.protocol.single-cookie-header", false));
      return new BestMatchSpec();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\BestMatchSpecFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */