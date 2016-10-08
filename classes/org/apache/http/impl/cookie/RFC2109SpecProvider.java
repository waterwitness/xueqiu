package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.annotation.Obsolete;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.protocol.HttpContext;

@Immutable
@Obsolete
public class RFC2109SpecProvider
  implements CookieSpecProvider
{
  private volatile CookieSpec cookieSpec;
  private final boolean oneHeader;
  private final PublicSuffixMatcher publicSuffixMatcher;
  
  public RFC2109SpecProvider()
  {
    this(null, false);
  }
  
  public RFC2109SpecProvider(PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    this(paramPublicSuffixMatcher, false);
  }
  
  public RFC2109SpecProvider(PublicSuffixMatcher paramPublicSuffixMatcher, boolean paramBoolean)
  {
    this.oneHeader = paramBoolean;
    this.publicSuffixMatcher = paramPublicSuffixMatcher;
  }
  
  public CookieSpec create(HttpContext paramHttpContext)
  {
    if (this.cookieSpec == null) {}
    try
    {
      if (this.cookieSpec == null) {
        this.cookieSpec = new RFC2109Spec(this.oneHeader, new CommonCookieAttributeHandler[] { new RFC2109VersionHandler(), new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new RFC2109DomainHandler(), this.publicSuffixMatcher), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler() });
      }
      return this.cookieSpec;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\RFC2109SpecProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */