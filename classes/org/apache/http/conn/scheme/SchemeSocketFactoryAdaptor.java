package org.apache.http.conn.scheme;

import java.net.InetSocketAddress;
import java.net.Socket;
import org.apache.http.params.HttpParams;

@Deprecated
class SchemeSocketFactoryAdaptor
  implements SchemeSocketFactory
{
  private final SocketFactory factory;
  
  SchemeSocketFactoryAdaptor(SocketFactory paramSocketFactory)
  {
    this.factory = paramSocketFactory;
  }
  
  public Socket connectSocket(Socket paramSocket, InetSocketAddress paramInetSocketAddress1, InetSocketAddress paramInetSocketAddress2, HttpParams paramHttpParams)
  {
    String str = paramInetSocketAddress1.getHostName();
    int j = paramInetSocketAddress1.getPort();
    paramInetSocketAddress1 = null;
    int i = 0;
    if (paramInetSocketAddress2 != null)
    {
      paramInetSocketAddress1 = paramInetSocketAddress2.getAddress();
      i = paramInetSocketAddress2.getPort();
    }
    return this.factory.connectSocket(paramSocket, str, j, paramInetSocketAddress1, i, paramHttpParams);
  }
  
  public Socket createSocket(HttpParams paramHttpParams)
  {
    return this.factory.createSocket();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof SchemeSocketFactoryAdaptor)) {
      return this.factory.equals(((SchemeSocketFactoryAdaptor)paramObject).factory);
    }
    return this.factory.equals(paramObject);
  }
  
  public SocketFactory getFactory()
  {
    return this.factory;
  }
  
  public int hashCode()
  {
    return this.factory.hashCode();
  }
  
  public boolean isSecure(Socket paramSocket)
  {
    return this.factory.isSecure(paramSocket);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\scheme\SchemeSocketFactoryAdaptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */