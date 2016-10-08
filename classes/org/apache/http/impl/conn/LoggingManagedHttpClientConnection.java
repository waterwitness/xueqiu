package org.apache.http.impl.conn;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import org.apache.commons.logging.Log;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.config.MessageConstraints;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriterFactory;

@NotThreadSafe
class LoggingManagedHttpClientConnection
  extends DefaultManagedHttpClientConnection
{
  private final Log headerlog;
  private final Log log;
  private final Wire wire;
  
  public LoggingManagedHttpClientConnection(String paramString, Log paramLog1, Log paramLog2, Log paramLog3, int paramInt1, int paramInt2, CharsetDecoder paramCharsetDecoder, CharsetEncoder paramCharsetEncoder, MessageConstraints paramMessageConstraints, ContentLengthStrategy paramContentLengthStrategy1, ContentLengthStrategy paramContentLengthStrategy2, HttpMessageWriterFactory<HttpRequest> paramHttpMessageWriterFactory, HttpMessageParserFactory<HttpResponse> paramHttpMessageParserFactory)
  {
    super(paramString, paramInt1, paramInt2, paramCharsetDecoder, paramCharsetEncoder, paramMessageConstraints, paramContentLengthStrategy1, paramContentLengthStrategy2, paramHttpMessageWriterFactory, paramHttpMessageParserFactory);
    this.log = paramLog1;
    this.headerlog = paramLog2;
    this.wire = new Wire(paramLog3, paramString);
  }
  
  public void close()
  {
    if (this.log.isDebugEnabled()) {
      this.log.debug(getId() + ": Close connection");
    }
    super.close();
  }
  
  protected InputStream getSocketInputStream(Socket paramSocket)
  {
    paramSocket = super.getSocketInputStream(paramSocket);
    if (this.wire.enabled()) {
      return new LoggingInputStream(paramSocket, this.wire);
    }
    return paramSocket;
  }
  
  protected OutputStream getSocketOutputStream(Socket paramSocket)
  {
    paramSocket = super.getSocketOutputStream(paramSocket);
    if (this.wire.enabled()) {
      return new LoggingOutputStream(paramSocket, this.wire);
    }
    return paramSocket;
  }
  
  protected void onRequestSubmitted(HttpRequest paramHttpRequest)
  {
    if ((paramHttpRequest != null) && (this.headerlog.isDebugEnabled()))
    {
      this.headerlog.debug(getId() + " >> " + paramHttpRequest.getRequestLine().toString());
      paramHttpRequest = paramHttpRequest.getAllHeaders();
      int j = paramHttpRequest.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramHttpRequest[i];
        this.headerlog.debug(getId() + " >> " + localObject.toString());
        i += 1;
      }
    }
  }
  
  protected void onResponseReceived(HttpResponse paramHttpResponse)
  {
    if ((paramHttpResponse != null) && (this.headerlog.isDebugEnabled()))
    {
      this.headerlog.debug(getId() + " << " + paramHttpResponse.getStatusLine().toString());
      paramHttpResponse = paramHttpResponse.getAllHeaders();
      int j = paramHttpResponse.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramHttpResponse[i];
        this.headerlog.debug(getId() + " << " + localObject.toString());
        i += 1;
      }
    }
  }
  
  public void shutdown()
  {
    if (this.log.isDebugEnabled()) {
      this.log.debug(getId() + ": Shutdown connection");
    }
    super.shutdown();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\LoggingManagedHttpClientConnection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */