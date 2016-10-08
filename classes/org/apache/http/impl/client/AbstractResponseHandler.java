package org.apache.http.impl.client;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.util.EntityUtils;

@Immutable
public abstract class AbstractResponseHandler<T>
  implements ResponseHandler<T>
{
  public abstract T handleEntity(HttpEntity paramHttpEntity);
  
  public T handleResponse(HttpResponse paramHttpResponse)
  {
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    paramHttpResponse = paramHttpResponse.getEntity();
    if (localStatusLine.getStatusCode() >= 300)
    {
      EntityUtils.consume(paramHttpResponse);
      throw new HttpResponseException(localStatusLine.getStatusCode(), localStatusLine.getReasonPhrase());
    }
    if (paramHttpResponse == null) {
      return null;
    }
    return (T)handleEntity(paramHttpResponse);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\AbstractResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */