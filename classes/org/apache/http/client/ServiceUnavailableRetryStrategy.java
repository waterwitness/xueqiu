package org.apache.http.client;

import org.apache.http.HttpResponse;
import org.apache.http.protocol.HttpContext;

public abstract interface ServiceUnavailableRetryStrategy
{
  public abstract long getRetryInterval();
  
  public abstract boolean retryRequest(HttpResponse paramHttpResponse, int paramInt, HttpContext paramHttpContext);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\ServiceUnavailableRetryStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */