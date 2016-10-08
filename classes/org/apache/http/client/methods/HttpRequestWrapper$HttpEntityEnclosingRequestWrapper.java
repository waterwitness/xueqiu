package org.apache.http.client.methods;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;

class HttpRequestWrapper$HttpEntityEnclosingRequestWrapper
  extends HttpRequestWrapper
  implements HttpEntityEnclosingRequest
{
  private HttpEntity entity;
  
  HttpRequestWrapper$HttpEntityEnclosingRequestWrapper(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest, HttpHost paramHttpHost)
  {
    super(paramHttpEntityEnclosingRequest, paramHttpHost, null);
    this.entity = paramHttpEntityEnclosingRequest.getEntity();
  }
  
  public boolean expectContinue()
  {
    Header localHeader = getFirstHeader("Expect");
    return (localHeader != null) && ("100-continue".equalsIgnoreCase(localHeader.getValue()));
  }
  
  public HttpEntity getEntity()
  {
    return this.entity;
  }
  
  public void setEntity(HttpEntity paramHttpEntity)
  {
    this.entity = paramHttpEntity;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\methods\HttpRequestWrapper$HttpEntityEnclosingRequestWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */