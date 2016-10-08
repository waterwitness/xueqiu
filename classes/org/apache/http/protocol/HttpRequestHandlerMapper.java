package org.apache.http.protocol;

import org.apache.http.HttpRequest;

public abstract interface HttpRequestHandlerMapper
{
  public abstract HttpRequestHandler lookup(HttpRequest paramHttpRequest);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\protocol\HttpRequestHandlerMapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */