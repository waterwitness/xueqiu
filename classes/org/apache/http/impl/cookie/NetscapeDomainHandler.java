package org.apache.http.impl.cookie;

import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

@Immutable
public class NetscapeDomainHandler
  extends BasicDomainHandler
{
  private static boolean isSpecialDomain(String paramString)
  {
    paramString = paramString.toUpperCase(Locale.ROOT);
    return (paramString.endsWith(".COM")) || (paramString.endsWith(".EDU")) || (paramString.endsWith(".NET")) || (paramString.endsWith(".GOV")) || (paramString.endsWith(".MIL")) || (paramString.endsWith(".ORG")) || (paramString.endsWith(".INT"));
  }
  
  public String getAttributeName()
  {
    return "domain";
  }
  
  public boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    paramCookieOrigin = paramCookieOrigin.getHost();
    paramCookie = paramCookie.getDomain();
    if (paramCookie == null) {
      return false;
    }
    return paramCookieOrigin.endsWith(paramCookie);
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    Args.notNull(paramSetCookie, "Cookie");
    if (TextUtils.isBlank(paramString)) {
      throw new MalformedCookieException("Blank or null value for domain attribute");
    }
    paramSetCookie.setDomain(paramString);
  }
  
  public void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    paramCookieOrigin = paramCookieOrigin.getHost();
    paramCookie = paramCookie.getDomain();
    if ((!paramCookieOrigin.equals(paramCookie)) && (!BasicDomainHandler.domainMatch(paramCookie, paramCookieOrigin))) {
      throw new CookieRestrictionViolationException("Illegal domain attribute \"" + paramCookie + "\". Domain of origin: \"" + paramCookieOrigin + "\"");
    }
    if (paramCookieOrigin.contains("."))
    {
      int i = new StringTokenizer(paramCookie, ".").countTokens();
      if (isSpecialDomain(paramCookie))
      {
        if (i < 2) {
          throw new CookieRestrictionViolationException("Domain attribute \"" + paramCookie + "\" violates the Netscape cookie specification for special domains");
        }
      }
      else if (i < 3) {
        throw new CookieRestrictionViolationException("Domain attribute \"" + paramCookie + "\" violates the Netscape cookie specification");
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\NetscapeDomainHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */