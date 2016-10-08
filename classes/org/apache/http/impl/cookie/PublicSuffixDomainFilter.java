package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.conn.util.PublicSuffixList;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;

@Immutable
public class PublicSuffixDomainFilter
  implements CommonCookieAttributeHandler
{
  private final CommonCookieAttributeHandler handler;
  private final PublicSuffixMatcher publicSuffixMatcher;
  
  public PublicSuffixDomainFilter(CommonCookieAttributeHandler paramCommonCookieAttributeHandler, PublicSuffixList paramPublicSuffixList)
  {
    Args.notNull(paramCommonCookieAttributeHandler, "Cookie handler");
    Args.notNull(paramPublicSuffixList, "Public suffix list");
    this.handler = paramCommonCookieAttributeHandler;
    this.publicSuffixMatcher = new PublicSuffixMatcher(paramPublicSuffixList.getRules(), paramPublicSuffixList.getExceptions());
  }
  
  public PublicSuffixDomainFilter(CommonCookieAttributeHandler paramCommonCookieAttributeHandler, PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    this.handler = ((CommonCookieAttributeHandler)Args.notNull(paramCommonCookieAttributeHandler, "Cookie handler"));
    this.publicSuffixMatcher = ((PublicSuffixMatcher)Args.notNull(paramPublicSuffixMatcher, "Public suffix matcher"));
  }
  
  public static CommonCookieAttributeHandler decorate(CommonCookieAttributeHandler paramCommonCookieAttributeHandler, PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    Args.notNull(paramCommonCookieAttributeHandler, "Cookie attribute handler");
    Object localObject = paramCommonCookieAttributeHandler;
    if (paramPublicSuffixMatcher != null) {
      localObject = new PublicSuffixDomainFilter(paramCommonCookieAttributeHandler, paramPublicSuffixMatcher);
    }
    return (CommonCookieAttributeHandler)localObject;
  }
  
  public String getAttributeName()
  {
    return this.handler.getAttributeName();
  }
  
  public boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    String str = paramCookie.getDomain();
    if ((!str.equalsIgnoreCase("localhost")) && (this.publicSuffixMatcher.matches(str))) {
      return false;
    }
    return this.handler.match(paramCookie, paramCookieOrigin);
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    this.handler.parse(paramSetCookie, paramString);
  }
  
  public void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    this.handler.validate(paramCookie, paramCookieOrigin);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\PublicSuffixDomainFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */