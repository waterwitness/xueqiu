package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.impl.SocketHttpClientConnection;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Deprecated
@NotThreadSafe
public class DefaultClientConnection
  extends SocketHttpClientConnection
  implements ManagedHttpClientConnection, OperatedClientConnection, HttpContext
{
  private final Map<String, Object> attributes = new HashMap();
  private boolean connSecure;
  private final Log headerLog = LogFactory.getLog("org.apache.http.headers");
  private final Log log = LogFactory.getLog(getClass());
  private volatile boolean shutdown;
  private volatile Socket socket;
  private HttpHost targetHost;
  private final Log wireLog = LogFactory.getLog("org.apache.http.wire");
  
  public void bind(Socket paramSocket)
  {
    bind(paramSocket, new BasicHttpParams());
  }
  
  public void close()
  {
    try
    {
      super.close();
      if (this.log.isDebugEnabled()) {
        this.log.debug("Connection " + this + " closed");
      }
      return;
    }
    catch (IOException localIOException)
    {
      this.log.debug("I/O error closing connection", localIOException);
    }
  }
  
  protected HttpMessageParser<HttpResponse> createResponseParser(SessionInputBuffer paramSessionInputBuffer, HttpResponseFactory paramHttpResponseFactory, HttpParams paramHttpParams)
  {
    return new DefaultHttpResponseParser(paramSessionInputBuffer, null, paramHttpResponseFactory, paramHttpParams);
  }
  
  protected SessionInputBuffer createSessionInputBuffer(Socket paramSocket, int paramInt, HttpParams paramHttpParams)
  {
    if (paramInt > 0) {}
    for (;;)
    {
      paramSocket = super.createSessionInputBuffer(paramSocket, paramInt, paramHttpParams);
      if (!this.wireLog.isDebugEnabled()) {
        break;
      }
      return new LoggingSessionInputBuffer(paramSocket, new Wire(this.wireLog), HttpProtocolParams.getHttpElementCharset(paramHttpParams));
      paramInt = 8192;
    }
    return paramSocket;
  }
  
  protected SessionOutputBuffer createSessionOutputBuffer(Socket paramSocket, int paramInt, HttpParams paramHttpParams)
  {
    if (paramInt > 0) {}
    for (;;)
    {
      paramSocket = super.createSessionOutputBuffer(paramSocket, paramInt, paramHttpParams);
      if (!this.wireLog.isDebugEnabled()) {
        break;
      }
      return new LoggingSessionOutputBuffer(paramSocket, new Wire(this.wireLog), HttpProtocolParams.getHttpElementCharset(paramHttpParams));
      paramInt = 8192;
    }
    return paramSocket;
  }
  
  public Object getAttribute(String paramString)
  {
    return this.attributes.get(paramString);
  }
  
  public String getId()
  {
    return null;
  }
  
  public SSLSession getSSLSession()
  {
    if ((this.socket instanceof SSLSocket)) {
      return ((SSLSocket)this.socket).getSession();
    }
    return null;
  }
  
  public final Socket getSocket()
  {
    return this.socket;
  }
  
  public final HttpHost getTargetHost()
  {
    return this.targetHost;
  }
  
  public final boolean isSecure()
  {
    return this.connSecure;
  }
  
  public void openCompleted(boolean paramBoolean, HttpParams paramHttpParams)
  {
    Args.notNull(paramHttpParams, "Parameters");
    assertNotOpen();
    this.connSecure = paramBoolean;
    bind(this.socket, paramHttpParams);
  }
  
  public void opening(Socket paramSocket, HttpHost paramHttpHost)
  {
    assertNotOpen();
    this.socket = paramSocket;
    this.targetHost = paramHttpHost;
    if (this.shutdown)
    {
      paramSocket.close();
      throw new InterruptedIOException("Connection already shutdown");
    }
  }
  
  public HttpResponse receiveResponseHeader()
  {
    HttpResponse localHttpResponse = super.receiveResponseHeader();
    if (this.log.isDebugEnabled()) {
      this.log.debug("Receiving response: " + localHttpResponse.getStatusLine());
    }
    if (this.headerLog.isDebugEnabled())
    {
      this.headerLog.debug("<< " + localHttpResponse.getStatusLine().toString());
      Header[] arrayOfHeader = localHttpResponse.getAllHeaders();
      int j = arrayOfHeader.length;
      int i = 0;
      while (i < j)
      {
        Header localHeader = arrayOfHeader[i];
        this.headerLog.debug("<< " + localHeader.toString());
        i += 1;
      }
    }
    return localHttpResponse;
  }
  
  public Object removeAttribute(String paramString)
  {
    return this.attributes.remove(paramString);
  }
  
  public void sendRequestHeader(HttpRequest paramHttpRequest)
  {
    if (this.log.isDebugEnabled()) {
      this.log.debug("Sending request: " + paramHttpRequest.getRequestLine());
    }
    super.sendRequestHeader(paramHttpRequest);
    if (this.headerLog.isDebugEnabled())
    {
      this.headerLog.debug(">> " + paramHttpRequest.getRequestLine().toString());
      paramHttpRequest = paramHttpRequest.getAllHeaders();
      int j = paramHttpRequest.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramHttpRequest[i];
        this.headerLog.debug(">> " + localObject.toString());
        i += 1;
      }
    }
  }
  
  public void setAttribute(String paramString, Object paramObject)
  {
    this.attributes.put(paramString, paramObject);
  }
  
  public void shutdown()
  {
    this.shutdown = true;
    try
    {
      super.shutdown();
      if (this.log.isDebugEnabled()) {
        this.log.debug("Connection " + this + " shut down");
      }
      Socket localSocket = this.socket;
      if (localSocket != null) {
        localSocket.close();
      }
      return;
    }
    catch (IOException localIOException)
    {
      this.log.debug("I/O error shutting down connection", localIOException);
    }
  }
  
  public void update(Socket paramSocket, HttpHost paramHttpHost, boolean paramBoolean, HttpParams paramHttpParams)
  {
    assertOpen();
    Args.notNull(paramHttpHost, "Target host");
    Args.notNull(paramHttpParams, "Parameters");
    if (paramSocket != null)
    {
      this.socket = paramSocket;
      bind(paramSocket, paramHttpParams);
    }
    this.targetHost = paramHttpHost;
    this.connSecure = paramBoolean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\DefaultClientConnection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */