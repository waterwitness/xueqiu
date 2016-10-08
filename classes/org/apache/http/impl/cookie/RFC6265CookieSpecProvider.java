package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.protocol.HttpContext;

@Immutable
public class RFC6265CookieSpecProvider
  implements CookieSpecProvider
{
  private final RFC6265CookieSpecProvider.CompatibilityLevel compatibilityLevel;
  private volatile CookieSpec cookieSpec;
  private final PublicSuffixMatcher publicSuffixMatcher;
  
  public RFC6265CookieSpecProvider()
  {
    this(RFC6265CookieSpecProvider.CompatibilityLevel.RELAXED, null);
  }
  
  public RFC6265CookieSpecProvider(PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    this(RFC6265CookieSpecProvider.CompatibilityLevel.RELAXED, paramPublicSuffixMatcher);
  }
  
  public RFC6265CookieSpecProvider(RFC6265CookieSpecProvider.CompatibilityLevel paramCompatibilityLevel, PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    if (paramCompatibilityLevel != null) {}
    for (;;)
    {
      this.compatibilityLevel = paramCompatibilityLevel;
      this.publicSuffixMatcher = paramPublicSuffixMatcher;
      return;
      paramCompatibilityLevel = RFC6265CookieSpecProvider.CompatibilityLevel.RELAXED;
    }
  }
  
  public CookieSpec create(HttpContext paramHttpContext)
  {
    if (this.cookieSpec == null) {}
    for (;;)
    {
      try
      {
        if (this.cookieSpec == null) {}
        switch (2.$SwitchMap$org$apache$http$impl$cookie$RFC6265CookieSpecProvider$CompatibilityLevel[this.compatibilityLevel.ordinal()])
        {
        case 1: 
          this.cookieSpec = new RFC6265LaxSpec(new CommonCookieAttributeHandler[] { new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new BasicDomainHandler(), this.publicSuffixMatcher), new LaxMaxAgeHandler(), new BasicSecureHandler(), new LaxExpiresHandler() });
          return this.cookieSpec;
        }
      }
      finally {}
      this.cookieSpec = new RFC6265StrictSpec(new CommonCookieAttributeHandler[] { new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new BasicDomainHandler(), this.publicSuffixMatcher), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicExpiresHandler(RFC6265StrictSpec.DATE_PATTERNS) });
      continue;
      this.cookieSpec = new RFC6265LaxSpec(new CommonCookieAttributeHandler[] { new BasicPathHandler()new BasicDomainHandler
      {
        public void validate(Cookie paramAnonymousCookie, CookieOrigin paramAnonymousCookieOrigin) {}
      }, PublicSuffixDomainFilter.decorate(new BasicDomainHandler(), this.publicSuffixMatcher), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicExpiresHandler(RFC6265StrictSpec.DATE_PATTERNS) });
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\RFC6265CookieSpecProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */