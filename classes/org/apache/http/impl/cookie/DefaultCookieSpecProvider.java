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
public class DefaultCookieSpecProvider
  implements CookieSpecProvider
{
  private final DefaultCookieSpecProvider.CompatibilityLevel compatibilityLevel;
  private volatile CookieSpec cookieSpec;
  private final String[] datepatterns;
  private final boolean oneHeader;
  private final PublicSuffixMatcher publicSuffixMatcher;
  
  public DefaultCookieSpecProvider()
  {
    this(DefaultCookieSpecProvider.CompatibilityLevel.DEFAULT, null, null, false);
  }
  
  public DefaultCookieSpecProvider(PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    this(DefaultCookieSpecProvider.CompatibilityLevel.DEFAULT, paramPublicSuffixMatcher, null, false);
  }
  
  public DefaultCookieSpecProvider(DefaultCookieSpecProvider.CompatibilityLevel paramCompatibilityLevel, PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    this(paramCompatibilityLevel, paramPublicSuffixMatcher, null, false);
  }
  
  public DefaultCookieSpecProvider(DefaultCookieSpecProvider.CompatibilityLevel paramCompatibilityLevel, PublicSuffixMatcher paramPublicSuffixMatcher, String[] paramArrayOfString, boolean paramBoolean)
  {
    if (paramCompatibilityLevel != null) {}
    for (;;)
    {
      this.compatibilityLevel = paramCompatibilityLevel;
      this.publicSuffixMatcher = paramPublicSuffixMatcher;
      this.datepatterns = paramArrayOfString;
      this.oneHeader = paramBoolean;
      return;
      paramCompatibilityLevel = DefaultCookieSpecProvider.CompatibilityLevel.DEFAULT;
    }
  }
  
  public CookieSpec create(HttpContext paramHttpContext)
  {
    if (this.cookieSpec == null) {}
    for (;;)
    {
      String[] arrayOfString;
      try
      {
        if (this.cookieSpec == null)
        {
          RFC2965Spec localRFC2965Spec = new RFC2965Spec(this.oneHeader, new CommonCookieAttributeHandler[] { new RFC2965VersionAttributeHandler(), new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new RFC2965DomainAttributeHandler(), this.publicSuffixMatcher), new RFC2965PortAttributeHandler(), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler(), new RFC2965CommentUrlAttributeHandler(), new RFC2965DiscardAttributeHandler() });
          RFC2109Spec localRFC2109Spec = new RFC2109Spec(this.oneHeader, new CommonCookieAttributeHandler[] { new RFC2109VersionHandler(), new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new RFC2109DomainHandler(), this.publicSuffixMatcher), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler() });
          CommonCookieAttributeHandler localCommonCookieAttributeHandler = PublicSuffixDomainFilter.decorate(new BasicDomainHandler(), this.publicSuffixMatcher);
          if (this.compatibilityLevel == DefaultCookieSpecProvider.CompatibilityLevel.IE_MEDIUM_SECURITY)
          {
            paramHttpContext = new BasicPathHandler()
            {
              public void validate(Cookie paramAnonymousCookie, CookieOrigin paramAnonymousCookieOrigin) {}
            };
            BasicSecureHandler localBasicSecureHandler = new BasicSecureHandler();
            BasicCommentHandler localBasicCommentHandler = new BasicCommentHandler();
            if (this.datepatterns == null) {
              break label367;
            }
            arrayOfString = (String[])this.datepatterns.clone();
            this.cookieSpec = new DefaultCookieSpec(localRFC2965Spec, localRFC2109Spec, new NetscapeDraftSpec(new CommonCookieAttributeHandler[] { localCommonCookieAttributeHandler, paramHttpContext, localBasicSecureHandler, localBasicCommentHandler, new BasicExpiresHandler(arrayOfString) }));
          }
        }
        else
        {
          return this.cookieSpec;
        }
        paramHttpContext = new BasicPathHandler();
        continue;
        arrayOfString = new String[1];
      }
      finally {}
      label367:
      arrayOfString[0] = "EEE, dd-MMM-yy HH:mm:ss z";
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\DefaultCookieSpecProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */