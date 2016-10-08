package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;

@Immutable
public class RFC2109VersionHandler
  extends AbstractCookieAttributeHandler
  implements CommonCookieAttributeHandler
{
  public String getAttributeName()
  {
    return "version";
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    Args.notNull(paramSetCookie, "Cookie");
    if (paramString == null) {
      throw new MalformedCookieException("Missing value for version attribute");
    }
    if (paramString.trim().isEmpty()) {
      throw new MalformedCookieException("Blank value for version attribute");
    }
    try
    {
      paramSetCookie.setVersion(Integer.parseInt(paramString));
      return;
    }
    catch (NumberFormatException paramSetCookie)
    {
      throw new MalformedCookieException("Invalid version: " + paramSetCookie.getMessage());
    }
  }
  
  public void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    if (paramCookie.getVersion() < 0) {
      throw new CookieRestrictionViolationException("Cookie version may not be negative");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\RFC2109VersionHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */