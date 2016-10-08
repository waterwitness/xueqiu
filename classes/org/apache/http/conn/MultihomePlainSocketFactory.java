package org.apache.http.conn;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
@Immutable
public final class MultihomePlainSocketFactory
  implements SocketFactory
{
  private static final MultihomePlainSocketFactory DEFAULT_FACTORY = new MultihomePlainSocketFactory();
  
  public static MultihomePlainSocketFactory getSocketFactory()
  {
    return DEFAULT_FACTORY;
  }
  
  public final Socket connectSocket(Socket paramSocket, String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2, HttpParams paramHttpParams)
  {
    Args.notNull(paramString, "Target host");
    Args.notNull(paramHttpParams, "HTTP parameters");
    if (paramSocket == null) {
      paramSocket = createSocket();
    }
    for (;;)
    {
      if ((paramInetAddress != null) || (paramInt2 > 0))
      {
        if (paramInt2 > 0) {
          paramSocket.bind(new InetSocketAddress(paramInetAddress, paramInt2));
        }
      }
      else
      {
        paramInt2 = HttpConnectionParams.getConnectionTimeout(paramHttpParams);
        paramString = InetAddress.getAllByName(paramString);
        paramInetAddress = new ArrayList(paramString.length);
        paramInetAddress.addAll(Arrays.asList(paramString));
        Collections.shuffle(paramInetAddress);
        paramHttpParams = paramInetAddress.iterator();
        paramInetAddress = null;
        paramString = paramSocket;
        paramSocket = paramInetAddress;
      }
      for (;;)
      {
        if (paramHttpParams.hasNext()) {
          paramInetAddress = (InetAddress)paramHttpParams.next();
        }
        try
        {
          paramString.connect(new InetSocketAddress(paramInetAddress, paramInt1), paramInt2);
          if (paramSocket == null) {
            break label204;
          }
          throw paramSocket;
        }
        catch (SocketTimeoutException paramSocket)
        {
          throw new ConnectTimeoutException("Connect to " + paramInetAddress + " timed out");
        }
        catch (IOException paramSocket)
        {
          paramString = new Socket();
        }
        paramInt2 = 0;
        break;
      }
      label204:
      return paramString;
    }
  }
  
  public final Socket createSocket()
  {
    return new Socket();
  }
  
  public final boolean isSecure(Socket paramSocket)
  {
    Args.notNull(paramSocket, "Socket");
    if (!paramSocket.isClosed()) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Socket is closed");
      return false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\MultihomePlainSocketFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */