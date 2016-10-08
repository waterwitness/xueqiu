package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
public class HttpTrace
  extends HttpRequestBase
{
  public static final String METHOD_NAME = "TRACE";
  
  public HttpTrace() {}
  
  public HttpTrace(String paramString)
  {
    setURI(URI.create(paramString));
  }
  
  public HttpTrace(URI paramURI)
  {
    setURI(paramURI);
  }
  
  public String getMethod()
  {
    return "TRACE";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\methods\HttpTrace.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */