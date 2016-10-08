package org.apache.http.impl.conn;

import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NoRouteToHostException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Lookup;
import org.apache.http.config.SocketConfig;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.HttpClientConnectionOperator;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.UnsupportedSchemeException;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Immutable
public class DefaultHttpClientConnectionOperator
  implements HttpClientConnectionOperator
{
  static final String SOCKET_FACTORY_REGISTRY = "http.socket-factory-registry";
  private final DnsResolver dnsResolver;
  private final Log log = LogFactory.getLog(getClass());
  private final SchemePortResolver schemePortResolver;
  private final Lookup<ConnectionSocketFactory> socketFactoryRegistry;
  
  public DefaultHttpClientConnectionOperator(Lookup<ConnectionSocketFactory> paramLookup, SchemePortResolver paramSchemePortResolver, DnsResolver paramDnsResolver)
  {
    Args.notNull(paramLookup, "Socket factory registry");
    this.socketFactoryRegistry = paramLookup;
    if (paramSchemePortResolver != null)
    {
      this.schemePortResolver = paramSchemePortResolver;
      if (paramDnsResolver == null) {
        break label53;
      }
    }
    for (;;)
    {
      this.dnsResolver = paramDnsResolver;
      return;
      paramSchemePortResolver = DefaultSchemePortResolver.INSTANCE;
      break;
      label53:
      paramDnsResolver = SystemDefaultDnsResolver.INSTANCE;
    }
  }
  
  private Lookup<ConnectionSocketFactory> getSocketFactoryRegistry(HttpContext paramHttpContext)
  {
    Lookup localLookup = (Lookup)paramHttpContext.getAttribute("http.socket-factory-registry");
    paramHttpContext = localLookup;
    if (localLookup == null) {
      paramHttpContext = this.socketFactoryRegistry;
    }
    return paramHttpContext;
  }
  
  public void connect(ManagedHttpClientConnection paramManagedHttpClientConnection, HttpHost paramHttpHost, InetSocketAddress paramInetSocketAddress, int paramInt, SocketConfig paramSocketConfig, HttpContext paramHttpContext)
  {
    ConnectionSocketFactory localConnectionSocketFactory = (ConnectionSocketFactory)getSocketFactoryRegistry(paramHttpContext).lookup(paramHttpHost.getSchemeName());
    if (localConnectionSocketFactory == null) {
      throw new UnsupportedSchemeException(paramHttpHost.getSchemeName() + " protocol is not supported");
    }
    InetAddress[] arrayOfInetAddress;
    int k;
    int i;
    if (paramHttpHost.getAddress() != null)
    {
      arrayOfInetAddress = new InetAddress[] { paramHttpHost.getAddress() };
      k = this.schemePortResolver.resolve(paramHttpHost);
      i = 0;
    }
    Object localObject;
    int j;
    label327:
    label386:
    label409:
    label452:
    for (;;)
    {
      if (i < arrayOfInetAddress.length)
      {
        localObject = arrayOfInetAddress[i];
        if (i != arrayOfInetAddress.length - 1) {
          break label327;
        }
      }
      for (j = 1;; j = 0)
      {
        Socket localSocket = localConnectionSocketFactory.createSocket(paramHttpContext);
        localSocket.setSoTimeout(paramSocketConfig.getSoTimeout());
        localSocket.setReuseAddress(paramSocketConfig.isSoReuseAddress());
        localSocket.setTcpNoDelay(paramSocketConfig.isTcpNoDelay());
        localSocket.setKeepAlive(paramSocketConfig.isSoKeepAlive());
        int m = paramSocketConfig.getSoLinger();
        if (m >= 0) {
          localSocket.setSoLinger(true, m);
        }
        paramManagedHttpClientConnection.bind(localSocket);
        localObject = new InetSocketAddress((InetAddress)localObject, k);
        if (this.log.isDebugEnabled()) {
          this.log.debug("Connecting to " + localObject);
        }
        try
        {
          paramManagedHttpClientConnection.bind(localConnectionSocketFactory.connectSocket(paramInt, localSocket, paramHttpHost, (InetSocketAddress)localObject, paramInetSocketAddress, paramHttpContext));
          if (this.log.isDebugEnabled()) {
            this.log.debug("Connection established " + paramManagedHttpClientConnection);
          }
          return;
        }
        catch (SocketTimeoutException localSocketTimeoutException)
        {
          if (j == 0) {
            break label409;
          }
          throw new ConnectTimeoutException(localSocketTimeoutException, paramHttpHost, arrayOfInetAddress);
        }
        catch (ConnectException localConnectException)
        {
          if (j == 0) {
            break label409;
          }
          if (!"Connection timed out".equals(localConnectException.getMessage())) {
            break label386;
          }
          throw new ConnectTimeoutException(localConnectException, paramHttpHost, arrayOfInetAddress);
          throw new HttpHostConnectException(localConnectException, paramHttpHost, arrayOfInetAddress);
        }
        catch (NoRouteToHostException localNoRouteToHostException)
        {
          if (j == 0) {
            break label409;
          }
          throw localNoRouteToHostException;
          if (!this.log.isDebugEnabled()) {
            break label452;
          }
          this.log.debug("Connect to " + localObject + " timed out. Connection will be retried using another IP address");
          i += 1;
        }
        arrayOfInetAddress = this.dnsResolver.resolve(paramHttpHost.getHostName());
        break;
      }
    }
  }
  
  public void upgrade(ManagedHttpClientConnection paramManagedHttpClientConnection, HttpHost paramHttpHost, HttpContext paramHttpContext)
  {
    Object localObject = (ConnectionSocketFactory)getSocketFactoryRegistry(HttpClientContext.adapt(paramHttpContext)).lookup(paramHttpHost.getSchemeName());
    if (localObject == null) {
      throw new UnsupportedSchemeException(paramHttpHost.getSchemeName() + " protocol is not supported");
    }
    if (!(localObject instanceof LayeredConnectionSocketFactory)) {
      throw new UnsupportedSchemeException(paramHttpHost.getSchemeName() + " protocol does not support connection upgrade");
    }
    localObject = (LayeredConnectionSocketFactory)localObject;
    Socket localSocket = paramManagedHttpClientConnection.getSocket();
    int i = this.schemePortResolver.resolve(paramHttpHost);
    paramManagedHttpClientConnection.bind(((LayeredConnectionSocketFactory)localObject).createLayeredSocket(localSocket, paramHttpHost.getHostName(), i, paramHttpContext));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\DefaultHttpClientConnectionOperator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */