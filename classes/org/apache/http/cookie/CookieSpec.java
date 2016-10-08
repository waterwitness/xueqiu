package org.apache.http.cookie;

import java.util.List;
import org.apache.http.Header;
import org.apache.http.annotation.Obsolete;

public abstract interface CookieSpec
{
  public abstract List<Header> formatCookies(List<Cookie> paramList);
  
  @Obsolete
  public abstract int getVersion();
  
  @Obsolete
  public abstract Header getVersionHeader();
  
  public abstract boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin);
  
  public abstract List<Cookie> parse(Header paramHeader, CookieOrigin paramCookieOrigin);
  
  public abstract void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\cookie\CookieSpec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */