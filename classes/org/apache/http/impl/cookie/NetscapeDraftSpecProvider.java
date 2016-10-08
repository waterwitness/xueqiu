package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.annotation.Obsolete;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.protocol.HttpContext;

@Immutable
@Obsolete
public class NetscapeDraftSpecProvider
  implements CookieSpecProvider
{
  private volatile CookieSpec cookieSpec;
  private final String[] datepatterns;
  
  public NetscapeDraftSpecProvider()
  {
    this(null);
  }
  
  public NetscapeDraftSpecProvider(String[] paramArrayOfString)
  {
    this.datepatterns = paramArrayOfString;
  }
  
  public CookieSpec create(HttpContext paramHttpContext)
  {
    if (this.cookieSpec == null) {}
    try
    {
      if (this.cookieSpec == null) {
        this.cookieSpec = new NetscapeDraftSpec(this.datepatterns);
      }
      return this.cookieSpec;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\NetscapeDraftSpecProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */