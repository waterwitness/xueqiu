package org.apache.http.conn;

import javax.net.ssl.SSLSession;
import org.apache.http.HttpInetConnection;
import org.apache.http.conn.routing.HttpRoute;

@Deprecated
public abstract interface HttpRoutedConnection
  extends HttpInetConnection
{
  public abstract HttpRoute getRoute();
  
  public abstract SSLSession getSSLSession();
  
  public abstract boolean isSecure();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\HttpRoutedConnection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */