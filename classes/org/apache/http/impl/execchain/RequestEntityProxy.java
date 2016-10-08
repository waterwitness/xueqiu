package org.apache.http.impl.execchain;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
class RequestEntityProxy
  implements HttpEntity
{
  private boolean consumed = false;
  private final HttpEntity original;
  
  RequestEntityProxy(HttpEntity paramHttpEntity)
  {
    this.original = paramHttpEntity;
  }
  
  static void enhance(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
  {
    HttpEntity localHttpEntity = paramHttpEntityEnclosingRequest.getEntity();
    if ((localHttpEntity != null) && (!localHttpEntity.isRepeatable()) && (!isEnhanced(localHttpEntity))) {
      paramHttpEntityEnclosingRequest.setEntity(new RequestEntityProxy(localHttpEntity));
    }
  }
  
  static boolean isEnhanced(HttpEntity paramHttpEntity)
  {
    return paramHttpEntity instanceof RequestEntityProxy;
  }
  
  static boolean isRepeatable(HttpRequest paramHttpRequest)
  {
    if ((paramHttpRequest instanceof HttpEntityEnclosingRequest))
    {
      paramHttpRequest = ((HttpEntityEnclosingRequest)paramHttpRequest).getEntity();
      if (paramHttpRequest != null)
      {
        if ((isEnhanced(paramHttpRequest)) && (!((RequestEntityProxy)paramHttpRequest).isConsumed())) {
          return true;
        }
        return paramHttpRequest.isRepeatable();
      }
    }
    return true;
  }
  
  @Deprecated
  public void consumeContent()
  {
    this.consumed = true;
    this.original.consumeContent();
  }
  
  public InputStream getContent()
  {
    return this.original.getContent();
  }
  
  public Header getContentEncoding()
  {
    return this.original.getContentEncoding();
  }
  
  public long getContentLength()
  {
    return this.original.getContentLength();
  }
  
  public Header getContentType()
  {
    return this.original.getContentType();
  }
  
  public HttpEntity getOriginal()
  {
    return this.original;
  }
  
  public boolean isChunked()
  {
    return this.original.isChunked();
  }
  
  public boolean isConsumed()
  {
    return this.consumed;
  }
  
  public boolean isRepeatable()
  {
    return this.original.isRepeatable();
  }
  
  public boolean isStreaming()
  {
    return this.original.isStreaming();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("RequestEntityProxy{");
    localStringBuilder.append(this.original);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    this.consumed = true;
    this.original.writeTo(paramOutputStream);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\execchain\RequestEntityProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */