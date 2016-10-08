package org.apache.http.impl.client;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.EntityUtils;

@Immutable
public class BasicResponseHandler
  extends AbstractResponseHandler<String>
{
  public String handleEntity(HttpEntity paramHttpEntity)
  {
    return EntityUtils.toString(paramHttpEntity);
  }
  
  public String handleResponse(HttpResponse paramHttpResponse)
  {
    return (String)super.handleResponse(paramHttpResponse);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\BasicResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */