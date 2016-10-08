package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
public class HttpPatch
  extends HttpEntityEnclosingRequestBase
{
  public static final String METHOD_NAME = "PATCH";
  
  public HttpPatch() {}
  
  public HttpPatch(String paramString)
  {
    setURI(URI.create(paramString));
  }
  
  public HttpPatch(URI paramURI)
  {
    setURI(paramURI);
  }
  
  public String getMethod()
  {
    return "PATCH";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\methods\HttpPatch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */