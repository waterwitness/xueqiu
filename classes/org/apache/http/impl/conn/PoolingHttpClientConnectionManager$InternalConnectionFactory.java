package org.apache.http.impl.conn;

import org.apache.http.config.ConnectionConfig;
import org.apache.http.conn.HttpConnectionFactory;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.ConnFactory;

class PoolingHttpClientConnectionManager$InternalConnectionFactory
  implements ConnFactory<HttpRoute, ManagedHttpClientConnection>
{
  private final PoolingHttpClientConnectionManager.ConfigData configData;
  private final HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> connFactory;
  
  PoolingHttpClientConnectionManager$InternalConnectionFactory(PoolingHttpClientConnectionManager.ConfigData paramConfigData, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> paramHttpConnectionFactory)
  {
    if (paramConfigData != null)
    {
      this.configData = paramConfigData;
      if (paramHttpConnectionFactory == null) {
        break label34;
      }
    }
    for (;;)
    {
      this.connFactory = paramHttpConnectionFactory;
      return;
      paramConfigData = new PoolingHttpClientConnectionManager.ConfigData();
      break;
      label34:
      paramHttpConnectionFactory = ManagedHttpClientConnectionFactory.INSTANCE;
    }
  }
  
  public ManagedHttpClientConnection create(HttpRoute paramHttpRoute)
  {
    Object localObject2 = null;
    if (paramHttpRoute.getProxyHost() != null) {
      localObject2 = this.configData.getConnectionConfig(paramHttpRoute.getProxyHost());
    }
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = this.configData.getConnectionConfig(paramHttpRoute.getTargetHost());
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = this.configData.getDefaultConnectionConfig();
    }
    localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = ConnectionConfig.DEFAULT;
    }
    return (ManagedHttpClientConnection)this.connFactory.create(paramHttpRoute, (ConnectionConfig)localObject1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\PoolingHttpClientConnectionManager$InternalConnectionFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */