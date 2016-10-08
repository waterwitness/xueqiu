package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;

@Immutable
public class BasicSecureHandler
  extends AbstractCookieAttributeHandler
  implements CommonCookieAttributeHandler
{
  public String getAttributeName()
  {
    return "secure";
  }
  
  public boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    return (!paramCookie.isSecure()) || (paramCookieOrigin.isSecure());
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    Args.notNull(paramSetCookie, "Cookie");
    paramSetCookie.setSecure(true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\BasicSecureHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */