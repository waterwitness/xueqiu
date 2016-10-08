package org.apache.http.conn.scheme;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;

@Deprecated
class SocketFactoryAdaptor
  implements SocketFactory
{
  private final SchemeSocketFactory factory;
  
  SocketFactoryAdaptor(SchemeSocketFactory paramSchemeSocketFactory)
  {
    this.factory = paramSchemeSocketFactory;
  }
  
  public Socket connectSocket(Socket paramSocket, String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2, HttpParams paramHttpParams)
  {
    InetSocketAddress localInetSocketAddress = null;
    if ((paramInetAddress != null) || (paramInt2 > 0)) {
      if (paramInt2 <= 0) {
        break label60;
      }
    }
    for (;;)
    {
      localInetSocketAddress = new InetSocketAddress(paramInetAddress, paramInt2);
      paramString = new InetSocketAddress(InetAddress.getByName(paramString), paramInt1);
      return this.factory.connectSocket(paramSocket, paramString, localInetSocketAddress, paramHttpParams);
      label60:
      paramInt2 = 0;
    }
  }
  
  public Socket createSocket()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    return this.factory.createSocket(localBasicHttpParams);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof SocketFactoryAdaptor)) {
      return this.factory.equals(((SocketFactoryAdaptor)paramObject).factory);
    }
    return this.factory.equals(paramObject);
  }
  
  public SchemeSocketFactory getFactory()
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\scheme\SocketFactoryAdaptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */