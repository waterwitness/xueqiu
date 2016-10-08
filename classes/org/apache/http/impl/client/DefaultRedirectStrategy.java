package org.apache.http.impl.client;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Locale;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.CircularRedirectException;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.methods.RequestBuilder;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.TextUtils;

@Immutable
public class DefaultRedirectStrategy
  implements RedirectStrategy
{
  public static final DefaultRedirectStrategy INSTANCE = new DefaultRedirectStrategy();
  @Deprecated
  public static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
  private static final String[] REDIRECT_METHODS = { "GET", "HEAD" };
  private final Log log = LogFactory.getLog(getClass());
  
  protected URI createLocationURI(String paramString)
  {
    try
    {
      Object localObject = new URIBuilder(new URI(paramString).normalize());
      String str = ((URIBuilder)localObject).getHost();
      if (str != null) {
        ((URIBuilder)localObject).setHost(str.toLowerCase(Locale.ROOT));
      }
      if (TextUtils.isEmpty(((URIBuilder)localObject).getPath())) {
        ((URIBuilder)localObject).setPath("/");
      }
      localObject = ((URIBuilder)localObject).build();
      return (URI)localObject;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      throw new ProtocolException("Invalid redirect URI: " + paramString, localURISyntaxException);
    }
  }
  
  public URI getLocationURI(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    Args.notNull(paramHttpResponse, "HTTP response");
    Args.notNull(paramHttpContext, "HTTP context");
    Object localObject1 = HttpClientContext.adapt(paramHttpContext);
    Object localObject2 = paramHttpResponse.getFirstHeader("location");
    if (localObject2 == null) {
      throw new ProtocolException("Received redirect response " + paramHttpResponse.getStatusLine() + " but no location header");
    }
    paramHttpResponse = ((Header)localObject2).getValue();
    if (this.log.isDebugEnabled()) {
      this.log.debug("Redirect requested to location '" + paramHttpResponse + "'");
    }
    localObject2 = ((HttpClientContext)localObject1).getRequestConfig();
    paramHttpResponse = createLocationURI(paramHttpResponse);
    try
    {
      if (paramHttpResponse.isAbsolute()) {
        break label329;
      }
      if (!((RequestConfig)localObject2).isRelativeRedirectsAllowed()) {
        throw new ProtocolException("Relative redirect location '" + paramHttpResponse + "' not allowed");
      }
    }
    catch (URISyntaxException paramHttpRequest)
    {
      throw new ProtocolException(paramHttpRequest.getMessage(), paramHttpRequest);
    }
    HttpHost localHttpHost = ((HttpClientContext)localObject1).getTargetHost();
    Asserts.notNull(localHttpHost, "Target host");
    label329:
    for (paramHttpRequest = URIUtils.resolve(URIUtils.rewriteURI(new URI(paramHttpRequest.getRequestLine().getUri()), localHttpHost, false), paramHttpResponse);; paramHttpRequest = paramHttpResponse)
    {
      localObject1 = (RedirectLocations)((HttpClientContext)localObject1).getAttribute("http.protocol.redirect-locations");
      paramHttpResponse = (HttpResponse)localObject1;
      if (localObject1 == null)
      {
        paramHttpResponse = new RedirectLocations();
        paramHttpContext.setAttribute("http.protocol.redirect-locations", paramHttpResponse);
      }
      if ((!((RequestConfig)localObject2).isCircularRedirectsAllowed()) && (paramHttpResponse.contains(paramHttpRequest))) {
        throw new CircularRedirectException("Circular redirect to '" + paramHttpRequest + "'");
      }
      paramHttpResponse.add(paramHttpRequest);
      return paramHttpRequest;
    }
  }
  
  public HttpUriRequest getRedirect(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    paramHttpContext = getLocationURI(paramHttpRequest, paramHttpResponse, paramHttpContext);
    String str = paramHttpRequest.getRequestLine().getMethod();
    if (str.equalsIgnoreCase("HEAD")) {
      return new HttpHead(paramHttpContext);
    }
    if (str.equalsIgnoreCase("GET")) {
      return new HttpGet(paramHttpContext);
    }
    if (paramHttpResponse.getStatusLine().getStatusCode() == 307) {
      return RequestBuilder.copy(paramHttpRequest).setUri(paramHttpContext).build();
    }
    return new HttpGet(paramHttpContext);
  }
  
  protected boolean isRedirectable(String paramString)
  {
    boolean bool2 = false;
    String[] arrayOfString = REDIRECT_METHODS;
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (arrayOfString[i].equalsIgnoreCase(paramString)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public boolean isRedirected(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    boolean bool2 = true;
    Args.notNull(paramHttpRequest, "HTTP request");
    Args.notNull(paramHttpResponse, "HTTP response");
    int i = paramHttpResponse.getStatusLine().getStatusCode();
    paramHttpRequest = paramHttpRequest.getRequestLine().getMethod();
    paramHttpResponse = paramHttpResponse.getFirstHeader("location");
    boolean bool1 = bool2;
    switch (i)
    {
    case 304: 
    case 305: 
    case 306: 
    default: 
      bool1 = false;
    case 303: 
    case 302: 
      do
      {
        return bool1;
        if (!isRedirectable(paramHttpRequest)) {
          break;
        }
        bool1 = bool2;
      } while (paramHttpResponse != null);
      return false;
    }
    return isRedirectable(paramHttpRequest);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\DefaultRedirectStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */