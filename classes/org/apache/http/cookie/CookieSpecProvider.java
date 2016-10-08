package org.apache.http.cookie;

import org.apache.http.protocol.HttpContext;

public abstract interface CookieSpecProvider
{
  public abstract CookieSpec create(HttpContext paramHttpContext);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\cookie\CookieSpecProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */