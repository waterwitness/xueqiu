package org.apache.http.client;

import org.apache.http.annotation.Immutable;

@Immutable
public class HttpResponseException
  extends ClientProtocolException
{
  private static final long serialVersionUID = -7186627969477257933L;
  private final int statusCode;
  
  public HttpResponseException(int paramInt, String paramString)
  {
    super(paramString);
    this.statusCode = paramInt;
  }
  
  public int getStatusCode()
  {
    return this.statusCode;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\HttpResponseException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */