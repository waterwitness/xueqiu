package org.apache.http.impl.cookie;

import java.util.Collection;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.SetCookie;

@Deprecated
public class PublicSuffixFilter
  implements CookieAttributeHandler
{
  private Collection<String> exceptions;
  private PublicSuffixMatcher matcher;
  private Collection<String> suffixes;
  private final CookieAttributeHandler wrapped;
  
  public PublicSuffixFilter(CookieAttributeHandler paramCookieAttributeHandler)
  {
    this.wrapped = paramCookieAttributeHandler;
  }
  
  private boolean isForPublicSuffix(Cookie paramCookie)
  {
    if (this.matcher == null) {
      this.matcher = new PublicSuffixMatcher(this.suffixes, this.exceptions);
    }
    return this.matcher.matches(paramCookie.getDomain());
  }
  
  public boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    if (isForPublicSuffix(paramCookie)) {
      return false;
    }
    return this.wrapped.match(paramCookie, paramCookieOrigin);
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    this.wrapped.parse(paramSetCookie, paramString);
  }
  
  public void setExceptions(Collection<String> paramCollection)
  {
    this.exceptions = paramCollection;
    this.matcher = null;
  }
  
  public void setPublicSuffixes(Collection<String> paramCollection)
  {
    this.suffixes = paramCollection;
    this.matcher = null;
  }
  
  public void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    this.wrapped.validate(paramCookie, paramCookieOrigin);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\PublicSuffixFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */