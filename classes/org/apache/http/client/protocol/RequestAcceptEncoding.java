package org.apache.http.client.protocol;

import java.util.List;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.protocol.HttpContext;

@Immutable
public class RequestAcceptEncoding
  implements HttpRequestInterceptor
{
  private final String acceptEncoding;
  
  public RequestAcceptEncoding()
  {
    this(null);
  }
  
  public RequestAcceptEncoding(List<String> paramList)
  {
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = 0;
      while (i < paramList.size())
      {
        if (i > 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append((String)paramList.get(i));
        i += 1;
      }
      this.acceptEncoding = localStringBuilder.toString();
      return;
    }
    this.acceptEncoding = "gzip,deflate";
  }
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    paramHttpContext = HttpClientContext.adapt(paramHttpContext).getRequestConfig();
    if ((!paramHttpRequest.containsHeader("Accept-Encoding")) && (paramHttpContext.isContentCompressionEnabled())) {
      paramHttpRequest.addHeader("Accept-Encoding", this.acceptEncoding);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\protocol\RequestAcceptEncoding.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */