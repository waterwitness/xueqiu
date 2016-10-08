package org.apache.http;

public abstract interface HttpRequestFactory
{
  public abstract HttpRequest newHttpRequest(String paramString1, String paramString2);
  
  public abstract HttpRequest newHttpRequest(RequestLine paramRequestLine);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\HttpRequestFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */