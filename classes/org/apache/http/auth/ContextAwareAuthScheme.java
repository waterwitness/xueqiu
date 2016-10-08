package org.apache.http.auth;

import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.protocol.HttpContext;

public abstract interface ContextAwareAuthScheme
  extends AuthScheme
{
  public abstract Header authenticate(Credentials paramCredentials, HttpRequest paramHttpRequest, HttpContext paramHttpContext);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\auth\ContextAwareAuthScheme.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */