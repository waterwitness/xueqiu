package org.apache.http.impl.client;

import java.net.ProxySelector;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.NoConnectionReuseStrategy;
import org.apache.http.impl.conn.PoolingClientConnectionManager;
import org.apache.http.impl.conn.ProxySelectorRoutePlanner;
import org.apache.http.impl.conn.SchemeRegistryFactory;
import org.apache.http.params.HttpParams;

@Deprecated
@ThreadSafe
public class SystemDefaultHttpClient
  extends DefaultHttpClient
{
  public SystemDefaultHttpClient()
  {
    super(null, null);
  }
  
  public SystemDefaultHttpClient(HttpParams paramHttpParams)
  {
    super(null, paramHttpParams);
  }
  
  protected ClientConnectionManager createClientConnectionManager()
  {
    PoolingClientConnectionManager localPoolingClientConnectionManager = new PoolingClientConnectionManager(SchemeRegistryFactory.createSystemDefault());
    if ("true".equalsIgnoreCase(System.getProperty("http.keepAlive", "true")))
    {
      int i = Integer.parseInt(System.getProperty("http.maxConnections", "5"));
      localPoolingClientConnectionManager.setDefaultMaxPerRoute(i);
      localPoolingClientConnectionManager.setMaxTotal(i * 2);
    }
    return localPoolingClientConnectionManager;
  }
  
  protected ConnectionReuseStrategy createConnectionReuseStrategy()
  {
    if ("true".equalsIgnoreCase(System.getProperty("http.keepAlive", "true"))) {
      return new DefaultConnectionReuseStrategy();
    }
    return new NoConnectionReuseStrategy();
  }
  
  protected HttpRoutePlanner createHttpRoutePlanner()
  {
    return new ProxySelectorRoutePlanner(getConnectionManager().getSchemeRegistry(), ProxySelector.getDefault());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\SystemDefaultHttpClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */