package org.apache.http.auth;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.config.Lookup;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Deprecated
@ThreadSafe
public final class AuthSchemeRegistry
  implements Lookup<AuthSchemeProvider>
{
  private final ConcurrentHashMap<String, AuthSchemeFactory> registeredSchemes = new ConcurrentHashMap();
  
  public final AuthScheme getAuthScheme(String paramString, HttpParams paramHttpParams)
  {
    Args.notNull(paramString, "Name");
    AuthSchemeFactory localAuthSchemeFactory = (AuthSchemeFactory)this.registeredSchemes.get(paramString.toLowerCase(Locale.ENGLISH));
    if (localAuthSchemeFactory != null) {
      return localAuthSchemeFactory.newInstance(paramHttpParams);
    }
    throw new IllegalStateException("Unsupported authentication scheme: " + paramString);
  }
  
  public final List<String> getSchemeNames()
  {
    return new ArrayList(this.registeredSchemes.keySet());
  }
  
  public final AuthSchemeProvider lookup(final String paramString)
  {
    new AuthSchemeProvider()
    {
      public AuthScheme create(HttpContext paramAnonymousHttpContext)
      {
        paramAnonymousHttpContext = (HttpRequest)paramAnonymousHttpContext.getAttribute("http.request");
        return AuthSchemeRegistry.this.getAuthScheme(paramString, paramAnonymousHttpContext.getParams());
      }
    };
  }
  
  public final void register(String paramString, AuthSchemeFactory paramAuthSchemeFactory)
  {
    Args.notNull(paramString, "Name");
    Args.notNull(paramAuthSchemeFactory, "Authentication scheme factory");
    this.registeredSchemes.put(paramString.toLowerCase(Locale.ENGLISH), paramAuthSchemeFactory);
  }
  
  public final void setItems(Map<String, AuthSchemeFactory> paramMap)
  {
    if (paramMap == null) {
      return;
    }
    this.registeredSchemes.clear();
    this.registeredSchemes.putAll(paramMap);
  }
  
  public final void unregister(String paramString)
  {
    Args.notNull(paramString, "Name");
    this.registeredSchemes.remove(paramString.toLowerCase(Locale.ENGLISH));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\auth\AuthSchemeRegistry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */