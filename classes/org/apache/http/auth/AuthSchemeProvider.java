package org.apache.http.auth;

import org.apache.http.protocol.HttpContext;

public abstract interface AuthSchemeProvider
{
  public abstract AuthScheme create(HttpContext paramHttpContext);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\auth\AuthSchemeProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */