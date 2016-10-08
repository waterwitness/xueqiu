package org.apache.http.client.protocol;

import java.util.Iterator;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Immutable
public class ResponseProcessCookies
  implements HttpResponseInterceptor
{
  private final Log log = LogFactory.getLog(getClass());
  
  private static String formatCooke(Cookie paramCookie)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramCookie.getName());
    localStringBuilder.append("=\"");
    String str2 = paramCookie.getValue();
    if (str2 != null)
    {
      String str1 = str2;
      if (str2.length() > 100) {
        str1 = str2.substring(0, 100) + "...";
      }
      localStringBuilder.append(str1);
    }
    localStringBuilder.append("\"");
    localStringBuilder.append(", version:");
    localStringBuilder.append(Integer.toString(paramCookie.getVersion()));
    localStringBuilder.append(", domain:");
    localStringBuilder.append(paramCookie.getDomain());
    localStringBuilder.append(", path:");
    localStringBuilder.append(paramCookie.getPath());
    localStringBuilder.append(", expiry:");
    localStringBuilder.append(paramCookie.getExpiryDate());
    return localStringBuilder.toString();
  }
  
  private void processCookies(HeaderIterator paramHeaderIterator, CookieSpec paramCookieSpec, CookieOrigin paramCookieOrigin, CookieStore paramCookieStore)
  {
    while (paramHeaderIterator.hasNext())
    {
      Header localHeader = paramHeaderIterator.nextHeader();
      try
      {
        Iterator localIterator = paramCookieSpec.parse(localHeader, paramCookieOrigin).iterator();
        while (localIterator.hasNext())
        {
          Cookie localCookie = (Cookie)localIterator.next();
          try
          {
            paramCookieSpec.validate(localCookie, paramCookieOrigin);
            paramCookieStore.addCookie(localCookie);
            if (!this.log.isDebugEnabled()) {
              continue;
            }
            this.log.debug("Cookie accepted [" + formatCooke(localCookie) + "]");
          }
          catch (MalformedCookieException localMalformedCookieException2) {}
          if (this.log.isWarnEnabled()) {
            this.log.warn("Cookie rejected [" + formatCooke(localCookie) + "] " + localMalformedCookieException2.getMessage());
          }
        }
        if (!this.log.isWarnEnabled()) {
          continue;
        }
      }
      catch (MalformedCookieException localMalformedCookieException1) {}
      this.log.warn("Invalid cookie header: \"" + localHeader + "\". " + localMalformedCookieException1.getMessage());
    }
  }
  
  public void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpResponse, "HTTP request");
    Args.notNull(paramHttpContext, "HTTP context");
    Object localObject = HttpClientContext.adapt(paramHttpContext);
    paramHttpContext = ((HttpClientContext)localObject).getCookieSpec();
    if (paramHttpContext == null) {
      this.log.debug("Cookie spec not specified in HTTP context");
    }
    CookieStore localCookieStore;
    do
    {
      return;
      localCookieStore = ((HttpClientContext)localObject).getCookieStore();
      if (localCookieStore == null)
      {
        this.log.debug("Cookie store not specified in HTTP context");
        return;
      }
      localObject = ((HttpClientContext)localObject).getCookieOrigin();
      if (localObject == null)
      {
        this.log.debug("Cookie origin not specified in HTTP context");
        return;
      }
      processCookies(paramHttpResponse.headerIterator("Set-Cookie"), paramHttpContext, (CookieOrigin)localObject, localCookieStore);
    } while (paramHttpContext.getVersion() <= 0);
    processCookies(paramHttpResponse.headerIterator("Set-Cookie2"), paramHttpContext, (CookieOrigin)localObject, localCookieStore);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\protocol\ResponseProcessCookies.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */