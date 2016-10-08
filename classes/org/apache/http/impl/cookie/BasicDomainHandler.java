package org.apache.http.impl.cookie;

import java.util.Locale;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

@Immutable
public class BasicDomainHandler
  implements CommonCookieAttributeHandler
{
  static boolean domainMatch(String paramString1, String paramString2)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((InetAddressUtils.isIPv4Address(paramString2)) || (InetAddressUtils.isIPv6Address(paramString2))) {
      bool1 = false;
    }
    int i;
    do
    {
      do
      {
        return bool1;
        String str = paramString1;
        if (paramString1.startsWith(".")) {
          str = paramString1.substring(1);
        }
        if (!paramString2.endsWith(str)) {
          break;
        }
        i = paramString2.length() - str.length();
        bool1 = bool2;
      } while (i == 0);
      if (i <= 1) {
        break;
      }
      bool1 = bool2;
    } while (paramString2.charAt(i - 1) == '.');
    return false;
  }
  
  public String getAttributeName()
  {
    return "domain";
  }
  
  public boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    String str2 = paramCookieOrigin.getHost();
    String str1 = paramCookie.getDomain();
    if (str1 == null) {
      return false;
    }
    paramCookieOrigin = str1;
    if (str1.startsWith(".")) {
      paramCookieOrigin = str1.substring(1);
    }
    paramCookieOrigin = paramCookieOrigin.toLowerCase(Locale.ROOT);
    if (str2.equals(paramCookieOrigin)) {
      return true;
    }
    if (((paramCookie instanceof ClientCookie)) && (((ClientCookie)paramCookie).containsAttribute("domain"))) {
      return domainMatch(paramCookieOrigin, str2);
    }
    return false;
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    Args.notNull(paramSetCookie, "Cookie");
    if (TextUtils.isBlank(paramString)) {
      throw new MalformedCookieException("Blank or null value for domain attribute");
    }
    if (paramString.endsWith(".")) {
      return;
    }
    String str = paramString;
    if (paramString.startsWith(".")) {
      str = paramString.substring(1);
    }
    paramSetCookie.setDomain(str.toLowerCase(Locale.ROOT));
  }
  
  public void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    paramCookieOrigin = paramCookieOrigin.getHost();
    paramCookie = paramCookie.getDomain();
    if (paramCookie == null) {
      throw new CookieRestrictionViolationException("Cookie 'domain' may not be null");
    }
    if ((!paramCookieOrigin.equals(paramCookie)) && (!domainMatch(paramCookie, paramCookieOrigin))) {
      throw new CookieRestrictionViolationException("Illegal 'domain' attribute \"" + paramCookie + "\". Domain of origin: \"" + paramCookieOrigin + "\"");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\BasicDomainHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */