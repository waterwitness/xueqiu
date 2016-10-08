package org.apache.http.impl.client;

import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpRequest;
import org.apache.http.RequestLine;
import org.apache.http.annotation.Immutable;

@Immutable
public class StandardHttpRequestRetryHandler
  extends DefaultHttpRequestRetryHandler
{
  private final Map<String, Boolean> idempotentMethods = new ConcurrentHashMap();
  
  public StandardHttpRequestRetryHandler()
  {
    this(3, false);
  }
  
  public StandardHttpRequestRetryHandler(int paramInt, boolean paramBoolean)
  {
    super(paramInt, paramBoolean);
    this.idempotentMethods.put("GET", Boolean.TRUE);
    this.idempotentMethods.put("HEAD", Boolean.TRUE);
    this.idempotentMethods.put("PUT", Boolean.TRUE);
    this.idempotentMethods.put("DELETE", Boolean.TRUE);
    this.idempotentMethods.put("OPTIONS", Boolean.TRUE);
    this.idempotentMethods.put("TRACE", Boolean.TRUE);
  }
  
  protected boolean handleAsIdempotent(HttpRequest paramHttpRequest)
  {
    paramHttpRequest = paramHttpRequest.getRequestLine().getMethod().toUpperCase(Locale.ROOT);
    paramHttpRequest = (Boolean)this.idempotentMethods.get(paramHttpRequest);
    return (paramHttpRequest != null) && (paramHttpRequest.booleanValue());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\StandardHttpRequestRetryHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */