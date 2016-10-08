package org.apache.http.conn;

import org.apache.http.HttpConnection;
import org.apache.http.config.ConnectionConfig;

public abstract interface HttpConnectionFactory<T, C extends HttpConnection>
{
  public abstract C create(T paramT, ConnectionConfig paramConnectionConfig);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\HttpConnectionFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */