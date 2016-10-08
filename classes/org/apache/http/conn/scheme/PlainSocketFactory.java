package org.apache.http.conn.scheme;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

@Deprecated
@Immutable
public class PlainSocketFactory
  implements SchemeSocketFactory, SocketFactory
{
  private final HostNameResolver nameResolver;
  
  public PlainSocketFactory()
  {
    this.nameResolver = null;
  }
  
  @Deprecated
  public PlainSocketFactory(HostNameResolver paramHostNameResolver)
  {
    this.nameResolver = paramHostNameResolver;
  }
  
  public static PlainSocketFactory getSocketFactory()
  {
    return new PlainSocketFactory();
  }
  
  @Deprecated
  public Socket connectSocket(Socket paramSocket, String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2, HttpParams paramHttpParams)
  {
    InetSocketAddress localInetSocketAddress = null;
    if ((paramInetAddress != null) || (paramInt2 > 0))
    {
      if (paramInt2 > 0) {
        localInetSocketAddress = new InetSocketAddress(paramInetAddress, paramInt2);
      }
    }
    else {
      if (this.nameResolver == null) {
        break label74;
      }
    }
    label74:
    for (paramString = this.nameResolver.resolve(paramString);; paramString = InetAddress.getByName(paramString))
    {
      return connectSocket(paramSocket, new InetSocketAddress(paramString, paramInt1), localInetSocketAddress, paramHttpParams);
      paramInt2 = 0;
      break;
    }
  }
  
  public Socket connectSocket(Socket paramSocket, InetSocketAddress paramInetSocketAddress1, InetSocketAddress paramInetSocketAddress2, HttpParams paramHttpParams)
  {
    Args.notNull(paramInetSocketAddress1, "Remote address");
    Args.notNull(paramHttpParams, "HTTP parameters");
    Socket localSocket = paramSocket;
    if (paramSocket == null) {
      localSocket = createSocket();
    }
    if (paramInetSocketAddress2 != null)
    {
      localSocket.setReuseAddress(HttpConnectionParams.getSoReuseaddr(paramHttpParams));
      localSocket.bind(paramInetSocketAddress2);
    }
    int i = HttpConnectionParams.getConnectionTimeout(paramHttpParams);
    int j = HttpConnectionParams.getSoTimeout(paramHttpParams);
    try
    {
      localSocket.setSoTimeout(j);
      localSocket.connect(paramInetSocketAddress1, i);
      return localSocket;
    }
    catch (SocketTimeoutException paramSocket)
    {
      throw new ConnectTimeoutException("Connect to " + paramInetSocketAddress1 + " timed out");
    }
  }
  
  public Socket createSocket()
  {
    return new Socket();
  }
  
  public Socket createSocket(HttpParams paramHttpParams)
  {
    return new Socket();
  }
  
  public final boolean isSecure(Socket paramSocket)
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\scheme\PlainSocketFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */