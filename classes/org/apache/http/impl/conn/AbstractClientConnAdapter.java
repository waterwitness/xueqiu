package org.apache.http.impl.conn;

import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.protocol.HttpContext;

@Deprecated
@NotThreadSafe
public abstract class AbstractClientConnAdapter
  implements ManagedClientConnection, HttpContext
{
  private final ClientConnectionManager connManager;
  private volatile long duration;
  private volatile boolean markedReusable;
  private volatile boolean released;
  private volatile OperatedClientConnection wrappedConnection;
  
  protected AbstractClientConnAdapter(ClientConnectionManager paramClientConnectionManager, OperatedClientConnection paramOperatedClientConnection)
  {
    this.connManager = paramClientConnectionManager;
    this.wrappedConnection = paramOperatedClientConnection;
    this.markedReusable = false;
    this.released = false;
    this.duration = Long.MAX_VALUE;
  }
  
  /* Error */
  public void abortConnection()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 32	org/apache/http/impl/conn/AbstractClientConnAdapter:released	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 32	org/apache/http/impl/conn/AbstractClientConnAdapter:released	Z
    //   19: aload_0
    //   20: invokevirtual 43	org/apache/http/impl/conn/AbstractClientConnAdapter:unmarkReusable	()V
    //   23: aload_0
    //   24: invokevirtual 46	org/apache/http/impl/conn/AbstractClientConnAdapter:shutdown	()V
    //   27: aload_0
    //   28: getfield 26	org/apache/http/impl/conn/AbstractClientConnAdapter:connManager	Lorg/apache/http/conn/ClientConnectionManager;
    //   31: aload_0
    //   32: aload_0
    //   33: getfield 36	org/apache/http/impl/conn/AbstractClientConnAdapter:duration	J
    //   36: getstatic 52	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   39: invokeinterface 58 5 0
    //   44: goto -33 -> 11
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: athrow
    //   52: astore_1
    //   53: goto -26 -> 27
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	AbstractClientConnAdapter
    //   47	4	1	localObject	Object
    //   52	1	1	localIOException	java.io.IOException
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	47	finally
    //   14	23	47	finally
    //   23	27	47	finally
    //   27	44	47	finally
    //   23	27	52	java/io/IOException
  }
  
  @Deprecated
  protected final void assertNotAborted()
  {
    if (isReleased()) {
      throw new InterruptedIOException("Connection has been shut down");
    }
  }
  
  protected final void assertValid(OperatedClientConnection paramOperatedClientConnection)
  {
    if ((isReleased()) || (paramOperatedClientConnection == null)) {
      throw new ConnectionShutdownException();
    }
  }
  
  public void bind(Socket paramSocket)
  {
    throw new UnsupportedOperationException();
  }
  
  public void detach()
  {
    try
    {
      this.wrappedConnection = null;
      this.duration = Long.MAX_VALUE;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void flush()
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    localOperatedClientConnection.flush();
  }
  
  public Object getAttribute(String paramString)
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    if ((localOperatedClientConnection instanceof HttpContext)) {
      return ((HttpContext)localOperatedClientConnection).getAttribute(paramString);
    }
    return null;
  }
  
  public InetAddress getLocalAddress()
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    return localOperatedClientConnection.getLocalAddress();
  }
  
  public int getLocalPort()
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    return localOperatedClientConnection.getLocalPort();
  }
  
  public ClientConnectionManager getManager()
  {
    return this.connManager;
  }
  
  public HttpConnectionMetrics getMetrics()
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    return localOperatedClientConnection.getMetrics();
  }
  
  public InetAddress getRemoteAddress()
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    return localOperatedClientConnection.getRemoteAddress();
  }
  
  public int getRemotePort()
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    return localOperatedClientConnection.getRemotePort();
  }
  
  public SSLSession getSSLSession()
  {
    Object localObject = getWrappedConnection();
    assertValid((OperatedClientConnection)localObject);
    if (!isOpen()) {
      return null;
    }
    localObject = ((OperatedClientConnection)localObject).getSocket();
    if ((localObject instanceof SSLSocket)) {}
    for (localObject = ((SSLSocket)localObject).getSession();; localObject = null) {
      return (SSLSession)localObject;
    }
  }
  
  public Socket getSocket()
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    if (!isOpen()) {
      return null;
    }
    return localOperatedClientConnection.getSocket();
  }
  
  public int getSocketTimeout()
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    return localOperatedClientConnection.getSocketTimeout();
  }
  
  protected OperatedClientConnection getWrappedConnection()
  {
    return this.wrappedConnection;
  }
  
  public boolean isMarkedReusable()
  {
    return this.markedReusable;
  }
  
  public boolean isOpen()
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    if (localOperatedClientConnection == null) {
      return false;
    }
    return localOperatedClientConnection.isOpen();
  }
  
  protected boolean isReleased()
  {
    return this.released;
  }
  
  public boolean isResponseAvailable(int paramInt)
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    return localOperatedClientConnection.isResponseAvailable(paramInt);
  }
  
  public boolean isSecure()
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    return localOperatedClientConnection.isSecure();
  }
  
  public boolean isStale()
  {
    if (isReleased()) {}
    OperatedClientConnection localOperatedClientConnection;
    do
    {
      return true;
      localOperatedClientConnection = getWrappedConnection();
    } while (localOperatedClientConnection == null);
    return localOperatedClientConnection.isStale();
  }
  
  public void markReusable()
  {
    this.markedReusable = true;
  }
  
  public void receiveResponseEntity(HttpResponse paramHttpResponse)
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    unmarkReusable();
    localOperatedClientConnection.receiveResponseEntity(paramHttpResponse);
  }
  
  public HttpResponse receiveResponseHeader()
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    unmarkReusable();
    return localOperatedClientConnection.receiveResponseHeader();
  }
  
  /* Error */
  public void releaseConnection()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 32	org/apache/http/impl/conn/AbstractClientConnAdapter:released	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 32	org/apache/http/impl/conn/AbstractClientConnAdapter:released	Z
    //   19: aload_0
    //   20: getfield 26	org/apache/http/impl/conn/AbstractClientConnAdapter:connManager	Lorg/apache/http/conn/ClientConnectionManager;
    //   23: aload_0
    //   24: aload_0
    //   25: getfield 36	org/apache/http/impl/conn/AbstractClientConnAdapter:duration	J
    //   28: getstatic 52	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   31: invokeinterface 58 5 0
    //   36: goto -25 -> 11
    //   39: astore_1
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_1
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	AbstractClientConnAdapter
    //   39	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	39	finally
    //   14	36	39	finally
  }
  
  public Object removeAttribute(String paramString)
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    if ((localOperatedClientConnection instanceof HttpContext)) {
      return ((HttpContext)localOperatedClientConnection).removeAttribute(paramString);
    }
    return null;
  }
  
  public void sendRequestEntity(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    unmarkReusable();
    localOperatedClientConnection.sendRequestEntity(paramHttpEntityEnclosingRequest);
  }
  
  public void sendRequestHeader(HttpRequest paramHttpRequest)
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    unmarkReusable();
    localOperatedClientConnection.sendRequestHeader(paramHttpRequest);
  }
  
  public void setAttribute(String paramString, Object paramObject)
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    if ((localOperatedClientConnection instanceof HttpContext)) {
      ((HttpContext)localOperatedClientConnection).setAttribute(paramString, paramObject);
    }
  }
  
  public void setIdleDuration(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong > 0L)
    {
      this.duration = paramTimeUnit.toMillis(paramLong);
      return;
    }
    this.duration = -1L;
  }
  
  public void setSocketTimeout(int paramInt)
  {
    OperatedClientConnection localOperatedClientConnection = getWrappedConnection();
    assertValid(localOperatedClientConnection);
    localOperatedClientConnection.setSocketTimeout(paramInt);
  }
  
  public void unmarkReusable()
  {
    this.markedReusable = false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\AbstractClientConnAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */