package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.message.AbstractHttpMessage;
import org.apache.http.message.BasicRequestLine;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

@NotThreadSafe
public class HttpRequestWrapper
  extends AbstractHttpMessage
  implements HttpUriRequest
{
  private final String method;
  private final HttpRequest original;
  private final HttpHost target;
  private URI uri;
  private ProtocolVersion version;
  
  private HttpRequestWrapper(HttpRequest paramHttpRequest, HttpHost paramHttpHost)
  {
    this.original = ((HttpRequest)Args.notNull(paramHttpRequest, "HTTP request"));
    this.target = paramHttpHost;
    this.version = this.original.getRequestLine().getProtocolVersion();
    this.method = this.original.getRequestLine().getMethod();
    if ((paramHttpRequest instanceof HttpUriRequest)) {}
    for (this.uri = ((HttpUriRequest)paramHttpRequest).getURI();; this.uri = null)
    {
      setHeaders(paramHttpRequest.getAllHeaders());
      return;
    }
  }
  
  public static HttpRequestWrapper wrap(HttpRequest paramHttpRequest)
  {
    return wrap(paramHttpRequest, null);
  }
  
  public static HttpRequestWrapper wrap(HttpRequest paramHttpRequest, HttpHost paramHttpHost)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    if ((paramHttpRequest instanceof HttpEntityEnclosingRequest)) {
      return new HttpRequestWrapper.HttpEntityEnclosingRequestWrapper((HttpEntityEnclosingRequest)paramHttpRequest, paramHttpHost);
    }
    return new HttpRequestWrapper(paramHttpRequest, paramHttpHost);
  }
  
  public void abort()
  {
    throw new UnsupportedOperationException();
  }
  
  public String getMethod()
  {
    return this.method;
  }
  
  public HttpRequest getOriginal()
  {
    return this.original;
  }
  
  @Deprecated
  public HttpParams getParams()
  {
    if (this.params == null) {
      this.params = this.original.getParams().copy();
    }
    return this.params;
  }
  
  public ProtocolVersion getProtocolVersion()
  {
    if (this.version != null) {
      return this.version;
    }
    return this.original.getProtocolVersion();
  }
  
  public RequestLine getRequestLine()
  {
    if (this.uri != null) {}
    for (String str1 = this.uri.toASCIIString();; str1 = this.original.getRequestLine().getUri())
    {
      String str2;
      if (str1 != null)
      {
        str2 = str1;
        if (!str1.isEmpty()) {}
      }
      else
      {
        str2 = "/";
      }
      return new BasicRequestLine(this.method, str2, getProtocolVersion());
    }
  }
  
  public HttpHost getTarget()
  {
    return this.target;
  }
  
  public URI getURI()
  {
    return this.uri;
  }
  
  public boolean isAborted()
  {
    return false;
  }
  
  public void setProtocolVersion(ProtocolVersion paramProtocolVersion)
  {
    this.version = paramProtocolVersion;
  }
  
  public void setURI(URI paramURI)
  {
    this.uri = paramURI;
  }
  
  public String toString()
  {
    return getRequestLine() + " " + this.headergroup;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\methods\HttpRequestWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */