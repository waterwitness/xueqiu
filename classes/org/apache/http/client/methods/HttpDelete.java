package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
public class HttpDelete
  extends HttpRequestBase
{
  public static final String METHOD_NAME = "DELETE";
  
  public HttpDelete() {}
  
  public HttpDelete(String paramString)
  {
    setURI(URI.create(paramString));
  }
  
  public HttpDelete(URI paramURI)
  {
    setURI(paramURI);
  }
  
  public String getMethod()
  {
    return "DELETE";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\methods\HttpDelete.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */