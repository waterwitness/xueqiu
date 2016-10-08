package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

@Immutable
public class BasicPathHandler
  implements CommonCookieAttributeHandler
{
  static boolean pathMatch(String paramString1, String paramString2)
  {
    String str = paramString2;
    if (paramString2 == null) {
      str = "/";
    }
    paramString2 = str;
    if (str.length() > 1)
    {
      paramString2 = str;
      if (str.endsWith("/")) {
        paramString2 = str.substring(0, str.length() - 1);
      }
    }
    if (paramString1.startsWith(paramString2))
    {
      if (paramString2.equals("/")) {}
      while ((paramString1.length() == paramString2.length()) || (paramString1.charAt(paramString2.length()) == '/')) {
        return true;
      }
    }
    return false;
  }
  
  public String getAttributeName()
  {
    return "path";
  }
  
  public boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    return pathMatch(paramCookieOrigin.getPath(), paramCookie.getPath());
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    Args.notNull(paramSetCookie, "Cookie");
    if (!TextUtils.isBlank(paramString)) {}
    for (;;)
    {
      paramSetCookie.setPath(paramString);
      return;
      paramString = "/";
    }
  }
  
  public void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    if (!match(paramCookie, paramCookieOrigin)) {
      throw new CookieRestrictionViolationException("Illegal 'path' attribute \"" + paramCookie.getPath() + "\". Path of origin: \"" + paramCookieOrigin.getPath() + "\"");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\BasicPathHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */