package org.apache.http.impl.execchain;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthState;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.BasicRouteDirector;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRouteDirector;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.impl.auth.HttpAuthenticator;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtils;

@Immutable
public class MainClientExec
  implements ClientExecChain
{
  private final HttpAuthenticator authenticator;
  private final HttpClientConnectionManager connManager;
  private final ConnectionKeepAliveStrategy keepAliveStrategy;
  private final Log log = LogFactory.getLog(getClass());
  private final AuthenticationStrategy proxyAuthStrategy;
  private final HttpProcessor proxyHttpProcessor;
  private final HttpRequestExecutor requestExecutor;
  private final ConnectionReuseStrategy reuseStrategy;
  private final HttpRouteDirector routeDirector;
  private final AuthenticationStrategy targetAuthStrategy;
  private final UserTokenHandler userTokenHandler;
  
  public MainClientExec(HttpRequestExecutor paramHttpRequestExecutor, HttpClientConnectionManager paramHttpClientConnectionManager, ConnectionReuseStrategy paramConnectionReuseStrategy, ConnectionKeepAliveStrategy paramConnectionKeepAliveStrategy, AuthenticationStrategy paramAuthenticationStrategy1, AuthenticationStrategy paramAuthenticationStrategy2, UserTokenHandler paramUserTokenHandler)
  {
    this(paramHttpRequestExecutor, paramHttpClientConnectionManager, paramConnectionReuseStrategy, paramConnectionKeepAliveStrategy, new ImmutableHttpProcessor(new HttpRequestInterceptor[] { new RequestTargetHost() }), paramAuthenticationStrategy1, paramAuthenticationStrategy2, paramUserTokenHandler);
  }
  
  public MainClientExec(HttpRequestExecutor paramHttpRequestExecutor, HttpClientConnectionManager paramHttpClientConnectionManager, ConnectionReuseStrategy paramConnectionReuseStrategy, ConnectionKeepAliveStrategy paramConnectionKeepAliveStrategy, HttpProcessor paramHttpProcessor, AuthenticationStrategy paramAuthenticationStrategy1, AuthenticationStrategy paramAuthenticationStrategy2, UserTokenHandler paramUserTokenHandler)
  {
    Args.notNull(paramHttpRequestExecutor, "HTTP request executor");
    Args.notNull(paramHttpClientConnectionManager, "Client connection manager");
    Args.notNull(paramConnectionReuseStrategy, "Connection reuse strategy");
    Args.notNull(paramConnectionKeepAliveStrategy, "Connection keep alive strategy");
    Args.notNull(paramHttpProcessor, "Proxy HTTP processor");
    Args.notNull(paramAuthenticationStrategy1, "Target authentication strategy");
    Args.notNull(paramAuthenticationStrategy2, "Proxy authentication strategy");
    Args.notNull(paramUserTokenHandler, "User token handler");
    this.authenticator = new HttpAuthenticator();
    this.routeDirector = new BasicRouteDirector();
    this.requestExecutor = paramHttpRequestExecutor;
    this.connManager = paramHttpClientConnectionManager;
    this.reuseStrategy = paramConnectionReuseStrategy;
    this.keepAliveStrategy = paramConnectionKeepAliveStrategy;
    this.proxyHttpProcessor = paramHttpProcessor;
    this.targetAuthStrategy = paramAuthenticationStrategy1;
    this.proxyAuthStrategy = paramAuthenticationStrategy2;
    this.userTokenHandler = paramUserTokenHandler;
  }
  
  private boolean createTunnelToProxy(HttpRoute paramHttpRoute, int paramInt, HttpClientContext paramHttpClientContext)
  {
    throw new HttpException("Proxy chains are not supported.");
  }
  
  private boolean createTunnelToTarget(AuthState paramAuthState, HttpClientConnection paramHttpClientConnection, HttpRoute paramHttpRoute, HttpRequest paramHttpRequest, HttpClientContext paramHttpClientContext)
  {
    RequestConfig localRequestConfig = paramHttpClientContext.getRequestConfig();
    int j = localRequestConfig.getConnectTimeout();
    Object localObject = paramHttpRoute.getTargetHost();
    HttpHost localHttpHost = paramHttpRoute.getProxyHost();
    HttpResponse localHttpResponse = null;
    localObject = new BasicHttpRequest("CONNECT", ((HttpHost)localObject).toHostString(), paramHttpRequest.getProtocolVersion());
    this.requestExecutor.preProcess((HttpRequest)localObject, this.proxyHttpProcessor, paramHttpClientContext);
    paramHttpRequest = localHttpResponse;
    while (paramHttpRequest == null)
    {
      if (!paramHttpClientConnection.isOpen())
      {
        paramHttpRequest = this.connManager;
        if (j <= 0) {
          break label196;
        }
      }
      label196:
      for (int i = j;; i = 0)
      {
        paramHttpRequest.connect(paramHttpClientConnection, paramHttpRoute, i, paramHttpClientContext);
        ((HttpRequest)localObject).removeHeaders("Proxy-Authorization");
        this.authenticator.generateAuthResponse((HttpRequest)localObject, paramAuthState, paramHttpClientContext);
        localHttpResponse = this.requestExecutor.execute((HttpRequest)localObject, paramHttpClientConnection, paramHttpClientContext);
        if (localHttpResponse.getStatusLine().getStatusCode() >= 200) {
          break;
        }
        throw new HttpException("Unexpected response to CONNECT request: " + localHttpResponse.getStatusLine());
      }
      paramHttpRequest = localHttpResponse;
      if (localRequestConfig.isAuthenticationEnabled())
      {
        paramHttpRequest = localHttpResponse;
        if (this.authenticator.isAuthenticationRequested(localHttpHost, localHttpResponse, this.proxyAuthStrategy, paramAuthState, paramHttpClientContext))
        {
          paramHttpRequest = localHttpResponse;
          if (this.authenticator.handleAuthChallenge(localHttpHost, localHttpResponse, this.proxyAuthStrategy, paramAuthState, paramHttpClientContext))
          {
            if (this.reuseStrategy.keepAlive(localHttpResponse, paramHttpClientContext))
            {
              this.log.debug("Connection kept alive");
              EntityUtils.consume(localHttpResponse.getEntity());
            }
            for (;;)
            {
              paramHttpRequest = null;
              break;
              paramHttpClientConnection.close();
            }
          }
        }
      }
    }
    if (paramHttpRequest.getStatusLine().getStatusCode() > 299)
    {
      paramAuthState = paramHttpRequest.getEntity();
      if (paramAuthState != null) {
        paramHttpRequest.setEntity(new BufferedHttpEntity(paramAuthState));
      }
      paramHttpClientConnection.close();
      throw new TunnelRefusedException("CONNECT refused by proxy: " + paramHttpRequest.getStatusLine(), paramHttpRequest);
    }
    return false;
  }
  
  private boolean needAuthentication(AuthState paramAuthState1, AuthState paramAuthState2, HttpRoute paramHttpRoute, HttpResponse paramHttpResponse, HttpClientContext paramHttpClientContext)
  {
    Object localObject2;
    Object localObject1;
    if (paramHttpClientContext.getRequestConfig().isAuthenticationEnabled())
    {
      localObject2 = paramHttpClientContext.getTargetHost();
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = paramHttpRoute.getTargetHost();
      }
      if (((HttpHost)localObject1).getPort() >= 0) {
        break label178;
      }
      localObject1 = new HttpHost(((HttpHost)localObject1).getHostName(), paramHttpRoute.getTargetHost().getPort(), ((HttpHost)localObject1).getSchemeName());
    }
    label178:
    for (;;)
    {
      boolean bool1 = this.authenticator.isAuthenticationRequested((HttpHost)localObject1, paramHttpResponse, this.targetAuthStrategy, paramAuthState1, paramHttpClientContext);
      HttpHost localHttpHost = paramHttpRoute.getProxyHost();
      localObject2 = localHttpHost;
      if (localHttpHost == null) {
        localObject2 = paramHttpRoute.getTargetHost();
      }
      boolean bool2 = this.authenticator.isAuthenticationRequested((HttpHost)localObject2, paramHttpResponse, this.proxyAuthStrategy, paramAuthState2, paramHttpClientContext);
      if (bool1) {
        return this.authenticator.handleAuthChallenge((HttpHost)localObject1, paramHttpResponse, this.targetAuthStrategy, paramAuthState1, paramHttpClientContext);
      }
      if (bool2) {
        return this.authenticator.handleAuthChallenge((HttpHost)localObject2, paramHttpResponse, this.proxyAuthStrategy, paramAuthState2, paramHttpClientContext);
      }
      return false;
    }
  }
  
  void establishRoute(AuthState paramAuthState, HttpClientConnection paramHttpClientConnection, HttpRoute paramHttpRoute, HttpRequest paramHttpRequest, HttpClientContext paramHttpClientContext)
  {
    int i = paramHttpClientContext.getRequestConfig().getConnectTimeout();
    RouteTracker localRouteTracker = new RouteTracker(paramHttpRoute);
    Object localObject = localRouteTracker.toRoute();
    int k = this.routeDirector.nextStep(paramHttpRoute, (RouteInfo)localObject);
    int j;
    switch (k)
    {
    default: 
      throw new IllegalStateException("Unknown step indicator " + k + " from RouteDirector.");
    case 1: 
      localObject = this.connManager;
      if (i > 0)
      {
        j = i;
        label131:
        ((HttpClientConnectionManager)localObject).connect(paramHttpClientConnection, paramHttpRoute, j, paramHttpClientContext);
        localRouteTracker.connectTarget(paramHttpRoute.isSecure());
      }
      break;
    }
    while (k <= 0)
    {
      return;
      j = 0;
      break label131;
      localObject = this.connManager;
      if (i > 0) {}
      for (j = i;; j = 0)
      {
        ((HttpClientConnectionManager)localObject).connect(paramHttpClientConnection, paramHttpRoute, j, paramHttpClientContext);
        localRouteTracker.connectProxy(paramHttpRoute.getProxyHost(), false);
        break;
      }
      boolean bool = createTunnelToTarget(paramAuthState, paramHttpClientConnection, paramHttpRoute, paramHttpRequest, paramHttpClientContext);
      this.log.debug("Tunnel to target created.");
      localRouteTracker.tunnelTarget(bool);
      continue;
      j = ((HttpRoute)localObject).getHopCount() - 1;
      bool = createTunnelToProxy(paramHttpRoute, j, paramHttpClientContext);
      this.log.debug("Tunnel to proxy created.");
      localRouteTracker.tunnelProxy(paramHttpRoute.getHopTarget(j), bool);
      continue;
      this.connManager.upgrade(paramHttpClientConnection, paramHttpRoute, paramHttpClientContext);
      localRouteTracker.layerProtocol(paramHttpRoute.isSecure());
      continue;
      throw new HttpException("Unable to establish route: planned = " + paramHttpRoute + "; current = " + localObject);
      this.connManager.routeComplete(paramHttpClientConnection, paramHttpRoute, paramHttpClientContext);
    }
  }
  
  /* Error */
  public org.apache.http.client.methods.CloseableHttpResponse execute(HttpRoute paramHttpRoute, org.apache.http.client.methods.HttpRequestWrapper paramHttpRequestWrapper, HttpClientContext paramHttpClientContext, org.apache.http.client.methods.HttpExecutionAware paramHttpExecutionAware)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc_w 367
    //   4: invokestatic 67	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   7: pop
    //   8: aload_2
    //   9: ldc_w 369
    //   12: invokestatic 67	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   15: pop
    //   16: aload_3
    //   17: ldc_w 371
    //   20: invokestatic 67	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   23: pop
    //   24: aload_3
    //   25: invokevirtual 375	org/apache/http/client/protocol/HttpClientContext:getTargetAuthState	()Lorg/apache/http/auth/AuthState;
    //   28: astore 5
    //   30: aload 5
    //   32: ifnonnull +1147 -> 1179
    //   35: new 377	org/apache/http/auth/AuthState
    //   38: dup
    //   39: invokespecial 378	org/apache/http/auth/AuthState:<init>	()V
    //   42: astore 5
    //   44: aload_3
    //   45: ldc_w 380
    //   48: aload 5
    //   50: invokevirtual 384	org/apache/http/client/protocol/HttpClientContext:setAttribute	(Ljava/lang/String;Ljava/lang/Object;)V
    //   53: aload_3
    //   54: invokevirtual 387	org/apache/http/client/protocol/HttpClientContext:getProxyAuthState	()Lorg/apache/http/auth/AuthState;
    //   57: astore 7
    //   59: aload 7
    //   61: astore 6
    //   63: aload 7
    //   65: ifnonnull +21 -> 86
    //   68: new 377	org/apache/http/auth/AuthState
    //   71: dup
    //   72: invokespecial 378	org/apache/http/auth/AuthState:<init>	()V
    //   75: astore 6
    //   77: aload_3
    //   78: ldc_w 389
    //   81: aload 6
    //   83: invokevirtual 384	org/apache/http/client/protocol/HttpClientContext:setAttribute	(Ljava/lang/String;Ljava/lang/Object;)V
    //   86: aload_2
    //   87: instanceof 391
    //   90: ifeq +10 -> 100
    //   93: aload_2
    //   94: checkcast 391	org/apache/http/HttpEntityEnclosingRequest
    //   97: invokestatic 397	org/apache/http/impl/execchain/RequestEntityProxy:enhance	(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    //   100: aload_3
    //   101: invokevirtual 401	org/apache/http/client/protocol/HttpClientContext:getUserToken	()Ljava/lang/Object;
    //   104: astore 8
    //   106: aload_0
    //   107: getfield 95	org/apache/http/impl/execchain/MainClientExec:connManager	Lorg/apache/http/conn/HttpClientConnectionManager;
    //   110: aload_1
    //   111: aload 8
    //   113: invokeinterface 405 3 0
    //   118: astore 7
    //   120: aload 4
    //   122: ifnull +41 -> 163
    //   125: aload 4
    //   127: invokeinterface 410 1 0
    //   132: ifeq +22 -> 154
    //   135: aload 7
    //   137: invokeinterface 415 1 0
    //   142: pop
    //   143: new 417	org/apache/http/impl/execchain/RequestAbortedException
    //   146: dup
    //   147: ldc_w 419
    //   150: invokespecial 420	org/apache/http/impl/execchain/RequestAbortedException:<init>	(Ljava/lang/String;)V
    //   153: athrow
    //   154: aload 4
    //   156: aload 7
    //   158: invokeinterface 424 2 0
    //   163: aload_3
    //   164: invokevirtual 124	org/apache/http/client/protocol/HttpClientContext:getRequestConfig	()Lorg/apache/http/client/config/RequestConfig;
    //   167: astore 11
    //   169: aload 11
    //   171: invokevirtual 427	org/apache/http/client/config/RequestConfig:getConnectionRequestTimeout	()I
    //   174: istore 13
    //   176: iload 13
    //   178: ifle +170 -> 348
    //   181: iload 13
    //   183: i2l
    //   184: lstore 15
    //   186: aload 7
    //   188: lload 15
    //   190: getstatic 433	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   193: invokeinterface 437 4 0
    //   198: astore 12
    //   200: aload_3
    //   201: ldc_w 439
    //   204: aload 12
    //   206: invokevirtual 384	org/apache/http/client/protocol/HttpClientContext:setAttribute	(Ljava/lang/String;Ljava/lang/Object;)V
    //   209: aload 11
    //   211: invokevirtual 442	org/apache/http/client/config/RequestConfig:isStaleConnectionCheckEnabled	()Z
    //   214: ifeq +54 -> 268
    //   217: aload 12
    //   219: invokeinterface 170 1 0
    //   224: ifeq +44 -> 268
    //   227: aload_0
    //   228: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   231: ldc_w 444
    //   234: invokeinterface 236 2 0
    //   239: aload 12
    //   241: invokeinterface 447 1 0
    //   246: ifeq +22 -> 268
    //   249: aload_0
    //   250: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   253: ldc_w 449
    //   256: invokeinterface 236 2 0
    //   261: aload 12
    //   263: invokeinterface 249 1 0
    //   268: new 451	org/apache/http/impl/execchain/ConnectionHolder
    //   271: dup
    //   272: aload_0
    //   273: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   276: aload_0
    //   277: getfield 95	org/apache/http/impl/execchain/MainClientExec:connManager	Lorg/apache/http/conn/HttpClientConnectionManager;
    //   280: aload 12
    //   282: invokespecial 454	org/apache/http/impl/execchain/ConnectionHolder:<init>	(Lorg/apache/commons/logging/Log;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V
    //   285: astore 10
    //   287: aload 4
    //   289: ifnull +893 -> 1182
    //   292: aload 4
    //   294: aload 10
    //   296: invokeinterface 424 2 0
    //   301: goto +881 -> 1182
    //   304: iload 13
    //   306: iconst_1
    //   307: if_icmple +88 -> 395
    //   310: aload_2
    //   311: invokestatic 458	org/apache/http/impl/execchain/RequestEntityProxy:isRepeatable	(Lorg/apache/http/HttpRequest;)Z
    //   314: ifne +81 -> 395
    //   317: new 460	org/apache/http/client/NonRepeatableRequestException
    //   320: dup
    //   321: ldc_w 462
    //   324: invokespecial 463	org/apache/http/client/NonRepeatableRequestException:<init>	(Ljava/lang/String;)V
    //   327: athrow
    //   328: astore_1
    //   329: new 465	java/io/InterruptedIOException
    //   332: dup
    //   333: ldc_w 467
    //   336: invokespecial 468	java/io/InterruptedIOException:<init>	(Ljava/lang/String;)V
    //   339: astore_2
    //   340: aload_2
    //   341: aload_1
    //   342: invokevirtual 472	java/io/InterruptedIOException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   345: pop
    //   346: aload_2
    //   347: athrow
    //   348: lconst_0
    //   349: lstore 15
    //   351: goto -165 -> 186
    //   354: astore_1
    //   355: invokestatic 478	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   358: invokevirtual 481	java/lang/Thread:interrupt	()V
    //   361: new 417	org/apache/http/impl/execchain/RequestAbortedException
    //   364: dup
    //   365: ldc_w 419
    //   368: aload_1
    //   369: invokespecial 484	org/apache/http/impl/execchain/RequestAbortedException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   372: athrow
    //   373: astore_1
    //   374: aload_1
    //   375: invokevirtual 488	java/util/concurrent/ExecutionException:getCause	()Ljava/lang/Throwable;
    //   378: astore_2
    //   379: aload_2
    //   380: ifnonnull +794 -> 1174
    //   383: new 417	org/apache/http/impl/execchain/RequestAbortedException
    //   386: dup
    //   387: ldc_w 490
    //   390: aload_1
    //   391: invokespecial 484	org/apache/http/impl/execchain/RequestAbortedException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   394: athrow
    //   395: aload 4
    //   397: ifnull +32 -> 429
    //   400: aload 4
    //   402: invokeinterface 410 1 0
    //   407: ifeq +22 -> 429
    //   410: new 417	org/apache/http/impl/execchain/RequestAbortedException
    //   413: dup
    //   414: ldc_w 419
    //   417: invokespecial 420	org/apache/http/impl/execchain/RequestAbortedException:<init>	(Ljava/lang/String;)V
    //   420: athrow
    //   421: astore_1
    //   422: aload 10
    //   424: invokevirtual 493	org/apache/http/impl/execchain/ConnectionHolder:abortConnection	()V
    //   427: aload_1
    //   428: athrow
    //   429: aload 12
    //   431: invokeinterface 170 1 0
    //   436: ifne +40 -> 476
    //   439: aload_0
    //   440: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   443: new 202	java/lang/StringBuilder
    //   446: dup
    //   447: ldc_w 495
    //   450: invokespecial 205	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   453: aload_1
    //   454: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   457: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   460: invokeinterface 236 2 0
    //   465: aload_0
    //   466: aload 6
    //   468: aload 12
    //   470: aload_1
    //   471: aload_2
    //   472: aload_3
    //   473: invokevirtual 497	org/apache/http/impl/execchain/MainClientExec:establishRoute	(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)V
    //   476: aload 11
    //   478: invokevirtual 500	org/apache/http/client/config/RequestConfig:getSocketTimeout	()I
    //   481: istore 14
    //   483: iload 14
    //   485: iflt +12 -> 497
    //   488: aload 12
    //   490: iload 14
    //   492: invokeinterface 504 2 0
    //   497: aload 4
    //   499: ifnull +135 -> 634
    //   502: aload 4
    //   504: invokeinterface 410 1 0
    //   509: ifeq +125 -> 634
    //   512: new 417	org/apache/http/impl/execchain/RequestAbortedException
    //   515: dup
    //   516: ldc_w 419
    //   519: invokespecial 420	org/apache/http/impl/execchain/RequestAbortedException:<init>	(Ljava/lang/String;)V
    //   522: athrow
    //   523: astore_1
    //   524: aload 10
    //   526: invokevirtual 493	org/apache/http/impl/execchain/ConnectionHolder:abortConnection	()V
    //   529: aload_1
    //   530: athrow
    //   531: astore_1
    //   532: aload_0
    //   533: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   536: invokeinterface 507 1 0
    //   541: ifeq +16 -> 557
    //   544: aload_0
    //   545: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   548: aload_1
    //   549: invokevirtual 510	org/apache/http/impl/execchain/TunnelRefusedException:getMessage	()Ljava/lang/String;
    //   552: invokeinterface 236 2 0
    //   557: aload_1
    //   558: invokevirtual 514	org/apache/http/impl/execchain/TunnelRefusedException:getResponse	()Lorg/apache/http/HttpResponse;
    //   561: astore 7
    //   563: aload 8
    //   565: ifnonnull +603 -> 1168
    //   568: aload_0
    //   569: getfield 107	org/apache/http/impl/execchain/MainClientExec:userTokenHandler	Lorg/apache/http/client/UserTokenHandler;
    //   572: aload_3
    //   573: invokeinterface 519 2 0
    //   578: astore_1
    //   579: aload_3
    //   580: ldc_w 521
    //   583: aload_1
    //   584: invokevirtual 384	org/apache/http/client/protocol/HttpClientContext:setAttribute	(Ljava/lang/String;Ljava/lang/Object;)V
    //   587: aload_1
    //   588: ifnull +9 -> 597
    //   591: aload 10
    //   593: aload_1
    //   594: invokevirtual 524	org/apache/http/impl/execchain/ConnectionHolder:setState	(Ljava/lang/Object;)V
    //   597: aload 7
    //   599: invokeinterface 240 1 0
    //   604: astore_1
    //   605: aload_1
    //   606: ifnull +12 -> 618
    //   609: aload_1
    //   610: invokeinterface 529 1 0
    //   615: ifne +539 -> 1154
    //   618: aload 10
    //   620: invokevirtual 532	org/apache/http/impl/execchain/ConnectionHolder:releaseConnection	()V
    //   623: new 534	org/apache/http/impl/execchain/HttpResponseProxy
    //   626: dup
    //   627: aload 7
    //   629: aconst_null
    //   630: invokespecial 537	org/apache/http/impl/execchain/HttpResponseProxy:<init>	(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    //   633: areturn
    //   634: aload_0
    //   635: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   638: invokeinterface 507 1 0
    //   643: ifeq +32 -> 675
    //   646: aload_0
    //   647: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   650: new 202	java/lang/StringBuilder
    //   653: dup
    //   654: ldc_w 539
    //   657: invokespecial 205	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   660: aload_2
    //   661: invokevirtual 545	org/apache/http/client/methods/HttpRequestWrapper:getRequestLine	()Lorg/apache/http/RequestLine;
    //   664: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   667: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   670: invokeinterface 236 2 0
    //   675: aload_2
    //   676: ldc_w 547
    //   679: invokevirtual 551	org/apache/http/client/methods/HttpRequestWrapper:containsHeader	(Ljava/lang/String;)Z
    //   682: ifne +56 -> 738
    //   685: aload_0
    //   686: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   689: invokeinterface 507 1 0
    //   694: ifeq +33 -> 727
    //   697: aload_0
    //   698: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   701: new 202	java/lang/StringBuilder
    //   704: dup
    //   705: ldc_w 553
    //   708: invokespecial 205	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   711: aload 5
    //   713: invokevirtual 557	org/apache/http/auth/AuthState:getState	()Lorg/apache/http/auth/AuthProtocolState;
    //   716: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   719: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   722: invokeinterface 236 2 0
    //   727: aload_0
    //   728: getfield 86	org/apache/http/impl/execchain/MainClientExec:authenticator	Lorg/apache/http/impl/auth/HttpAuthenticator;
    //   731: aload_2
    //   732: aload 5
    //   734: aload_3
    //   735: invokevirtual 185	org/apache/http/impl/auth/HttpAuthenticator:generateAuthResponse	(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)V
    //   738: aload_2
    //   739: ldc -78
    //   741: invokevirtual 551	org/apache/http/client/methods/HttpRequestWrapper:containsHeader	(Ljava/lang/String;)Z
    //   744: ifne +63 -> 807
    //   747: aload_1
    //   748: invokevirtual 560	org/apache/http/conn/routing/HttpRoute:isTunnelled	()Z
    //   751: ifne +56 -> 807
    //   754: aload_0
    //   755: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   758: invokeinterface 507 1 0
    //   763: ifeq +33 -> 796
    //   766: aload_0
    //   767: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   770: new 202	java/lang/StringBuilder
    //   773: dup
    //   774: ldc_w 562
    //   777: invokespecial 205	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   780: aload 6
    //   782: invokevirtual 557	org/apache/http/auth/AuthState:getState	()Lorg/apache/http/auth/AuthProtocolState;
    //   785: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   788: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   791: invokeinterface 236 2 0
    //   796: aload_0
    //   797: getfield 86	org/apache/http/impl/execchain/MainClientExec:authenticator	Lorg/apache/http/impl/auth/HttpAuthenticator;
    //   800: aload_2
    //   801: aload 6
    //   803: aload_3
    //   804: invokevirtual 185	org/apache/http/impl/auth/HttpAuthenticator:generateAuthResponse	(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)V
    //   807: aload_0
    //   808: getfield 93	org/apache/http/impl/execchain/MainClientExec:requestExecutor	Lorg/apache/http/protocol/HttpRequestExecutor;
    //   811: aload_2
    //   812: aload 12
    //   814: aload_3
    //   815: invokevirtual 189	org/apache/http/protocol/HttpRequestExecutor:execute	(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    //   818: astore 9
    //   820: aload_0
    //   821: getfield 97	org/apache/http/impl/execchain/MainClientExec:reuseStrategy	Lorg/apache/http/ConnectionReuseStrategy;
    //   824: aload 9
    //   826: aload_3
    //   827: invokeinterface 228 3 0
    //   832: ifeq +198 -> 1030
    //   835: aload_0
    //   836: getfield 99	org/apache/http/impl/execchain/MainClientExec:keepAliveStrategy	Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    //   839: aload 9
    //   841: aload_3
    //   842: invokeinterface 568 3 0
    //   847: lstore 15
    //   849: aload_0
    //   850: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   853: invokeinterface 507 1 0
    //   858: ifeq +69 -> 927
    //   861: lload 15
    //   863: lconst_0
    //   864: lcmp
    //   865: ifle +332 -> 1197
    //   868: new 202	java/lang/StringBuilder
    //   871: dup
    //   872: ldc_w 570
    //   875: invokespecial 205	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   878: lload 15
    //   880: invokevirtual 573	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   883: ldc_w 575
    //   886: invokevirtual 307	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   889: getstatic 433	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   892: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   895: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   898: astore 7
    //   900: aload_0
    //   901: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   904: new 202	java/lang/StringBuilder
    //   907: dup
    //   908: ldc_w 577
    //   911: invokespecial 205	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   914: aload 7
    //   916: invokevirtual 307	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   919: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   922: invokeinterface 236 2 0
    //   927: aload 10
    //   929: lload 15
    //   931: getstatic 433	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   934: invokevirtual 581	org/apache/http/impl/execchain/ConnectionHolder:setValidFor	(JLjava/util/concurrent/TimeUnit;)V
    //   937: aload 10
    //   939: invokevirtual 584	org/apache/http/impl/execchain/ConnectionHolder:markReusable	()V
    //   942: aload 9
    //   944: astore 7
    //   946: aload_0
    //   947: aload 5
    //   949: aload 6
    //   951: aload_1
    //   952: aload 9
    //   954: aload_3
    //   955: invokespecial 586	org/apache/http/impl/execchain/MainClientExec:needAuthentication	(Lorg/apache/http/auth/AuthState;Lorg/apache/http/auth/AuthState;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/protocol/HttpClientContext;)Z
    //   958: ifeq -395 -> 563
    //   961: aload 9
    //   963: invokeinterface 240 1 0
    //   968: astore 7
    //   970: aload 10
    //   972: invokevirtual 589	org/apache/http/impl/execchain/ConnectionHolder:isReusable	()Z
    //   975: ifeq +71 -> 1046
    //   978: aload 7
    //   980: invokestatic 246	org/apache/http/util/EntityUtils:consume	(Lorg/apache/http/HttpEntity;)V
    //   983: aload_2
    //   984: invokevirtual 593	org/apache/http/client/methods/HttpRequestWrapper:getOriginal	()Lorg/apache/http/HttpRequest;
    //   987: astore 7
    //   989: aload 7
    //   991: ldc_w 547
    //   994: invokeinterface 594 2 0
    //   999: ifne +10 -> 1009
    //   1002: aload_2
    //   1003: ldc_w 547
    //   1006: invokevirtual 595	org/apache/http/client/methods/HttpRequestWrapper:removeHeaders	(Ljava/lang/String;)V
    //   1009: aload 7
    //   1011: ldc -78
    //   1013: invokeinterface 594 2 0
    //   1018: ifne +170 -> 1188
    //   1021: aload_2
    //   1022: ldc -78
    //   1024: invokevirtual 595	org/apache/http/client/methods/HttpRequestWrapper:removeHeaders	(Ljava/lang/String;)V
    //   1027: goto +161 -> 1188
    //   1030: aload 10
    //   1032: invokevirtual 598	org/apache/http/impl/execchain/ConnectionHolder:markNonReusable	()V
    //   1035: goto -93 -> 942
    //   1038: astore_1
    //   1039: aload 10
    //   1041: invokevirtual 493	org/apache/http/impl/execchain/ConnectionHolder:abortConnection	()V
    //   1044: aload_1
    //   1045: athrow
    //   1046: aload 12
    //   1048: invokeinterface 249 1 0
    //   1053: aload 6
    //   1055: invokevirtual 557	org/apache/http/auth/AuthState:getState	()Lorg/apache/http/auth/AuthProtocolState;
    //   1058: getstatic 604	org/apache/http/auth/AuthProtocolState:SUCCESS	Lorg/apache/http/auth/AuthProtocolState;
    //   1061: if_acmpne +41 -> 1102
    //   1064: aload 6
    //   1066: invokevirtual 608	org/apache/http/auth/AuthState:getAuthScheme	()Lorg/apache/http/auth/AuthScheme;
    //   1069: ifnull +33 -> 1102
    //   1072: aload 6
    //   1074: invokevirtual 608	org/apache/http/auth/AuthState:getAuthScheme	()Lorg/apache/http/auth/AuthScheme;
    //   1077: invokeinterface 613 1 0
    //   1082: ifeq +20 -> 1102
    //   1085: aload_0
    //   1086: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   1089: ldc_w 615
    //   1092: invokeinterface 236 2 0
    //   1097: aload 6
    //   1099: invokevirtual 618	org/apache/http/auth/AuthState:reset	()V
    //   1102: aload 5
    //   1104: invokevirtual 557	org/apache/http/auth/AuthState:getState	()Lorg/apache/http/auth/AuthProtocolState;
    //   1107: getstatic 604	org/apache/http/auth/AuthProtocolState:SUCCESS	Lorg/apache/http/auth/AuthProtocolState;
    //   1110: if_acmpne -127 -> 983
    //   1113: aload 5
    //   1115: invokevirtual 608	org/apache/http/auth/AuthState:getAuthScheme	()Lorg/apache/http/auth/AuthScheme;
    //   1118: ifnull -135 -> 983
    //   1121: aload 5
    //   1123: invokevirtual 608	org/apache/http/auth/AuthState:getAuthScheme	()Lorg/apache/http/auth/AuthScheme;
    //   1126: invokeinterface 613 1 0
    //   1131: ifeq -148 -> 983
    //   1134: aload_0
    //   1135: getfield 59	org/apache/http/impl/execchain/MainClientExec:log	Lorg/apache/commons/logging/Log;
    //   1138: ldc_w 620
    //   1141: invokeinterface 236 2 0
    //   1146: aload 5
    //   1148: invokevirtual 618	org/apache/http/auth/AuthState:reset	()V
    //   1151: goto -168 -> 983
    //   1154: new 534	org/apache/http/impl/execchain/HttpResponseProxy
    //   1157: dup
    //   1158: aload 7
    //   1160: aload 10
    //   1162: invokespecial 537	org/apache/http/impl/execchain/HttpResponseProxy:<init>	(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    //   1165: astore_1
    //   1166: aload_1
    //   1167: areturn
    //   1168: aload 8
    //   1170: astore_1
    //   1171: goto -584 -> 587
    //   1174: aload_2
    //   1175: astore_1
    //   1176: goto -793 -> 383
    //   1179: goto -1126 -> 53
    //   1182: iconst_1
    //   1183: istore 13
    //   1185: goto -881 -> 304
    //   1188: iload 13
    //   1190: iconst_1
    //   1191: iadd
    //   1192: istore 13
    //   1194: goto -890 -> 304
    //   1197: ldc_w 622
    //   1200: astore 7
    //   1202: goto -302 -> 900
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1205	0	this	MainClientExec
    //   0	1205	1	paramHttpRoute	HttpRoute
    //   0	1205	2	paramHttpRequestWrapper	org.apache.http.client.methods.HttpRequestWrapper
    //   0	1205	3	paramHttpClientContext	HttpClientContext
    //   0	1205	4	paramHttpExecutionAware	org.apache.http.client.methods.HttpExecutionAware
    //   28	1119	5	localAuthState	AuthState
    //   61	1037	6	localObject1	Object
    //   57	1144	7	localObject2	Object
    //   104	1065	8	localObject3	Object
    //   818	144	9	localHttpResponse	HttpResponse
    //   285	876	10	localConnectionHolder	ConnectionHolder
    //   167	310	11	localRequestConfig	RequestConfig
    //   198	849	12	localHttpClientConnection	HttpClientConnection
    //   174	1019	13	i	int
    //   481	10	14	j	int
    //   184	746	15	l	long
    // Exception table:
    //   from	to	target	type
    //   292	301	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   310	328	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   400	421	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   429	465	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   465	476	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   476	483	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   488	497	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   502	523	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   532	557	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   557	563	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   568	587	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   591	597	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   597	605	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   609	618	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   618	634	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   634	675	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   675	727	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   727	738	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   738	796	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   796	807	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   807	861	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   868	900	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   900	927	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   927	942	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   946	983	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   983	1009	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   1009	1027	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   1030	1035	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   1046	1102	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   1102	1151	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   1154	1166	328	org/apache/http/impl/conn/ConnectionShutdownException
    //   169	176	354	java/lang/InterruptedException
    //   186	200	354	java/lang/InterruptedException
    //   169	176	373	java/util/concurrent/ExecutionException
    //   186	200	373	java/util/concurrent/ExecutionException
    //   292	301	421	org/apache/http/HttpException
    //   310	328	421	org/apache/http/HttpException
    //   400	421	421	org/apache/http/HttpException
    //   429	465	421	org/apache/http/HttpException
    //   465	476	421	org/apache/http/HttpException
    //   476	483	421	org/apache/http/HttpException
    //   488	497	421	org/apache/http/HttpException
    //   502	523	421	org/apache/http/HttpException
    //   532	557	421	org/apache/http/HttpException
    //   557	563	421	org/apache/http/HttpException
    //   568	587	421	org/apache/http/HttpException
    //   591	597	421	org/apache/http/HttpException
    //   597	605	421	org/apache/http/HttpException
    //   609	618	421	org/apache/http/HttpException
    //   618	634	421	org/apache/http/HttpException
    //   634	675	421	org/apache/http/HttpException
    //   675	727	421	org/apache/http/HttpException
    //   727	738	421	org/apache/http/HttpException
    //   738	796	421	org/apache/http/HttpException
    //   796	807	421	org/apache/http/HttpException
    //   807	861	421	org/apache/http/HttpException
    //   868	900	421	org/apache/http/HttpException
    //   900	927	421	org/apache/http/HttpException
    //   927	942	421	org/apache/http/HttpException
    //   946	983	421	org/apache/http/HttpException
    //   983	1009	421	org/apache/http/HttpException
    //   1009	1027	421	org/apache/http/HttpException
    //   1030	1035	421	org/apache/http/HttpException
    //   1046	1102	421	org/apache/http/HttpException
    //   1102	1151	421	org/apache/http/HttpException
    //   1154	1166	421	org/apache/http/HttpException
    //   292	301	523	java/io/IOException
    //   310	328	523	java/io/IOException
    //   400	421	523	java/io/IOException
    //   429	465	523	java/io/IOException
    //   465	476	523	java/io/IOException
    //   476	483	523	java/io/IOException
    //   488	497	523	java/io/IOException
    //   502	523	523	java/io/IOException
    //   532	557	523	java/io/IOException
    //   557	563	523	java/io/IOException
    //   568	587	523	java/io/IOException
    //   591	597	523	java/io/IOException
    //   597	605	523	java/io/IOException
    //   609	618	523	java/io/IOException
    //   618	634	523	java/io/IOException
    //   634	675	523	java/io/IOException
    //   675	727	523	java/io/IOException
    //   727	738	523	java/io/IOException
    //   738	796	523	java/io/IOException
    //   796	807	523	java/io/IOException
    //   807	861	523	java/io/IOException
    //   868	900	523	java/io/IOException
    //   900	927	523	java/io/IOException
    //   927	942	523	java/io/IOException
    //   946	983	523	java/io/IOException
    //   983	1009	523	java/io/IOException
    //   1009	1027	523	java/io/IOException
    //   1030	1035	523	java/io/IOException
    //   1046	1102	523	java/io/IOException
    //   1102	1151	523	java/io/IOException
    //   1154	1166	523	java/io/IOException
    //   465	476	531	org/apache/http/impl/execchain/TunnelRefusedException
    //   292	301	1038	java/lang/RuntimeException
    //   310	328	1038	java/lang/RuntimeException
    //   400	421	1038	java/lang/RuntimeException
    //   429	465	1038	java/lang/RuntimeException
    //   465	476	1038	java/lang/RuntimeException
    //   476	483	1038	java/lang/RuntimeException
    //   488	497	1038	java/lang/RuntimeException
    //   502	523	1038	java/lang/RuntimeException
    //   532	557	1038	java/lang/RuntimeException
    //   557	563	1038	java/lang/RuntimeException
    //   568	587	1038	java/lang/RuntimeException
    //   591	597	1038	java/lang/RuntimeException
    //   597	605	1038	java/lang/RuntimeException
    //   609	618	1038	java/lang/RuntimeException
    //   618	634	1038	java/lang/RuntimeException
    //   634	675	1038	java/lang/RuntimeException
    //   675	727	1038	java/lang/RuntimeException
    //   727	738	1038	java/lang/RuntimeException
    //   738	796	1038	java/lang/RuntimeException
    //   796	807	1038	java/lang/RuntimeException
    //   807	861	1038	java/lang/RuntimeException
    //   868	900	1038	java/lang/RuntimeException
    //   900	927	1038	java/lang/RuntimeException
    //   927	942	1038	java/lang/RuntimeException
    //   946	983	1038	java/lang/RuntimeException
    //   983	1009	1038	java/lang/RuntimeException
    //   1009	1027	1038	java/lang/RuntimeException
    //   1030	1035	1038	java/lang/RuntimeException
    //   1046	1102	1038	java/lang/RuntimeException
    //   1102	1151	1038	java/lang/RuntimeException
    //   1154	1166	1038	java/lang/RuntimeException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\execchain\MainClientExec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */