package org.apache.http.impl.conn;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSession;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.protocol.HttpContext;

@NotThreadSafe
class CPoolProxy
  implements ManagedHttpClientConnection, HttpContext
{
  private volatile CPoolEntry poolEntry;
  
  CPoolProxy(CPoolEntry paramCPoolEntry)
  {
    this.poolEntry = paramCPoolEntry;
  }
  
  public static CPoolEntry detach(HttpClientConnection paramHttpClientConnection)
  {
    return getProxy(paramHttpClientConnection).detach();
  }
  
  public static CPoolEntry getPoolEntry(HttpClientConnection paramHttpClientConnection)
  {
    paramHttpClientConnection = getProxy(paramHttpClientConnection).getPoolEntry();
    if (paramHttpClientConnection == null) {
      throw new ConnectionShutdownException();
    }
    return paramHttpClientConnection;
  }
  
  private static CPoolProxy getProxy(HttpClientConnection paramHttpClientConnection)
  {
    if (!CPoolProxy.class.isInstance(paramHttpClientConnection)) {
      throw new IllegalStateException("Unexpected connection proxy class: " + paramHttpClientConnection.getClass());
    }
    return (CPoolProxy)CPoolProxy.class.cast(paramHttpClientConnection);
  }
  
  public static HttpClientConnection newProxy(CPoolEntry paramCPoolEntry)
  {
    return new CPoolProxy(paramCPoolEntry);
  }
  
  public void bind(Socket paramSocket)
  {
    getValidConnection().bind(paramSocket);
  }
  
  public void close()
  {
    CPoolEntry localCPoolEntry = this.poolEntry;
    if (localCPoolEntry != null) {
      localCPoolEntry.closeConnection();
    }
  }
  
  CPoolEntry detach()
  {
    CPoolEntry localCPoolEntry = this.poolEntry;
    this.poolEntry = null;
    return localCPoolEntry;
  }
  
  public void flush()
  {
    getValidConnection().flush();
  }
  
  public Object getAttribute(String paramString)
  {
    ManagedHttpClientConnection localManagedHttpClientConnection = getValidConnection();
    if ((localManagedHttpClientConnection instanceof HttpContext)) {
      return ((HttpContext)localManagedHttpClientConnection).getAttribute(paramString);
    }
    return null;
  }
  
  ManagedHttpClientConnection getConnection()
  {
    CPoolEntry localCPoolEntry = this.poolEntry;
    if (localCPoolEntry == null) {
      return null;
    }
    return (ManagedHttpClientConnection)localCPoolEntry.getConnection();
  }
  
  public String getId()
  {
    return getValidConnection().getId();
  }
  
  public InetAddress getLocalAddress()
  {
    return getValidConnection().getLocalAddress();
  }
  
  public int getLocalPort()
  {
    return getValidConnection().getLocalPort();
  }
  
  public HttpConnectionMetrics getMetrics()
  {
    return getValidConnection().getMetrics();
  }
  
  CPoolEntry getPoolEntry()
  {
    return this.poolEntry;
  }
  
  public InetAddress getRemoteAddress()
  {
    return getValidConnection().getRemoteAddress();
  }
  
  public int getRemotePort()
  {
    return getValidConnection().getRemotePort();
  }
  
  public SSLSession getSSLSession()
  {
    return getValidConnection().getSSLSession();
  }
  
  public Socket getSocket()
  {
    return getValidConnection().getSocket();
  }
  
  public int getSocketTimeout()
  {
    return getValidConnection().getSocketTimeout();
  }
  
  ManagedHttpClientConnection getValidConnection()
  {
    ManagedHttpClientConnection localManagedHttpClientConnection = getConnection();
    if (localManagedHttpClientConnection == null) {
      throw new ConnectionShutdownException();
    }
    return localManagedHttpClientConnection;
  }
  
  public boolean isOpen()
  {
    boolean bool2 = false;
    CPoolEntry localCPoolEntry = this.poolEntry;
    boolean bool1 = bool2;
    if (localCPoolEntry != null)
    {
      bool1 = bool2;
      if (!localCPoolEntry.isClosed()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean isResponseAvailable(int paramInt)
  {
    return getValidConnection().isResponseAvailable(paramInt);
  }
  
  public boolean isStale()
  {
    ManagedHttpClientConnection localManagedHttpClientConnection = getConnection();
    if (localManagedHttpClientConnection != null) {
      return localManagedHttpClientConnection.isStale();
    }
    return true;
  }
  
  public void receiveResponseEntity(HttpResponse paramHttpResponse)
  {
    getValidConnection().receiveResponseEntity(paramHttpResponse);
  }
  
  public HttpResponse receiveResponseHeader()
  {
    return getValidConnection().receiveResponseHeader();
  }
  
  public Object removeAttribute(String paramString)
  {
    ManagedHttpClientConnection localManagedHttpClientConnection = getValidConnection();
    if ((localManagedHttpClientConnection instanceof HttpContext)) {
      return ((HttpContext)localManagedHttpClientConnection).removeAttribute(paramString);
    }
    return null;
  }
  
  public void sendRequestEntity(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
  {
    getValidConnection().sendRequestEntity(paramHttpEntityEnclosingRequest);
  }
  
  public void sendRequestHeader(HttpRequest paramHttpRequest)
  {
    getValidConnection().sendRequestHeader(paramHttpRequest);
  }
  
  public void setAttribute(String paramString, Object paramObject)
  {
    ManagedHttpClientConnection localManagedHttpClientConnection = getValidConnection();
    if ((localManagedHttpClientConnection instanceof HttpContext)) {
      ((HttpContext)localManagedHttpClientConnection).setAttribute(paramString, paramObject);
    }
  }
  
  public void setSocketTimeout(int paramInt)
  {
    getValidConnection().setSocketTimeout(paramInt);
  }
  
  public void shutdown()
  {
    CPoolEntry localCPoolEntry = this.poolEntry;
    if (localCPoolEntry != null) {
      localCPoolEntry.shutdownConnection();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("CPoolProxy{");
    ManagedHttpClientConnection localManagedHttpClientConnection = getConnection();
    if (localManagedHttpClientConnection != null) {
      localStringBuilder.append(localManagedHttpClientConnection);
    }
    for (;;)
    {
      localStringBuilder.append('}');
      return localStringBuilder.toString();
      localStringBuilder.append("detached");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\CPoolProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */