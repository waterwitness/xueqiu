package org.apache.http.impl.conn;

import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.ConnFactory;

class HttpConnPool$InternalConnFactory
  implements ConnFactory<HttpRoute, OperatedClientConnection>
{
  private final ClientConnectionOperator connOperator;
  
  HttpConnPool$InternalConnFactory(ClientConnectionOperator paramClientConnectionOperator)
  {
    this.connOperator = paramClientConnectionOperator;
  }
  
  public OperatedClientConnection create(HttpRoute paramHttpRoute)
  {
    return this.connOperator.createConnection();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\HttpConnPool$InternalConnFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */