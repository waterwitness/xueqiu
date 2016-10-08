package org.apache.http.impl.conn;

import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.HttpInetSocketAddress;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeLayeredSocketFactory;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SchemeSocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
@ThreadSafe
public class DefaultClientConnectionOperator
  implements ClientConnectionOperator
{
  protected final DnsResolver dnsResolver;
  private final Log log = LogFactory.getLog(getClass());
  protected final SchemeRegistry schemeRegistry;
  
  public DefaultClientConnectionOperator(SchemeRegistry paramSchemeRegistry)
  {
    Args.notNull(paramSchemeRegistry, "Scheme registry");
    this.schemeRegistry = paramSchemeRegistry;
    this.dnsResolver = new SystemDefaultDnsResolver();
  }
  
  public DefaultClientConnectionOperator(SchemeRegistry paramSchemeRegistry, DnsResolver paramDnsResolver)
  {
    Args.notNull(paramSchemeRegistry, "Scheme registry");
    Args.notNull(paramDnsResolver, "DNS resolver");
    this.schemeRegistry = paramSchemeRegistry;
    this.dnsResolver = paramDnsResolver;
  }
  
  private SchemeRegistry getSchemeRegistry(HttpContext paramHttpContext)
  {
    SchemeRegistry localSchemeRegistry = (SchemeRegistry)paramHttpContext.getAttribute("http.scheme-registry");
    paramHttpContext = localSchemeRegistry;
    if (localSchemeRegistry == null) {
      paramHttpContext = this.schemeRegistry;
    }
    return paramHttpContext;
  }
  
  public OperatedClientConnection createConnection()
  {
    return new DefaultClientConnection();
  }
  
  public void openConnection(OperatedClientConnection paramOperatedClientConnection, HttpHost paramHttpHost, InetAddress paramInetAddress, HttpContext paramHttpContext, HttpParams paramHttpParams)
  {
    Args.notNull(paramOperatedClientConnection, "Connection");
    Args.notNull(paramHttpHost, "Target host");
    Args.notNull(paramHttpParams, "HTTP parameters");
    boolean bool;
    Object localObject1;
    SchemeSocketFactory localSchemeSocketFactory;
    int i;
    label87:
    int j;
    label115:
    Socket localSocket;
    HttpInetSocketAddress localHttpInetSocketAddress;
    if (!paramOperatedClientConnection.isOpen())
    {
      bool = true;
      Asserts.check(bool, "Connection must not be open");
      localObject1 = getSchemeRegistry(paramHttpContext).getScheme(paramHttpHost.getSchemeName());
      localSchemeSocketFactory = ((Scheme)localObject1).getSchemeSocketFactory();
      InetAddress[] arrayOfInetAddress = resolveHostname(paramHttpHost.getHostName());
      int k = ((Scheme)localObject1).resolvePort(paramHttpHost.getPort());
      i = 0;
      if (i < arrayOfInetAddress.length)
      {
        localObject1 = arrayOfInetAddress[i];
        if (i != arrayOfInetAddress.length - 1) {
          break label272;
        }
        j = 1;
        localSocket = localSchemeSocketFactory.createSocket(paramHttpParams);
        paramOperatedClientConnection.opening(localSocket, paramHttpHost);
        localHttpInetSocketAddress = new HttpInetSocketAddress(paramHttpHost, (InetAddress)localObject1, k);
        localObject1 = null;
        if (paramInetAddress != null) {
          localObject1 = new InetSocketAddress(paramInetAddress, 0);
        }
        if (this.log.isDebugEnabled()) {
          this.log.debug("Connecting to " + localHttpInetSocketAddress);
        }
      }
    }
    for (;;)
    {
      try
      {
        localObject1 = localSchemeSocketFactory.connectSocket(localSocket, localHttpInetSocketAddress, (InetSocketAddress)localObject1, paramHttpParams);
        if (localSocket == localObject1) {
          break label350;
        }
        paramOperatedClientConnection.opening((Socket)localObject1, paramHttpHost);
        prepareSocket((Socket)localObject1, paramHttpContext, paramHttpParams);
        paramOperatedClientConnection.openCompleted(localSchemeSocketFactory.isSecure((Socket)localObject1), paramHttpParams);
        return;
      }
      catch (ConnectException localConnectException)
      {
        if (j == 0) {
          continue;
        }
        throw localConnectException;
      }
      catch (ConnectTimeoutException localConnectTimeoutException)
      {
        label272:
        if (j == 0) {
          continue;
        }
        throw localConnectTimeoutException;
        if (!this.log.isDebugEnabled()) {
          continue;
        }
        this.log.debug("Connect to " + localHttpInetSocketAddress + " timed out. Connection will be retried using another IP address");
        i += 1;
      }
      bool = false;
      break;
      j = 0;
      break label115;
      break label87;
      label350:
      Object localObject2 = localSocket;
    }
  }
  
  protected void prepareSocket(Socket paramSocket, HttpContext paramHttpContext, HttpParams paramHttpParams)
  {
    paramSocket.setTcpNoDelay(HttpConnectionParams.getTcpNoDelay(paramHttpParams));
    paramSocket.setSoTimeout(HttpConnectionParams.getSoTimeout(paramHttpParams));
    int i = HttpConnectionParams.getLinger(paramHttpParams);
    if (i >= 0) {
      if (i <= 0) {
        break label44;
      }
    }
    label44:
    for (boolean bool = true;; bool = false)
    {
      paramSocket.setSoLinger(bool, i);
      return;
    }
  }
  
  protected InetAddress[] resolveHostname(String paramString)
  {
    return this.dnsResolver.resolve(paramString);
  }
  
  public void updateSecureConnection(OperatedClientConnection paramOperatedClientConnection, HttpHost paramHttpHost, HttpContext paramHttpContext, HttpParams paramHttpParams)
  {
    Args.notNull(paramOperatedClientConnection, "Connection");
    Args.notNull(paramHttpHost, "Target host");
    Args.notNull(paramHttpParams, "Parameters");
    Asserts.check(paramOperatedClientConnection.isOpen(), "Connection must be open");
    Object localObject = getSchemeRegistry(paramHttpContext).getScheme(paramHttpHost.getSchemeName());
    Asserts.check(((Scheme)localObject).getSchemeSocketFactory() instanceof SchemeLayeredSocketFactory, "Socket factory must implement SchemeLayeredSocketFactory");
    SchemeLayeredSocketFactory localSchemeLayeredSocketFactory = (SchemeLayeredSocketFactory)((Scheme)localObject).getSchemeSocketFactory();
    localObject = localSchemeLayeredSocketFactory.createLayeredSocket(paramOperatedClientConnection.getSocket(), paramHttpHost.getHostName(), ((Scheme)localObject).resolvePort(paramHttpHost.getPort()), paramHttpParams);
    prepareSocket((Socket)localObject, paramHttpContext, paramHttpParams);
    paramOperatedClientConnection.update((Socket)localObject, paramHttpHost, localSchemeLayeredSocketFactory.isSecure((Socket)localObject), paramHttpParams);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\DefaultClientConnectionOperator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */