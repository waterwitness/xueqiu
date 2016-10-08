package org.apache.http.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.http.Header;
import org.apache.http.HttpConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntity;
import org.apache.http.HttpInetConnection;
import org.apache.http.HttpMessage;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.config.MessageConstraints;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.entity.LaxContentLengthStrategy;
import org.apache.http.impl.entity.StrictContentLengthStrategy;
import org.apache.http.impl.io.ChunkedInputStream;
import org.apache.http.impl.io.ChunkedOutputStream;
import org.apache.http.impl.io.ContentLengthInputStream;
import org.apache.http.impl.io.ContentLengthOutputStream;
import org.apache.http.impl.io.EmptyInputStream;
import org.apache.http.impl.io.HttpTransportMetricsImpl;
import org.apache.http.impl.io.IdentityInputStream;
import org.apache.http.impl.io.IdentityOutputStream;
import org.apache.http.impl.io.SessionInputBufferImpl;
import org.apache.http.impl.io.SessionOutputBufferImpl;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.NetUtils;

@NotThreadSafe
public class BHttpConnectionBase
  implements HttpConnection, HttpInetConnection
{
  private final HttpConnectionMetricsImpl connMetrics;
  private final SessionInputBufferImpl inbuffer;
  private final ContentLengthStrategy incomingContentStrategy;
  private final MessageConstraints messageConstraints;
  private final SessionOutputBufferImpl outbuffer;
  private final ContentLengthStrategy outgoingContentStrategy;
  private final AtomicReference<Socket> socketHolder;
  
  protected BHttpConnectionBase(int paramInt1, int paramInt2, CharsetDecoder paramCharsetDecoder, CharsetEncoder paramCharsetEncoder, MessageConstraints paramMessageConstraints, ContentLengthStrategy paramContentLengthStrategy1, ContentLengthStrategy paramContentLengthStrategy2)
  {
    Args.positive(paramInt1, "Buffer size");
    HttpTransportMetricsImpl localHttpTransportMetricsImpl1 = new HttpTransportMetricsImpl();
    HttpTransportMetricsImpl localHttpTransportMetricsImpl2 = new HttpTransportMetricsImpl();
    MessageConstraints localMessageConstraints;
    if (paramMessageConstraints != null)
    {
      localMessageConstraints = paramMessageConstraints;
      this.inbuffer = new SessionInputBufferImpl(localHttpTransportMetricsImpl1, paramInt1, -1, localMessageConstraints, paramCharsetDecoder);
      this.outbuffer = new SessionOutputBufferImpl(localHttpTransportMetricsImpl2, paramInt1, paramInt2, paramCharsetEncoder);
      this.messageConstraints = paramMessageConstraints;
      this.connMetrics = new HttpConnectionMetricsImpl(localHttpTransportMetricsImpl1, localHttpTransportMetricsImpl2);
      if (paramContentLengthStrategy1 == null) {
        break label136;
      }
      label99:
      this.incomingContentStrategy = paramContentLengthStrategy1;
      if (paramContentLengthStrategy2 == null) {
        break label144;
      }
    }
    for (;;)
    {
      this.outgoingContentStrategy = paramContentLengthStrategy2;
      this.socketHolder = new AtomicReference();
      return;
      localMessageConstraints = MessageConstraints.DEFAULT;
      break;
      label136:
      paramContentLengthStrategy1 = LaxContentLengthStrategy.INSTANCE;
      break label99;
      label144:
      paramContentLengthStrategy2 = StrictContentLengthStrategy.INSTANCE;
    }
  }
  
  private int fillInputBuffer(int paramInt)
  {
    Socket localSocket = (Socket)this.socketHolder.get();
    int i = localSocket.getSoTimeout();
    try
    {
      localSocket.setSoTimeout(paramInt);
      paramInt = this.inbuffer.fillBuffer();
      return paramInt;
    }
    finally
    {
      localSocket.setSoTimeout(i);
    }
  }
  
  protected boolean awaitInput(int paramInt)
  {
    if (this.inbuffer.hasBufferedData()) {
      return true;
    }
    fillInputBuffer(paramInt);
    return this.inbuffer.hasBufferedData();
  }
  
  public void bind(Socket paramSocket)
  {
    Args.notNull(paramSocket, "Socket");
    this.socketHolder.set(paramSocket);
    this.inbuffer.bind(null);
    this.outbuffer.bind(null);
  }
  
  /* Error */
  public void close()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 71	org/apache/http/impl/BHttpConnectionBase:socketHolder	Ljava/util/concurrent/atomic/AtomicReference;
    //   4: aconst_null
    //   5: invokevirtual 142	java/util/concurrent/atomic/AtomicReference:getAndSet	(Ljava/lang/Object;)Ljava/lang/Object;
    //   8: checkcast 96	java/net/Socket
    //   11: astore_1
    //   12: aload_1
    //   13: ifnull +29 -> 42
    //   16: aload_0
    //   17: getfield 46	org/apache/http/impl/BHttpConnectionBase:inbuffer	Lorg/apache/http/impl/io/SessionInputBufferImpl;
    //   20: invokevirtual 145	org/apache/http/impl/io/SessionInputBufferImpl:clear	()V
    //   23: aload_0
    //   24: getfield 53	org/apache/http/impl/BHttpConnectionBase:outbuffer	Lorg/apache/http/impl/io/SessionOutputBufferImpl;
    //   27: invokevirtual 148	org/apache/http/impl/io/SessionOutputBufferImpl:flush	()V
    //   30: aload_1
    //   31: invokevirtual 151	java/net/Socket:shutdownOutput	()V
    //   34: aload_1
    //   35: invokevirtual 154	java/net/Socket:shutdownInput	()V
    //   38: aload_1
    //   39: invokevirtual 156	java/net/Socket:close	()V
    //   42: return
    //   43: astore_2
    //   44: aload_1
    //   45: invokevirtual 156	java/net/Socket:close	()V
    //   48: aload_2
    //   49: athrow
    //   50: astore_2
    //   51: goto -17 -> 34
    //   54: astore_2
    //   55: goto -17 -> 38
    //   58: astore_2
    //   59: goto -21 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	BHttpConnectionBase
    //   11	34	1	localSocket	Socket
    //   43	6	2	localObject	Object
    //   50	1	2	localIOException1	IOException
    //   54	1	2	localIOException2	IOException
    //   58	1	2	localUnsupportedOperationException	UnsupportedOperationException
    // Exception table:
    //   from	to	target	type
    //   16	30	43	finally
    //   30	34	43	finally
    //   34	38	43	finally
    //   30	34	50	java/io/IOException
    //   34	38	54	java/io/IOException
    //   30	34	58	java/lang/UnsupportedOperationException
    //   34	38	58	java/lang/UnsupportedOperationException
  }
  
  protected InputStream createInputStream(long paramLong, SessionInputBuffer paramSessionInputBuffer)
  {
    if (paramLong == -2L) {
      return new ChunkedInputStream(paramSessionInputBuffer, this.messageConstraints);
    }
    if (paramLong == -1L) {
      return new IdentityInputStream(paramSessionInputBuffer);
    }
    if (paramLong == 0L) {
      return EmptyInputStream.INSTANCE;
    }
    return new ContentLengthInputStream(paramSessionInputBuffer, paramLong);
  }
  
  protected OutputStream createOutputStream(long paramLong, SessionOutputBuffer paramSessionOutputBuffer)
  {
    if (paramLong == -2L) {
      return new ChunkedOutputStream(2048, paramSessionOutputBuffer);
    }
    if (paramLong == -1L) {
      return new IdentityOutputStream(paramSessionOutputBuffer);
    }
    return new ContentLengthOutputStream(paramSessionOutputBuffer, paramLong);
  }
  
  protected void doFlush()
  {
    this.outbuffer.flush();
  }
  
  protected void ensureOpen()
  {
    Socket localSocket = (Socket)this.socketHolder.get();
    if (localSocket != null) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Connection is not open");
      if (!this.inbuffer.isBound()) {
        this.inbuffer.bind(getSocketInputStream(localSocket));
      }
      if (!this.outbuffer.isBound()) {
        this.outbuffer.bind(getSocketOutputStream(localSocket));
      }
      return;
    }
  }
  
  public InetAddress getLocalAddress()
  {
    Socket localSocket = (Socket)this.socketHolder.get();
    if (localSocket != null) {
      return localSocket.getLocalAddress();
    }
    return null;
  }
  
  public int getLocalPort()
  {
    Socket localSocket = (Socket)this.socketHolder.get();
    if (localSocket != null) {
      return localSocket.getLocalPort();
    }
    return -1;
  }
  
  public HttpConnectionMetrics getMetrics()
  {
    return this.connMetrics;
  }
  
  public InetAddress getRemoteAddress()
  {
    Socket localSocket = (Socket)this.socketHolder.get();
    if (localSocket != null) {
      return localSocket.getInetAddress();
    }
    return null;
  }
  
  public int getRemotePort()
  {
    Socket localSocket = (Socket)this.socketHolder.get();
    if (localSocket != null) {
      return localSocket.getPort();
    }
    return -1;
  }
  
  protected SessionInputBuffer getSessionInputBuffer()
  {
    return this.inbuffer;
  }
  
  protected SessionOutputBuffer getSessionOutputBuffer()
  {
    return this.outbuffer;
  }
  
  public Socket getSocket()
  {
    return (Socket)this.socketHolder.get();
  }
  
  public InputStream getSocketInputStream(Socket paramSocket)
  {
    return paramSocket.getInputStream();
  }
  
  public OutputStream getSocketOutputStream(Socket paramSocket)
  {
    return paramSocket.getOutputStream();
  }
  
  public int getSocketTimeout()
  {
    Socket localSocket = (Socket)this.socketHolder.get();
    if (localSocket != null) {
      try
      {
        int i = localSocket.getSoTimeout();
        return i;
      }
      catch (SocketException localSocketException)
      {
        return -1;
      }
    }
    return -1;
  }
  
  protected void incrementRequestCount()
  {
    this.connMetrics.incrementRequestCount();
  }
  
  protected void incrementResponseCount()
  {
    this.connMetrics.incrementResponseCount();
  }
  
  public boolean isOpen()
  {
    return this.socketHolder.get() != null;
  }
  
  public boolean isStale()
  {
    if (!isOpen()) {}
    for (;;)
    {
      return true;
      try
      {
        int i = fillInputBuffer(1);
        if (i >= 0) {
          return false;
        }
      }
      catch (SocketTimeoutException localSocketTimeoutException)
      {
        return false;
      }
      catch (IOException localIOException) {}
    }
    return true;
  }
  
  protected HttpEntity prepareInput(HttpMessage paramHttpMessage)
  {
    BasicHttpEntity localBasicHttpEntity = new BasicHttpEntity();
    long l = this.incomingContentStrategy.determineLength(paramHttpMessage);
    Object localObject = createInputStream(l, this.inbuffer);
    if (l == -2L)
    {
      localBasicHttpEntity.setChunked(true);
      localBasicHttpEntity.setContentLength(-1L);
      localBasicHttpEntity.setContent((InputStream)localObject);
    }
    for (;;)
    {
      localObject = paramHttpMessage.getFirstHeader("Content-Type");
      if (localObject != null) {
        localBasicHttpEntity.setContentType((Header)localObject);
      }
      paramHttpMessage = paramHttpMessage.getFirstHeader("Content-Encoding");
      if (paramHttpMessage != null) {
        localBasicHttpEntity.setContentEncoding(paramHttpMessage);
      }
      return localBasicHttpEntity;
      if (l == -1L)
      {
        localBasicHttpEntity.setChunked(false);
        localBasicHttpEntity.setContentLength(-1L);
        localBasicHttpEntity.setContent((InputStream)localObject);
      }
      else
      {
        localBasicHttpEntity.setChunked(false);
        localBasicHttpEntity.setContentLength(l);
        localBasicHttpEntity.setContent((InputStream)localObject);
      }
    }
  }
  
  protected OutputStream prepareOutput(HttpMessage paramHttpMessage)
  {
    return createOutputStream(this.outgoingContentStrategy.determineLength(paramHttpMessage), this.outbuffer);
  }
  
  public void setSocketTimeout(int paramInt)
  {
    Socket localSocket = (Socket)this.socketHolder.get();
    if (localSocket != null) {}
    try
    {
      localSocket.setSoTimeout(paramInt);
      return;
    }
    catch (SocketException localSocketException) {}
  }
  
  public void shutdown()
  {
    Socket localSocket = (Socket)this.socketHolder.getAndSet(null);
    if (localSocket != null) {}
    try
    {
      localSocket.setSoLinger(true, 0);
      localSocket.close();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      localSocket.close();
      return;
    }
    finally
    {
      localObject = finally;
      localSocket.close();
      throw ((Throwable)localObject);
    }
  }
  
  public String toString()
  {
    Object localObject = (Socket)this.socketHolder.get();
    if (localObject != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      SocketAddress localSocketAddress = ((Socket)localObject).getRemoteSocketAddress();
      localObject = ((Socket)localObject).getLocalSocketAddress();
      if ((localSocketAddress != null) && (localObject != null))
      {
        NetUtils.formatAddress(localStringBuilder, (SocketAddress)localObject);
        localStringBuilder.append("<->");
        NetUtils.formatAddress(localStringBuilder, localSocketAddress);
      }
      return localStringBuilder.toString();
    }
    return "[Not bound]";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\BHttpConnectionBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */