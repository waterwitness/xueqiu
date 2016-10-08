package org.apache.http.impl.auth;

import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeFactory;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

@Immutable
public class NTLMSchemeFactory
  implements AuthSchemeFactory, AuthSchemeProvider
{
  public AuthScheme create(HttpContext paramHttpContext)
  {
    return new NTLMScheme();
  }
  
  public AuthScheme newInstance(HttpParams paramHttpParams)
  {
    return new NTLMScheme();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\NTLMSchemeFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */