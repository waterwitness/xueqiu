package org.apache.http.client;

import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

public abstract interface RedirectStrategy
{
  public abstract HttpUriRequest getRedirect(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse, HttpContext paramHttpContext);
  
  public abstract boolean isRedirected(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse, HttpContext paramHttpContext);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\RedirectStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */