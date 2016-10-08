package org.apache.http.impl.client;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeRegistry;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Asserts;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
@Immutable
public abstract class AbstractAuthenticationHandler
  implements AuthenticationHandler
{
  private static final List<String> DEFAULT_SCHEME_PRIORITY = Collections.unmodifiableList(Arrays.asList(new String[] { "Negotiate", "NTLM", "Digest", "Basic" }));
  private final Log log = LogFactory.getLog(getClass());
  
  protected List<String> getAuthPreferences()
  {
    return DEFAULT_SCHEME_PRIORITY;
  }
  
  protected List<String> getAuthPreferences(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    return getAuthPreferences();
  }
  
  protected Map<String, Header> parseChallenges(Header[] paramArrayOfHeader)
  {
    HashMap localHashMap = new HashMap(paramArrayOfHeader.length);
    int m = paramArrayOfHeader.length;
    int j = 0;
    while (j < m)
    {
      Header localHeader = paramArrayOfHeader[j];
      CharArrayBuffer localCharArrayBuffer;
      int i;
      if ((localHeader instanceof FormattedHeader))
      {
        localCharArrayBuffer = ((FormattedHeader)localHeader).getBuffer();
        i = ((FormattedHeader)localHeader).getValuePos();
      }
      while ((i < localCharArrayBuffer.length()) && (HTTP.isWhitespace(localCharArrayBuffer.charAt(i))))
      {
        i += 1;
        continue;
        String str = localHeader.getValue();
        if (str == null) {
          throw new MalformedChallengeException("Header value is null");
        }
        localCharArrayBuffer = new CharArrayBuffer(str.length());
        localCharArrayBuffer.append(str);
        i = 0;
      }
      int k = i;
      while ((k < localCharArrayBuffer.length()) && (!HTTP.isWhitespace(localCharArrayBuffer.charAt(k)))) {
        k += 1;
      }
      localHashMap.put(localCharArrayBuffer.substring(i, k).toLowerCase(Locale.ROOT), localHeader);
      j += 1;
    }
    return localHashMap;
  }
  
  public AuthScheme selectScheme(Map<String, Header> paramMap, HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    AuthSchemeRegistry localAuthSchemeRegistry = (AuthSchemeRegistry)paramHttpContext.getAttribute("http.authscheme-registry");
    Asserts.notNull(localAuthSchemeRegistry, "AuthScheme registry");
    Object localObject = getAuthPreferences(paramHttpResponse, paramHttpContext);
    paramHttpContext = (HttpContext)localObject;
    if (localObject == null) {
      paramHttpContext = DEFAULT_SCHEME_PRIORITY;
    }
    if (this.log.isDebugEnabled()) {
      this.log.debug("Authentication schemes in the order of preference: " + paramHttpContext);
    }
    localObject = paramHttpContext.iterator();
    String str;
    if (((Iterator)localObject).hasNext())
    {
      str = (String)((Iterator)localObject).next();
      if ((Header)paramMap.get(str.toLowerCase(Locale.ENGLISH)) != null) {
        if (this.log.isDebugEnabled()) {
          this.log.debug(str + " authentication scheme selected");
        }
      }
    }
    for (;;)
    {
      try
      {
        paramHttpContext = localAuthSchemeRegistry.getAuthScheme(str, paramHttpResponse.getParams());
        paramHttpResponse = paramHttpContext;
        if (paramHttpResponse != null) {
          break label305;
        }
        throw new AuthenticationException("Unable to respond to any of these challenges: " + paramMap);
      }
      catch (IllegalStateException paramHttpContext) {}
      if (!this.log.isWarnEnabled()) {
        break;
      }
      this.log.warn("Authentication scheme " + str + " not supported");
      break;
      if (!this.log.isDebugEnabled()) {
        break;
      }
      this.log.debug("Challenge for " + str + " authentication scheme not available");
      break;
      label305:
      return paramHttpResponse;
      paramHttpResponse = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\AbstractAuthenticationHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */