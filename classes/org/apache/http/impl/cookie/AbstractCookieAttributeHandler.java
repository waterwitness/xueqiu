package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;

@Immutable
public abstract class AbstractCookieAttributeHandler
  implements CookieAttributeHandler
{
  public boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    return true;
  }
  
  public void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\AbstractCookieAttributeHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */