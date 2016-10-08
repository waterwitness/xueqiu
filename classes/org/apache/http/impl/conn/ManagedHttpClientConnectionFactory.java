package org.apache.http.impl.conn;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.conn.HttpConnectionFactory;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.entity.LaxContentLengthStrategy;
import org.apache.http.impl.entity.StrictContentLengthStrategy;
import org.apache.http.impl.io.DefaultHttpRequestWriterFactory;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriterFactory;

@Immutable
public class ManagedHttpClientConnectionFactory
  implements HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection>
{
  private static final AtomicLong COUNTER = new AtomicLong();
  public static final ManagedHttpClientConnectionFactory INSTANCE = new ManagedHttpClientConnectionFactory();
  private final Log headerlog = LogFactory.getLog("org.apache.http.headers");
  private final ContentLengthStrategy incomingContentStrategy;
  private final Log log = LogFactory.getLog(DefaultManagedHttpClientConnection.class);
  private final ContentLengthStrategy outgoingContentStrategy;
  private final HttpMessageWriterFactory<HttpRequest> requestWriterFactory;
  private final HttpMessageParserFactory<HttpResponse> responseParserFactory;
  private final Log wirelog = LogFactory.getLog("org.apache.http.wire");
  
  public ManagedHttpClientConnectionFactory()
  {
    this(null, null);
  }
  
  public ManagedHttpClientConnectionFactory(HttpMessageParserFactory<HttpResponse> paramHttpMessageParserFactory)
  {
    this(null, paramHttpMessageParserFactory);
  }
  
  public ManagedHttpClientConnectionFactory(HttpMessageWriterFactory<HttpRequest> paramHttpMessageWriterFactory, HttpMessageParserFactory<HttpResponse> paramHttpMessageParserFactory)
  {
    this(paramHttpMessageWriterFactory, paramHttpMessageParserFactory, null, null);
  }
  
  public ManagedHttpClientConnectionFactory(HttpMessageWriterFactory<HttpRequest> paramHttpMessageWriterFactory, HttpMessageParserFactory<HttpResponse> paramHttpMessageParserFactory, ContentLengthStrategy paramContentLengthStrategy1, ContentLengthStrategy paramContentLengthStrategy2)
  {
    if (paramHttpMessageWriterFactory != null)
    {
      this.requestWriterFactory = paramHttpMessageWriterFactory;
      if (paramHttpMessageParserFactory == null) {
        break label77;
      }
      label44:
      this.responseParserFactory = paramHttpMessageParserFactory;
      if (paramContentLengthStrategy1 == null) {
        break label84;
      }
      label53:
      this.incomingContentStrategy = paramContentLengthStrategy1;
      if (paramContentLengthStrategy2 == null) {
        break label91;
      }
    }
    for (;;)
    {
      this.outgoingContentStrategy = paramContentLengthStrategy2;
      return;
      paramHttpMessageWriterFactory = DefaultHttpRequestWriterFactory.INSTANCE;
      break;
      label77:
      paramHttpMessageParserFactory = DefaultHttpResponseParserFactory.INSTANCE;
      break label44;
      label84:
      paramContentLengthStrategy1 = LaxContentLengthStrategy.INSTANCE;
      break label53;
      label91:
      paramContentLengthStrategy2 = StrictContentLengthStrategy.INSTANCE;
    }
  }
  
  public ManagedHttpClientConnection create(HttpRoute paramHttpRoute, ConnectionConfig paramConnectionConfig)
  {
    CharsetDecoder localCharsetDecoder;
    CharsetEncoder localCharsetEncoder;
    Charset localCharset;
    if (paramConnectionConfig != null)
    {
      localCharsetDecoder = null;
      localCharsetEncoder = null;
      localCharset = paramConnectionConfig.getCharset();
      if (paramConnectionConfig.getMalformedInputAction() == null) {
        break label170;
      }
      paramHttpRoute = paramConnectionConfig.getMalformedInputAction();
      label28:
      if (paramConnectionConfig.getUnmappableInputAction() == null) {
        break label177;
      }
    }
    label170:
    label177:
    for (CodingErrorAction localCodingErrorAction = paramConnectionConfig.getUnmappableInputAction();; localCodingErrorAction = CodingErrorAction.REPORT)
    {
      if (localCharset != null)
      {
        localCharsetDecoder = localCharset.newDecoder();
        localCharsetDecoder.onMalformedInput(paramHttpRoute);
        localCharsetDecoder.onUnmappableCharacter(localCodingErrorAction);
        localCharsetEncoder = localCharset.newEncoder();
        localCharsetEncoder.onMalformedInput(paramHttpRoute);
        localCharsetEncoder.onUnmappableCharacter(localCodingErrorAction);
      }
      return new LoggingManagedHttpClientConnection("http-outgoing-" + Long.toString(COUNTER.getAndIncrement()), this.log, this.headerlog, this.wirelog, paramConnectionConfig.getBufferSize(), paramConnectionConfig.getFragmentSizeHint(), localCharsetDecoder, localCharsetEncoder, paramConnectionConfig.getMessageConstraints(), this.incomingContentStrategy, this.outgoingContentStrategy, this.requestWriterFactory, this.responseParserFactory);
      paramConnectionConfig = ConnectionConfig.DEFAULT;
      break;
      paramHttpRoute = CodingErrorAction.REPORT;
      break label28;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\ManagedHttpClientConnectionFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */