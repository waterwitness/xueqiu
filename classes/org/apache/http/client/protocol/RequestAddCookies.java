package org.apache.http.client.protocol;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.RequestLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.CookieStore;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.config.Lookup;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

@Immutable
public class RequestAddCookies
  implements HttpRequestInterceptor
{
  private final Log log = LogFactory.getLog(getClass());
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    int j = 0;
    Args.notNull(paramHttpRequest, "HTTP request");
    Args.notNull(paramHttpContext, "HTTP context");
    if (paramHttpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT")) {
      return;
    }
    Object localObject4 = HttpClientContext.adapt(paramHttpContext);
    Object localObject3 = ((HttpClientContext)localObject4).getCookieStore();
    if (localObject3 == null)
    {
      this.log.debug("Cookie store not specified in HTTP context");
      return;
    }
    Object localObject5 = ((HttpClientContext)localObject4).getCookieSpecRegistry();
    if (localObject5 == null)
    {
      this.log.debug("CookieSpec registry not specified in HTTP context");
      return;
    }
    Object localObject7 = ((HttpClientContext)localObject4).getTargetHost();
    if (localObject7 == null)
    {
      this.log.debug("Target host not set in the context");
      return;
    }
    Object localObject6 = ((HttpClientContext)localObject4).getHttpRoute();
    if (localObject6 == null)
    {
      this.log.debug("Connection route not set in the context");
      return;
    }
    Object localObject2 = ((HttpClientContext)localObject4).getRequestConfig().getCookieSpec();
    if (localObject2 == null) {
      localObject2 = "default";
    }
    for (;;)
    {
      if (this.log.isDebugEnabled()) {
        this.log.debug("CookieSpec selected: " + (String)localObject2);
      }
      Object localObject1;
      label213:
      label222:
      String str2;
      if ((paramHttpRequest instanceof HttpUriRequest))
      {
        localObject1 = ((HttpUriRequest)paramHttpRequest).getURI();
        if (localObject1 == null) {
          break label375;
        }
        localObject1 = ((URI)localObject1).getPath();
        str2 = ((HttpHost)localObject7).getHostName();
        int k = ((HttpHost)localObject7).getPort();
        i = k;
        if (k < 0) {
          i = ((RouteInfo)localObject6).getTargetHost().getPort();
        }
        if (i < 0) {
          break label380;
        }
        label262:
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          break label386;
        }
      }
      String str1;
      for (;;)
      {
        localObject1 = new CookieOrigin(str2, i, (String)localObject1, ((RouteInfo)localObject6).isSecure());
        localObject5 = (CookieSpecProvider)((Lookup)localObject5).lookup((String)localObject2);
        if (localObject5 != null) {
          break label392;
        }
        if (!this.log.isDebugEnabled()) {
          break;
        }
        this.log.debug("Unsupported cookie policy: " + (String)localObject2);
        return;
        try
        {
          localObject1 = new URI(paramHttpRequest.getRequestLine().getUri());
        }
        catch (URISyntaxException localURISyntaxException)
        {
          str1 = null;
        }
        break label213;
        label375:
        str1 = null;
        break label222;
        label380:
        i = 0;
        break label262;
        label386:
        str1 = "/";
      }
      label392:
      localObject2 = ((CookieSpecProvider)localObject5).create((HttpContext)localObject4);
      localObject6 = ((CookieStore)localObject3).getCookies();
      localObject4 = new ArrayList();
      localObject5 = new Date();
      localObject6 = ((List)localObject6).iterator();
      int i = j;
      while (((Iterator)localObject6).hasNext())
      {
        localObject7 = (Cookie)((Iterator)localObject6).next();
        if (!((Cookie)localObject7).isExpired((Date)localObject5))
        {
          if (((CookieSpec)localObject2).match((Cookie)localObject7, str1))
          {
            if (this.log.isDebugEnabled()) {
              this.log.debug("Cookie " + localObject7 + " match " + str1);
            }
            ((List)localObject4).add(localObject7);
          }
        }
        else
        {
          if (this.log.isDebugEnabled()) {
            this.log.debug("Cookie " + localObject7 + " expired");
          }
          i = 1;
        }
      }
      if (i != 0) {
        ((CookieStore)localObject3).clearExpired((Date)localObject5);
      }
      if (!((List)localObject4).isEmpty())
      {
        localObject3 = ((CookieSpec)localObject2).formatCookies((List)localObject4).iterator();
        while (((Iterator)localObject3).hasNext()) {
          paramHttpRequest.addHeader((Header)((Iterator)localObject3).next());
        }
      }
      if (((CookieSpec)localObject2).getVersion() > 0)
      {
        localObject3 = ((CookieSpec)localObject2).getVersionHeader();
        if (localObject3 != null) {
          paramHttpRequest.addHeader((Header)localObject3);
        }
      }
      paramHttpContext.setAttribute("http.cookie-spec", localObject2);
      paramHttpContext.setAttribute("http.cookie-origin", str1);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\protocol\RequestAddCookies.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */