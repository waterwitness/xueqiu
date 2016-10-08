package org.apache.http.impl.client;

import org.apache.http.annotation.Immutable;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;

@Immutable
public class HttpClients
{
  public static CloseableHttpClient createDefault()
  {
    return HttpClientBuilder.create().build();
  }
  
  public static CloseableHttpClient createMinimal()
  {
    return new MinimalHttpClient(new PoolingHttpClientConnectionManager());
  }
  
  public static CloseableHttpClient createMinimal(HttpClientConnectionManager paramHttpClientConnectionManager)
  {
    return new MinimalHttpClient(paramHttpClientConnectionManager);
  }
  
  public static CloseableHttpClient createSystem()
  {
    return HttpClientBuilder.create().useSystemProperties().build();
  }
  
  public static HttpClientBuilder custom()
  {
    return HttpClientBuilder.create();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\HttpClients.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */