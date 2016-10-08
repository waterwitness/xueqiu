package org.apache.http.impl.execchain;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.ProtocolException;
import org.apache.http.RequestLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestContent;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.protocol.RequestUserAgent;
import org.apache.http.util.Args;
import org.apache.http.util.VersionInfo;

@Immutable
public class MinimalClientExec
  implements ClientExecChain
{
  private final HttpClientConnectionManager connManager;
  private final HttpProcessor httpProcessor;
  private final ConnectionKeepAliveStrategy keepAliveStrategy;
  private final Log log = LogFactory.getLog(getClass());
  private final HttpRequestExecutor requestExecutor;
  private final ConnectionReuseStrategy reuseStrategy;
  
  public MinimalClientExec(HttpRequestExecutor paramHttpRequestExecutor, HttpClientConnectionManager paramHttpClientConnectionManager, ConnectionReuseStrategy paramConnectionReuseStrategy, ConnectionKeepAliveStrategy paramConnectionKeepAliveStrategy)
  {
    Args.notNull(paramHttpRequestExecutor, "HTTP request executor");
    Args.notNull(paramHttpClientConnectionManager, "Client connection manager");
    Args.notNull(paramConnectionReuseStrategy, "Connection reuse strategy");
    Args.notNull(paramConnectionKeepAliveStrategy, "Connection keep alive strategy");
    this.httpProcessor = new ImmutableHttpProcessor(new HttpRequestInterceptor[] { new RequestContent(), new RequestTargetHost(), new RequestClientConnControl(), new RequestUserAgent(VersionInfo.getUserAgent("Apache-HttpClient", "org.apache.http.client", getClass())) });
    this.requestExecutor = paramHttpRequestExecutor;
    this.connManager = paramHttpClientConnectionManager;
    this.reuseStrategy = paramConnectionReuseStrategy;
    this.keepAliveStrategy = paramConnectionKeepAliveStrategy;
  }
  
  static void rewriteRequestURI(HttpRequestWrapper paramHttpRequestWrapper, HttpRoute paramHttpRoute)
  {
    try
    {
      paramHttpRoute = paramHttpRequestWrapper.getURI();
      if (paramHttpRoute != null)
      {
        if (paramHttpRoute.isAbsolute()) {}
        for (paramHttpRoute = URIUtils.rewriteURI(paramHttpRoute, null, true);; paramHttpRoute = URIUtils.rewriteURI(paramHttpRoute))
        {
          paramHttpRequestWrapper.setURI(paramHttpRoute);
          return;
        }
      }
      return;
    }
    catch (URISyntaxException paramHttpRoute)
    {
      throw new ProtocolException("Invalid URI: " + paramHttpRequestWrapper.getRequestLine().getUri(), paramHttpRoute);
    }
  }
  
  /* Error */
  public org.apache.http.client.methods.CloseableHttpResponse execute(HttpRoute paramHttpRoute, HttpRequestWrapper paramHttpRequestWrapper, org.apache.http.client.protocol.HttpClientContext paramHttpClientContext, org.apache.http.client.methods.HttpExecutionAware paramHttpExecutionAware)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc -92
    //   3: invokestatic 44	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   6: pop
    //   7: aload_2
    //   8: ldc -90
    //   10: invokestatic 44	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   13: pop
    //   14: aload_3
    //   15: ldc -88
    //   17: invokestatic 44	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   20: pop
    //   21: aload_2
    //   22: aload_1
    //   23: invokestatic 170	org/apache/http/impl/execchain/MinimalClientExec:rewriteRequestURI	(Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    //   26: aload_0
    //   27: getfield 87	org/apache/http/impl/execchain/MinimalClientExec:connManager	Lorg/apache/http/conn/HttpClientConnectionManager;
    //   30: aload_1
    //   31: aconst_null
    //   32: invokeinterface 176 3 0
    //   37: astore 6
    //   39: aload 4
    //   41: ifnull +40 -> 81
    //   44: aload 4
    //   46: invokeinterface 181 1 0
    //   51: ifeq +21 -> 72
    //   54: aload 6
    //   56: invokeinterface 186 1 0
    //   61: pop
    //   62: new 188	org/apache/http/impl/execchain/RequestAbortedException
    //   65: dup
    //   66: ldc -66
    //   68: invokespecial 191	org/apache/http/impl/execchain/RequestAbortedException:<init>	(Ljava/lang/String;)V
    //   71: athrow
    //   72: aload 4
    //   74: aload 6
    //   76: invokeinterface 195 2 0
    //   81: aload_3
    //   82: invokevirtual 201	org/apache/http/client/protocol/HttpClientContext:getRequestConfig	()Lorg/apache/http/client/config/RequestConfig;
    //   85: astore 5
    //   87: aload 5
    //   89: invokevirtual 207	org/apache/http/client/config/RequestConfig:getConnectionRequestTimeout	()I
    //   92: istore 8
    //   94: iload 8
    //   96: ifle +90 -> 186
    //   99: iload 8
    //   101: i2l
    //   102: lstore 9
    //   104: aload 6
    //   106: lload 9
    //   108: getstatic 213	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   111: invokeinterface 217 4 0
    //   116: astore 7
    //   118: new 219	org/apache/http/impl/execchain/ConnectionHolder
    //   121: dup
    //   122: aload_0
    //   123: getfield 36	org/apache/http/impl/execchain/MinimalClientExec:log	Lorg/apache/commons/logging/Log;
    //   126: aload_0
    //   127: getfield 87	org/apache/http/impl/execchain/MinimalClientExec:connManager	Lorg/apache/http/conn/HttpClientConnectionManager;
    //   130: aload 7
    //   132: invokespecial 222	org/apache/http/impl/execchain/ConnectionHolder:<init>	(Lorg/apache/commons/logging/Log;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V
    //   135: astore 6
    //   137: aload 4
    //   139: ifnull +101 -> 240
    //   142: aload 4
    //   144: invokeinterface 181 1 0
    //   149: ifeq +82 -> 231
    //   152: aload 6
    //   154: invokevirtual 225	org/apache/http/impl/execchain/ConnectionHolder:close	()V
    //   157: new 188	org/apache/http/impl/execchain/RequestAbortedException
    //   160: dup
    //   161: ldc -66
    //   163: invokespecial 191	org/apache/http/impl/execchain/RequestAbortedException:<init>	(Ljava/lang/String;)V
    //   166: athrow
    //   167: astore_1
    //   168: new 227	java/io/InterruptedIOException
    //   171: dup
    //   172: ldc -27
    //   174: invokespecial 230	java/io/InterruptedIOException:<init>	(Ljava/lang/String;)V
    //   177: astore_2
    //   178: aload_2
    //   179: aload_1
    //   180: invokevirtual 234	java/io/InterruptedIOException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   183: pop
    //   184: aload_2
    //   185: athrow
    //   186: lconst_0
    //   187: lstore 9
    //   189: goto -85 -> 104
    //   192: astore_1
    //   193: invokestatic 240	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   196: invokevirtual 243	java/lang/Thread:interrupt	()V
    //   199: new 188	org/apache/http/impl/execchain/RequestAbortedException
    //   202: dup
    //   203: ldc -66
    //   205: aload_1
    //   206: invokespecial 244	org/apache/http/impl/execchain/RequestAbortedException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   209: athrow
    //   210: astore_1
    //   211: aload_1
    //   212: invokevirtual 248	java/util/concurrent/ExecutionException:getCause	()Ljava/lang/Throwable;
    //   215: astore_2
    //   216: aload_2
    //   217: ifnonnull +363 -> 580
    //   220: new 188	org/apache/http/impl/execchain/RequestAbortedException
    //   223: dup
    //   224: ldc -6
    //   226: aload_1
    //   227: invokespecial 244	org/apache/http/impl/execchain/RequestAbortedException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   230: athrow
    //   231: aload 4
    //   233: aload 6
    //   235: invokeinterface 195 2 0
    //   240: aload 7
    //   242: invokeinterface 255 1 0
    //   247: ifne +47 -> 294
    //   250: aload 5
    //   252: invokevirtual 258	org/apache/http/client/config/RequestConfig:getConnectTimeout	()I
    //   255: istore 8
    //   257: aload_0
    //   258: getfield 87	org/apache/http/impl/execchain/MinimalClientExec:connManager	Lorg/apache/http/conn/HttpClientConnectionManager;
    //   261: astore 4
    //   263: iload 8
    //   265: ifle +320 -> 585
    //   268: aload 4
    //   270: aload 7
    //   272: aload_1
    //   273: iload 8
    //   275: aload_3
    //   276: invokeinterface 262 5 0
    //   281: aload_0
    //   282: getfield 87	org/apache/http/impl/execchain/MinimalClientExec:connManager	Lorg/apache/http/conn/HttpClientConnectionManager;
    //   285: aload 7
    //   287: aload_1
    //   288: aload_3
    //   289: invokeinterface 266 4 0
    //   294: aload 5
    //   296: invokevirtual 269	org/apache/http/client/config/RequestConfig:getSocketTimeout	()I
    //   299: istore 8
    //   301: iload 8
    //   303: iflt +12 -> 315
    //   306: aload 7
    //   308: iload 8
    //   310: invokeinterface 273 2 0
    //   315: aload_2
    //   316: invokevirtual 277	org/apache/http/client/methods/HttpRequestWrapper:getOriginal	()Lorg/apache/http/HttpRequest;
    //   319: astore 4
    //   321: aload 4
    //   323: instanceof 279
    //   326: ifeq +248 -> 574
    //   329: aload 4
    //   331: checkcast 279	org/apache/http/client/methods/HttpUriRequest
    //   334: invokeinterface 280 1 0
    //   339: astore 4
    //   341: aload 4
    //   343: invokevirtual 108	java/net/URI:isAbsolute	()Z
    //   346: ifeq +228 -> 574
    //   349: new 282	org/apache/http/HttpHost
    //   352: dup
    //   353: aload 4
    //   355: invokevirtual 285	java/net/URI:getHost	()Ljava/lang/String;
    //   358: aload 4
    //   360: invokevirtual 288	java/net/URI:getPort	()I
    //   363: aload 4
    //   365: invokevirtual 291	java/net/URI:getScheme	()Ljava/lang/String;
    //   368: invokespecial 294	org/apache/http/HttpHost:<init>	(Ljava/lang/String;ILjava/lang/String;)V
    //   371: astore 4
    //   373: aload 4
    //   375: astore 5
    //   377: aload 4
    //   379: ifnonnull +9 -> 388
    //   382: aload_1
    //   383: invokevirtual 300	org/apache/http/conn/routing/HttpRoute:getTargetHost	()Lorg/apache/http/HttpHost;
    //   386: astore 5
    //   388: aload_3
    //   389: ldc_w 302
    //   392: aload 5
    //   394: invokevirtual 306	org/apache/http/client/protocol/HttpClientContext:setAttribute	(Ljava/lang/String;Ljava/lang/Object;)V
    //   397: aload_3
    //   398: ldc_w 308
    //   401: aload_2
    //   402: invokevirtual 306	org/apache/http/client/protocol/HttpClientContext:setAttribute	(Ljava/lang/String;Ljava/lang/Object;)V
    //   405: aload_3
    //   406: ldc_w 310
    //   409: aload 7
    //   411: invokevirtual 306	org/apache/http/client/protocol/HttpClientContext:setAttribute	(Ljava/lang/String;Ljava/lang/Object;)V
    //   414: aload_3
    //   415: ldc_w 312
    //   418: aload_1
    //   419: invokevirtual 306	org/apache/http/client/protocol/HttpClientContext:setAttribute	(Ljava/lang/String;Ljava/lang/Object;)V
    //   422: aload_0
    //   423: getfield 83	org/apache/http/impl/execchain/MinimalClientExec:httpProcessor	Lorg/apache/http/protocol/HttpProcessor;
    //   426: aload_2
    //   427: aload_3
    //   428: invokeinterface 318 3 0
    //   433: aload_0
    //   434: getfield 85	org/apache/http/impl/execchain/MinimalClientExec:requestExecutor	Lorg/apache/http/protocol/HttpRequestExecutor;
    //   437: aload_2
    //   438: aload 7
    //   440: aload_3
    //   441: invokevirtual 323	org/apache/http/protocol/HttpRequestExecutor:execute	(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    //   444: astore_1
    //   445: aload_0
    //   446: getfield 83	org/apache/http/impl/execchain/MinimalClientExec:httpProcessor	Lorg/apache/http/protocol/HttpProcessor;
    //   449: aload_1
    //   450: aload_3
    //   451: invokeinterface 326 3 0
    //   456: aload_0
    //   457: getfield 89	org/apache/http/impl/execchain/MinimalClientExec:reuseStrategy	Lorg/apache/http/ConnectionReuseStrategy;
    //   460: aload_1
    //   461: aload_3
    //   462: invokeinterface 332 3 0
    //   467: ifeq +62 -> 529
    //   470: aload 6
    //   472: aload_0
    //   473: getfield 91	org/apache/http/impl/execchain/MinimalClientExec:keepAliveStrategy	Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    //   476: aload_1
    //   477: aload_3
    //   478: invokeinterface 338 3 0
    //   483: getstatic 213	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   486: invokevirtual 342	org/apache/http/impl/execchain/ConnectionHolder:setValidFor	(JLjava/util/concurrent/TimeUnit;)V
    //   489: aload 6
    //   491: invokevirtual 345	org/apache/http/impl/execchain/ConnectionHolder:markReusable	()V
    //   494: aload_1
    //   495: invokeinterface 351 1 0
    //   500: astore_2
    //   501: aload_2
    //   502: ifnull +12 -> 514
    //   505: aload_2
    //   506: invokeinterface 356 1 0
    //   511: ifne +34 -> 545
    //   514: aload 6
    //   516: invokevirtual 359	org/apache/http/impl/execchain/ConnectionHolder:releaseConnection	()V
    //   519: new 361	org/apache/http/impl/execchain/HttpResponseProxy
    //   522: dup
    //   523: aload_1
    //   524: aconst_null
    //   525: invokespecial 364	org/apache/http/impl/execchain/HttpResponseProxy:<init>	(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    //   528: areturn
    //   529: aload 6
    //   531: invokevirtual 367	org/apache/http/impl/execchain/ConnectionHolder:markNonReusable	()V
    //   534: goto -40 -> 494
    //   537: astore_1
    //   538: aload 6
    //   540: invokevirtual 370	org/apache/http/impl/execchain/ConnectionHolder:abortConnection	()V
    //   543: aload_1
    //   544: athrow
    //   545: new 361	org/apache/http/impl/execchain/HttpResponseProxy
    //   548: dup
    //   549: aload_1
    //   550: aload 6
    //   552: invokespecial 364	org/apache/http/impl/execchain/HttpResponseProxy:<init>	(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    //   555: astore_1
    //   556: aload_1
    //   557: areturn
    //   558: astore_1
    //   559: aload 6
    //   561: invokevirtual 370	org/apache/http/impl/execchain/ConnectionHolder:abortConnection	()V
    //   564: aload_1
    //   565: athrow
    //   566: astore_1
    //   567: aload 6
    //   569: invokevirtual 370	org/apache/http/impl/execchain/ConnectionHolder:abortConnection	()V
    //   572: aload_1
    //   573: athrow
    //   574: aconst_null
    //   575: astore 4
    //   577: goto -204 -> 373
    //   580: aload_2
    //   581: astore_1
    //   582: goto -362 -> 220
    //   585: iconst_0
    //   586: istore 8
    //   588: goto -320 -> 268
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	591	0	this	MinimalClientExec
    //   0	591	1	paramHttpRoute	HttpRoute
    //   0	591	2	paramHttpRequestWrapper	HttpRequestWrapper
    //   0	591	3	paramHttpClientContext	org.apache.http.client.protocol.HttpClientContext
    //   0	591	4	paramHttpExecutionAware	org.apache.http.client.methods.HttpExecutionAware
    //   85	308	5	localObject1	Object
    //   37	531	6	localObject2	Object
    //   116	323	7	localHttpClientConnection	org.apache.http.HttpClientConnection
    //   92	495	8	i	int
    //   102	86	9	l	long
    // Exception table:
    //   from	to	target	type
    //   142	167	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   231	240	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   240	263	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   268	294	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   294	301	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   306	315	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   315	373	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   382	388	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   388	494	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   494	501	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   505	514	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   514	529	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   529	534	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   545	556	167	org/apache/http/impl/conn/ConnectionShutdownException
    //   87	94	192	java/lang/InterruptedException
    //   104	118	192	java/lang/InterruptedException
    //   87	94	210	java/util/concurrent/ExecutionException
    //   104	118	210	java/util/concurrent/ExecutionException
    //   142	167	537	org/apache/http/HttpException
    //   231	240	537	org/apache/http/HttpException
    //   240	263	537	org/apache/http/HttpException
    //   268	294	537	org/apache/http/HttpException
    //   294	301	537	org/apache/http/HttpException
    //   306	315	537	org/apache/http/HttpException
    //   315	373	537	org/apache/http/HttpException
    //   382	388	537	org/apache/http/HttpException
    //   388	494	537	org/apache/http/HttpException
    //   494	501	537	org/apache/http/HttpException
    //   505	514	537	org/apache/http/HttpException
    //   514	529	537	org/apache/http/HttpException
    //   529	534	537	org/apache/http/HttpException
    //   545	556	537	org/apache/http/HttpException
    //   142	167	558	java/io/IOException
    //   231	240	558	java/io/IOException
    //   240	263	558	java/io/IOException
    //   268	294	558	java/io/IOException
    //   294	301	558	java/io/IOException
    //   306	315	558	java/io/IOException
    //   315	373	558	java/io/IOException
    //   382	388	558	java/io/IOException
    //   388	494	558	java/io/IOException
    //   494	501	558	java/io/IOException
    //   505	514	558	java/io/IOException
    //   514	529	558	java/io/IOException
    //   529	534	558	java/io/IOException
    //   545	556	558	java/io/IOException
    //   142	167	566	java/lang/RuntimeException
    //   231	240	566	java/lang/RuntimeException
    //   240	263	566	java/lang/RuntimeException
    //   268	294	566	java/lang/RuntimeException
    //   294	301	566	java/lang/RuntimeException
    //   306	315	566	java/lang/RuntimeException
    //   315	373	566	java/lang/RuntimeException
    //   382	388	566	java/lang/RuntimeException
    //   388	494	566	java/lang/RuntimeException
    //   494	501	566	java/lang/RuntimeException
    //   505	514	566	java/lang/RuntimeException
    //   514	529	566	java/lang/RuntimeException
    //   529	534	566	java/lang/RuntimeException
    //   545	556	566	java/lang/RuntimeException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\execchain\MinimalClientExec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */