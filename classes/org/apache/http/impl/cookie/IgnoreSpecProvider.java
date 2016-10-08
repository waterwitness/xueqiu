package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.protocol.HttpContext;

@Immutable
public class IgnoreSpecProvider
  implements CookieSpecProvider
{
  private volatile CookieSpec cookieSpec;
  
  public CookieSpec create(HttpContext paramHttpContext)
  {
    if (this.cookieSpec == null) {}
    try
    {
      if (this.cookieSpec == null) {
        this.cookieSpec = new IgnoreSpec();
      }
      return this.cookieSpec;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\IgnoreSpecProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */