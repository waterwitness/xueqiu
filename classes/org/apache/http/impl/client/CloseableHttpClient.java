package org.apache.http.impl.client;

import java.io.Closeable;
import java.net.URI;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@ThreadSafe
public abstract class CloseableHttpClient
  implements Closeable, HttpClient
{
  private final Log log = LogFactory.getLog(getClass());
  
  private static HttpHost determineTarget(HttpUriRequest paramHttpUriRequest)
  {
    HttpHost localHttpHost = null;
    URI localURI = paramHttpUriRequest.getURI();
    paramHttpUriRequest = localHttpHost;
    if (localURI.isAbsolute())
    {
      localHttpHost = URIUtils.extractHost(localURI);
      paramHttpUriRequest = localHttpHost;
      if (localHttpHost == null) {
        throw new ClientProtocolException("URI does not specify a valid host name: " + localURI);
      }
    }
    return paramHttpUriRequest;
  }
  
  protected abstract CloseableHttpResponse doExecute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext);
  
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return (T)execute(paramHttpHost, paramHttpRequest, paramResponseHandler, null);
  }
  
  /* Error */
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    // Byte code:
    //   0: aload_3
    //   1: ldc 79
    //   3: invokestatic 85	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   6: pop
    //   7: aload_0
    //   8: aload_1
    //   9: aload_2
    //   10: aload 4
    //   12: invokevirtual 87	org/apache/http/impl/client/CloseableHttpClient:execute	(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    //   15: astore_1
    //   16: aload_3
    //   17: aload_1
    //   18: invokeinterface 93 2 0
    //   23: astore_2
    //   24: aload_1
    //   25: invokeinterface 99 1 0
    //   30: invokestatic 105	org/apache/http/util/EntityUtils:consume	(Lorg/apache/http/HttpEntity;)V
    //   33: aload_1
    //   34: invokeinterface 108 1 0
    //   39: aload_2
    //   40: areturn
    //   41: astore_2
    //   42: aload_1
    //   43: invokeinterface 99 1 0
    //   48: astore_3
    //   49: aload_3
    //   50: invokestatic 105	org/apache/http/util/EntityUtils:consume	(Lorg/apache/http/HttpEntity;)V
    //   53: aload_2
    //   54: athrow
    //   55: astore_2
    //   56: aload_1
    //   57: invokeinterface 108 1 0
    //   62: aload_2
    //   63: athrow
    //   64: astore_3
    //   65: aload_0
    //   66: getfield 27	org/apache/http/impl/client/CloseableHttpClient:log	Lorg/apache/commons/logging/Log;
    //   69: ldc 110
    //   71: aload_3
    //   72: invokeinterface 116 3 0
    //   77: goto -24 -> 53
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	CloseableHttpClient
    //   0	80	1	paramHttpHost	HttpHost
    //   0	80	2	paramHttpRequest	HttpRequest
    //   0	80	3	paramResponseHandler	ResponseHandler<? extends T>
    //   0	80	4	paramHttpContext	HttpContext
    // Exception table:
    //   from	to	target	type
    //   16	33	41	org/apache/http/client/ClientProtocolException
    //   16	33	55	finally
    //   42	49	55	finally
    //   49	53	55	finally
    //   53	55	55	finally
    //   65	77	55	finally
    //   49	53	64	java/lang/Exception
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return (T)execute(paramHttpUriRequest, paramResponseHandler, null);
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return (T)execute(determineTarget(paramHttpUriRequest), paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }
  
  public CloseableHttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
  {
    return doExecute(paramHttpHost, paramHttpRequest, null);
  }
  
  public CloseableHttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    return doExecute(paramHttpHost, paramHttpRequest, paramHttpContext);
  }
  
  public CloseableHttpResponse execute(HttpUriRequest paramHttpUriRequest)
  {
    return execute(paramHttpUriRequest, null);
  }
  
  public CloseableHttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpUriRequest, "HTTP request");
    return doExecute(determineTarget(paramHttpUriRequest), paramHttpUriRequest, paramHttpContext);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\CloseableHttpClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */