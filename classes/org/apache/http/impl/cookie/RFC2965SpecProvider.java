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
public class RFC2965SpecProvider
  implements CookieSpecProvider
{
  private volatile CookieSpec cookieSpec;
  private final boolean oneHeader;
  private final PublicSuffixMatcher publicSuffixMatcher;
  
  public RFC2965SpecProvider()
  {
    this(null, false);
  }
  
  public RFC2965SpecProvider(PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    this(paramPublicSuffixMatcher, false);
  }
  
  public RFC2965SpecProvider(PublicSuffixMatcher paramPublicSuffixMatcher, boolean paramBoolean)
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
        this.cookieSpec = new RFC2965Spec(this.oneHeader, new CommonCookieAttributeHandler[] { new RFC2965VersionAttributeHandler(), new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new RFC2965DomainAttributeHandler(), this.publicSuffixMatcher), new RFC2965PortAttributeHandler(), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler(), new RFC2965CommentUrlAttributeHandler(), new RFC2965DiscardAttributeHandler() });
      }
      return this.cookieSpec;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\RFC2965SpecProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */