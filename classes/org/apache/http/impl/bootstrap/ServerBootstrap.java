package org.apache.http.impl.bootstrap;

import java.net.InetAddress;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLContext;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponseFactory;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.SocketConfig;
import org.apache.http.impl.DefaultBHttpServerConnection;
import org.apache.http.impl.DefaultBHttpServerConnectionFactory;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.DefaultHttpResponseFactory;
import org.apache.http.protocol.HttpExpectationVerifier;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpProcessorBuilder;
import org.apache.http.protocol.HttpRequestHandler;
import org.apache.http.protocol.HttpRequestHandlerMapper;
import org.apache.http.protocol.HttpService;
import org.apache.http.protocol.ResponseConnControl;
import org.apache.http.protocol.ResponseContent;
import org.apache.http.protocol.ResponseDate;
import org.apache.http.protocol.ResponseServer;
import org.apache.http.protocol.UriHttpRequestHandlerMapper;

public class ServerBootstrap
{
  private ConnectionReuseStrategy connStrategy;
  private ConnectionConfig connectionConfig;
  private HttpConnectionFactory<? extends DefaultBHttpServerConnection> connectionFactory;
  private ExceptionLogger exceptionLogger;
  private HttpExpectationVerifier expectationVerifier;
  private Map<String, HttpRequestHandler> handlerMap;
  private HttpRequestHandlerMapper handlerMapper;
  private HttpProcessor httpProcessor;
  private int listenerPort;
  private InetAddress localAddress;
  private LinkedList<HttpRequestInterceptor> requestFirst;
  private LinkedList<HttpRequestInterceptor> requestLast;
  private HttpResponseFactory responseFactory;
  private LinkedList<HttpResponseInterceptor> responseFirst;
  private LinkedList<HttpResponseInterceptor> responseLast;
  private String serverInfo;
  private ServerSocketFactory serverSocketFactory;
  private SocketConfig socketConfig;
  private SSLContext sslContext;
  private SSLServerSetupHandler sslSetupHandler;
  
  public static ServerBootstrap bootstrap()
  {
    return new ServerBootstrap();
  }
  
  public final ServerBootstrap addInterceptorFirst(HttpRequestInterceptor paramHttpRequestInterceptor)
  {
    if (paramHttpRequestInterceptor == null) {
      return this;
    }
    if (this.requestFirst == null) {
      this.requestFirst = new LinkedList();
    }
    this.requestFirst.addFirst(paramHttpRequestInterceptor);
    return this;
  }
  
  public final ServerBootstrap addInterceptorFirst(HttpResponseInterceptor paramHttpResponseInterceptor)
  {
    if (paramHttpResponseInterceptor == null) {
      return this;
    }
    if (this.responseFirst == null) {
      this.responseFirst = new LinkedList();
    }
    this.responseFirst.addFirst(paramHttpResponseInterceptor);
    return this;
  }
  
  public final ServerBootstrap addInterceptorLast(HttpRequestInterceptor paramHttpRequestInterceptor)
  {
    if (paramHttpRequestInterceptor == null) {
      return this;
    }
    if (this.requestLast == null) {
      this.requestLast = new LinkedList();
    }
    this.requestLast.addLast(paramHttpRequestInterceptor);
    return this;
  }
  
  public final ServerBootstrap addInterceptorLast(HttpResponseInterceptor paramHttpResponseInterceptor)
  {
    if (paramHttpResponseInterceptor == null) {
      return this;
    }
    if (this.responseLast == null) {
      this.responseLast = new LinkedList();
    }
    this.responseLast.addLast(paramHttpResponseInterceptor);
    return this;
  }
  
  public HttpServer create()
  {
    Object localObject2 = this.httpProcessor;
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject3 = HttpProcessorBuilder.create();
      if (this.requestFirst != null)
      {
        localObject1 = this.requestFirst.iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((HttpProcessorBuilder)localObject3).addFirst((HttpRequestInterceptor)((Iterator)localObject1).next());
        }
      }
      if (this.responseFirst != null)
      {
        localObject1 = this.responseFirst.iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((HttpProcessorBuilder)localObject3).addFirst((HttpResponseInterceptor)((Iterator)localObject1).next());
        }
      }
      localObject2 = this.serverInfo;
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = "Apache-HttpCore/1.1";
      }
      ((HttpProcessorBuilder)localObject3).addAll(new HttpResponseInterceptor[] { new ResponseDate(), new ResponseServer((String)localObject1), new ResponseContent(), new ResponseConnControl() });
      if (this.requestLast != null)
      {
        localObject1 = this.requestLast.iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((HttpProcessorBuilder)localObject3).addLast((HttpRequestInterceptor)((Iterator)localObject1).next());
        }
      }
      if (this.responseLast != null)
      {
        localObject1 = this.responseLast.iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((HttpProcessorBuilder)localObject3).addLast((HttpResponseInterceptor)((Iterator)localObject1).next());
        }
      }
      localObject1 = ((HttpProcessorBuilder)localObject3).build();
    }
    Object localObject3 = this.handlerMapper;
    localObject2 = localObject3;
    if (localObject3 == null)
    {
      localObject3 = new UriHttpRequestHandlerMapper();
      localObject2 = localObject3;
      if (this.handlerMap != null)
      {
        localObject4 = this.handlerMap.entrySet().iterator();
        for (;;)
        {
          localObject2 = localObject3;
          if (!((Iterator)localObject4).hasNext()) {
            break;
          }
          localObject2 = (Map.Entry)((Iterator)localObject4).next();
          ((UriHttpRequestHandlerMapper)localObject3).register((String)((Map.Entry)localObject2).getKey(), (HttpRequestHandler)((Map.Entry)localObject2).getValue());
        }
      }
    }
    Object localObject4 = this.connStrategy;
    localObject3 = localObject4;
    if (localObject4 == null) {
      localObject3 = DefaultConnectionReuseStrategy.INSTANCE;
    }
    Object localObject5 = this.responseFactory;
    localObject4 = localObject5;
    if (localObject5 == null) {
      localObject4 = DefaultHttpResponseFactory.INSTANCE;
    }
    localObject5 = new HttpService((HttpProcessor)localObject1, (ConnectionReuseStrategy)localObject3, (HttpResponseFactory)localObject4, (HttpRequestHandlerMapper)localObject2, this.expectationVerifier);
    localObject2 = this.serverSocketFactory;
    localObject1 = localObject2;
    label452:
    int i;
    label483:
    InetAddress localInetAddress;
    if (localObject2 == null)
    {
      if (this.sslContext != null) {
        localObject1 = this.sslContext.getServerSocketFactory();
      }
    }
    else
    {
      localObject3 = this.connectionFactory;
      localObject2 = localObject3;
      if (localObject3 == null)
      {
        if (this.connectionConfig == null) {
          break label532;
        }
        localObject2 = new DefaultBHttpServerConnectionFactory(this.connectionConfig);
      }
      localObject4 = this.exceptionLogger;
      localObject3 = localObject4;
      if (localObject4 == null) {
        localObject3 = ExceptionLogger.NO_OP;
      }
      if (this.listenerPort <= 0) {
        break label539;
      }
      i = this.listenerPort;
      localInetAddress = this.localAddress;
      if (this.socketConfig == null) {
        break label545;
      }
    }
    label532:
    label539:
    label545:
    for (localObject4 = this.socketConfig;; localObject4 = SocketConfig.DEFAULT)
    {
      return new HttpServer(i, localInetAddress, (SocketConfig)localObject4, (ServerSocketFactory)localObject1, (HttpService)localObject5, (HttpConnectionFactory)localObject2, this.sslSetupHandler, (ExceptionLogger)localObject3);
      localObject1 = ServerSocketFactory.getDefault();
      break;
      localObject2 = DefaultBHttpServerConnectionFactory.INSTANCE;
      break label452;
      i = 0;
      break label483;
    }
  }
  
  public final ServerBootstrap registerHandler(String paramString, HttpRequestHandler paramHttpRequestHandler)
  {
    if ((paramString == null) || (paramHttpRequestHandler == null)) {
      return this;
    }
    if (this.handlerMap == null) {
      this.handlerMap = new HashMap();
    }
    this.handlerMap.put(paramString, paramHttpRequestHandler);
    return this;
  }
  
  public final ServerBootstrap setConnectionConfig(ConnectionConfig paramConnectionConfig)
  {
    this.connectionConfig = paramConnectionConfig;
    return this;
  }
  
  public final ServerBootstrap setConnectionFactory(HttpConnectionFactory<? extends DefaultBHttpServerConnection> paramHttpConnectionFactory)
  {
    this.connectionFactory = paramHttpConnectionFactory;
    return this;
  }
  
  public final ServerBootstrap setConnectionReuseStrategy(ConnectionReuseStrategy paramConnectionReuseStrategy)
  {
    this.connStrategy = paramConnectionReuseStrategy;
    return this;
  }
  
  public final ServerBootstrap setExceptionLogger(ExceptionLogger paramExceptionLogger)
  {
    this.exceptionLogger = paramExceptionLogger;
    return this;
  }
  
  public final ServerBootstrap setExpectationVerifier(HttpExpectationVerifier paramHttpExpectationVerifier)
  {
    this.expectationVerifier = paramHttpExpectationVerifier;
    return this;
  }
  
  public final ServerBootstrap setHandlerMapper(HttpRequestHandlerMapper paramHttpRequestHandlerMapper)
  {
    this.handlerMapper = paramHttpRequestHandlerMapper;
    return this;
  }
  
  public final ServerBootstrap setHttpProcessor(HttpProcessor paramHttpProcessor)
  {
    this.httpProcessor = paramHttpProcessor;
    return this;
  }
  
  public final ServerBootstrap setListenerPort(int paramInt)
  {
    this.listenerPort = paramInt;
    return this;
  }
  
  public final ServerBootstrap setLocalAddress(InetAddress paramInetAddress)
  {
    this.localAddress = paramInetAddress;
    return this;
  }
  
  public final ServerBootstrap setResponseFactory(HttpResponseFactory paramHttpResponseFactory)
  {
    this.responseFactory = paramHttpResponseFactory;
    return this;
  }
  
  public final ServerBootstrap setServerInfo(String paramString)
  {
    this.serverInfo = paramString;
    return this;
  }
  
  public final ServerBootstrap setServerSocketFactory(ServerSocketFactory paramServerSocketFactory)
  {
    this.serverSocketFactory = paramServerSocketFactory;
    return this;
  }
  
  public final ServerBootstrap setSocketConfig(SocketConfig paramSocketConfig)
  {
    this.socketConfig = paramSocketConfig;
    return this;
  }
  
  public final ServerBootstrap setSslContext(SSLContext paramSSLContext)
  {
    this.sslContext = paramSSLContext;
    return this;
  }
  
  public final ServerBootstrap setSslSetupHandler(SSLServerSetupHandler paramSSLServerSetupHandler)
  {
    this.sslSetupHandler = paramSSLServerSetupHandler;
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\bootstrap\ServerBootstrap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */