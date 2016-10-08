package org.apache.http.impl.cookie;

import java.util.Iterator;
import java.util.List;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie2;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@ThreadSafe
public class DefaultCookieSpec
  implements CookieSpec
{
  private final NetscapeDraftSpec netscapeDraft;
  private final RFC2109Spec obsoleteStrict;
  private final RFC2965Spec strict;
  
  public DefaultCookieSpec()
  {
    this(null, false);
  }
  
  DefaultCookieSpec(RFC2965Spec paramRFC2965Spec, RFC2109Spec paramRFC2109Spec, NetscapeDraftSpec paramNetscapeDraftSpec)
  {
    this.strict = paramRFC2965Spec;
    this.obsoleteStrict = paramRFC2109Spec;
    this.netscapeDraft = paramNetscapeDraftSpec;
  }
  
  public DefaultCookieSpec(String[] paramArrayOfString, boolean paramBoolean)
  {
    this.strict = new RFC2965Spec(paramBoolean, new CommonCookieAttributeHandler[] { new RFC2965VersionAttributeHandler(), new BasicPathHandler(), new RFC2965DomainAttributeHandler(), new RFC2965PortAttributeHandler(), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler(), new RFC2965CommentUrlAttributeHandler(), new RFC2965DiscardAttributeHandler() });
    this.obsoleteStrict = new RFC2109Spec(paramBoolean, new CommonCookieAttributeHandler[] { new RFC2109VersionHandler(), new BasicPathHandler(), new RFC2109DomainHandler(), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler() });
    BasicDomainHandler localBasicDomainHandler = new BasicDomainHandler();
    BasicPathHandler localBasicPathHandler = new BasicPathHandler();
    BasicSecureHandler localBasicSecureHandler = new BasicSecureHandler();
    BasicCommentHandler localBasicCommentHandler = new BasicCommentHandler();
    if (paramArrayOfString != null) {
      paramArrayOfString = (String[])paramArrayOfString.clone();
    }
    for (;;)
    {
      this.netscapeDraft = new NetscapeDraftSpec(new CommonCookieAttributeHandler[] { localBasicDomainHandler, localBasicPathHandler, localBasicSecureHandler, localBasicCommentHandler, new BasicExpiresHandler(paramArrayOfString) });
      return;
      paramArrayOfString = new String[1];
      paramArrayOfString[0] = "EEE, dd-MMM-yy HH:mm:ss z";
    }
  }
  
  public List<Header> formatCookies(List<Cookie> paramList)
  {
    Args.notNull(paramList, "List of cookies");
    Iterator localIterator = paramList.iterator();
    int i = Integer.MAX_VALUE;
    int j = 1;
    if (localIterator.hasNext())
    {
      Cookie localCookie = (Cookie)localIterator.next();
      if (!(localCookie instanceof SetCookie2)) {
        j = 0;
      }
      if (localCookie.getVersion() >= i) {
        break label109;
      }
      i = localCookie.getVersion();
    }
    label109:
    for (;;)
    {
      break;
      if (i > 0)
      {
        if (j != 0) {
          return this.strict.formatCookies(paramList);
        }
        return this.obsoleteStrict.formatCookies(paramList);
      }
      return this.netscapeDraft.formatCookies(paramList);
    }
  }
  
  public int getVersion()
  {
    return this.strict.getVersion();
  }
  
  public Header getVersionHeader()
  {
    return null;
  }
  
  public boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    if (paramCookie.getVersion() > 0)
    {
      if ((paramCookie instanceof SetCookie2)) {
        return this.strict.match(paramCookie, paramCookieOrigin);
      }
      return this.obsoleteStrict.match(paramCookie, paramCookieOrigin);
    }
    return this.netscapeDraft.match(paramCookie, paramCookieOrigin);
  }
  
  public List<Cookie> parse(Header paramHeader, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramHeader, "Header");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    Object localObject = paramHeader.getElements();
    int m = localObject.length;
    int i = 0;
    int j = 0;
    int k = 0;
    NetscapeDraftHeaderParser localNetscapeDraftHeaderParser;
    while (i < m)
    {
      localNetscapeDraftHeaderParser = localObject[i];
      if (localNetscapeDraftHeaderParser.getParameterByName("version") != null) {
        k = 1;
      }
      if (localNetscapeDraftHeaderParser.getParameterByName("expires") != null) {
        j = 1;
      }
      i += 1;
    }
    if ((j != 0) || (k == 0))
    {
      localNetscapeDraftHeaderParser = NetscapeDraftHeaderParser.DEFAULT;
      if ((paramHeader instanceof FormattedHeader)) {
        localObject = ((FormattedHeader)paramHeader).getBuffer();
      }
      for (paramHeader = new ParserCursor(((FormattedHeader)paramHeader).getValuePos(), ((CharArrayBuffer)localObject).length());; paramHeader = new ParserCursor(0, ((CharArrayBuffer)localObject).length()))
      {
        paramHeader = localNetscapeDraftHeaderParser.parseHeader((CharArrayBuffer)localObject, paramHeader);
        return this.netscapeDraft.parse(new HeaderElement[] { paramHeader }, paramCookieOrigin);
        paramHeader = paramHeader.getValue();
        if (paramHeader == null) {
          throw new MalformedCookieException("Header value is null");
        }
        localObject = new CharArrayBuffer(paramHeader.length());
        ((CharArrayBuffer)localObject).append(paramHeader);
      }
    }
    if ("Set-Cookie2".equals(paramHeader.getName())) {
      return this.strict.parse((HeaderElement[])localObject, paramCookieOrigin);
    }
    return this.obsoleteStrict.parse((HeaderElement[])localObject, paramCookieOrigin);
  }
  
  public String toString()
  {
    return "default";
  }
  
  public void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    if (paramCookie.getVersion() > 0)
    {
      if ((paramCookie instanceof SetCookie2))
      {
        this.strict.validate(paramCookie, paramCookieOrigin);
        return;
      }
      this.obsoleteStrict.validate(paramCookie, paramCookieOrigin);
      return;
    }
    this.netscapeDraft.validate(paramCookie, paramCookieOrigin);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\DefaultCookieSpec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */