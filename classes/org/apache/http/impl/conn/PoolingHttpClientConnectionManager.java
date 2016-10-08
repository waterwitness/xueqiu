package org.apache.http.impl.conn;

import java.io.Closeable;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpHost;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.Lookup;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.config.SocketConfig;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.ConnectionRequest;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.HttpClientConnectionOperator;
import org.apache.http.conn.HttpConnectionFactory;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.pool.ConnPoolControl;
import org.apache.http.pool.PoolStats;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@ThreadSafe
public class PoolingHttpClientConnectionManager
  implements Closeable, HttpClientConnectionManager, ConnPoolControl<HttpRoute>
{
  private final PoolingHttpClientConnectionManager.ConfigData configData = new PoolingHttpClientConnectionManager.ConfigData();
  private final HttpClientConnectionOperator connectionOperator;
  private final AtomicBoolean isShutDown;
  private final Log log = LogFactory.getLog(getClass());
  private final CPool pool;
  
  public PoolingHttpClientConnectionManager()
  {
    this(getDefaultRegistry());
  }
  
  public PoolingHttpClientConnectionManager(long paramLong, TimeUnit paramTimeUnit)
  {
    this(getDefaultRegistry(), null, null, null, paramLong, paramTimeUnit);
  }
  
  public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> paramRegistry)
  {
    this(paramRegistry, null, null);
  }
  
  public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> paramRegistry, DnsResolver paramDnsResolver)
  {
    this(paramRegistry, null, paramDnsResolver);
  }
  
  public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> paramRegistry, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> paramHttpConnectionFactory)
  {
    this(paramRegistry, paramHttpConnectionFactory, null);
  }
  
  public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> paramRegistry, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> paramHttpConnectionFactory, DnsResolver paramDnsResolver)
  {
    this(paramRegistry, paramHttpConnectionFactory, null, paramDnsResolver, -1L, TimeUnit.MILLISECONDS);
  }
  
  public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> paramRegistry, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> paramHttpConnectionFactory, SchemePortResolver paramSchemePortResolver, DnsResolver paramDnsResolver, long paramLong, TimeUnit paramTimeUnit)
  {
    this(new DefaultHttpClientConnectionOperator(paramRegistry, paramSchemePortResolver, paramDnsResolver), paramHttpConnectionFactory, paramLong, paramTimeUnit);
  }
  
  public PoolingHttpClientConnectionManager(HttpClientConnectionOperator paramHttpClientConnectionOperator, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> paramHttpConnectionFactory, long paramLong, TimeUnit paramTimeUnit)
  {
    this.pool = new CPool(new PoolingHttpClientConnectionManager.InternalConnectionFactory(this.configData, paramHttpConnectionFactory), 2, 20, paramLong, paramTimeUnit);
    this.pool.setValidateAfterInactivity(2000);
    this.connectionOperator = ((HttpClientConnectionOperator)Args.notNull(paramHttpClientConnectionOperator, "HttpClientConnectionOperator"));
    this.isShutDown = new AtomicBoolean(false);
  }
  
  public PoolingHttpClientConnectionManager(HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> paramHttpConnectionFactory)
  {
    this(getDefaultRegistry(), paramHttpConnectionFactory, null);
  }
  
  PoolingHttpClientConnectionManager(CPool paramCPool, Lookup<ConnectionSocketFactory> paramLookup, SchemePortResolver paramSchemePortResolver, DnsResolver paramDnsResolver)
  {
    this.pool = paramCPool;
    this.connectionOperator = new DefaultHttpClientConnectionOperator(paramLookup, paramSchemePortResolver, paramDnsResolver);
    this.isShutDown = new AtomicBoolean(false);
  }
  
  private String format(HttpRoute paramHttpRoute, Object paramObject)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[route: ").append(paramHttpRoute).append("]");
    if (paramObject != null) {
      localStringBuilder.append("[state: ").append(paramObject).append("]");
    }
    return localStringBuilder.toString();
  }
  
  private String format(CPoolEntry paramCPoolEntry)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[id: ").append(paramCPoolEntry.getId()).append("]");
    localStringBuilder.append("[route: ").append(paramCPoolEntry.getRoute()).append("]");
    paramCPoolEntry = paramCPoolEntry.getState();
    if (paramCPoolEntry != null) {
      localStringBuilder.append("[state: ").append(paramCPoolEntry).append("]");
    }
    return localStringBuilder.toString();
  }
  
  private String formatStats(HttpRoute paramHttpRoute)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    PoolStats localPoolStats = this.pool.getTotalStats();
    paramHttpRoute = this.pool.getStats(paramHttpRoute);
    localStringBuilder.append("[total kept alive: ").append(localPoolStats.getAvailable()).append("; ");
    localStringBuilder.append("route allocated: ").append(paramHttpRoute.getLeased() + paramHttpRoute.getAvailable());
    localStringBuilder.append(" of ").append(paramHttpRoute.getMax()).append("; ");
    localStringBuilder.append("total allocated: ").append(localPoolStats.getLeased() + localPoolStats.getAvailable());
    localStringBuilder.append(" of ").append(localPoolStats.getMax()).append("]");
    return localStringBuilder.toString();
  }
  
  private static Registry<ConnectionSocketFactory> getDefaultRegistry()
  {
    return RegistryBuilder.create().register("http", PlainConnectionSocketFactory.getSocketFactory()).register("https", SSLConnectionSocketFactory.getSocketFactory()).build();
  }
  
  public void close()
  {
    shutdown();
  }
  
  public void closeExpiredConnections()
  {
    this.log.debug("Closing expired connections");
    this.pool.closeExpired();
  }
  
  public void closeIdleConnections(long paramLong, TimeUnit paramTimeUnit)
  {
    if (this.log.isDebugEnabled()) {
      this.log.debug("Closing connections idle longer than " + paramLong + " " + paramTimeUnit);
    }
    this.pool.closeIdle(paramLong, paramTimeUnit);
  }
  
  public void connect(HttpClientConnection paramHttpClientConnection, HttpRoute paramHttpRoute, int paramInt, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpClientConnection, "Managed Connection");
    Args.notNull(paramHttpRoute, "HTTP route");
    for (;;)
    {
      try
      {
        ManagedHttpClientConnection localManagedHttpClientConnection = (ManagedHttpClientConnection)CPoolProxy.getPoolEntry(paramHttpClientConnection).getConnection();
        if (paramHttpRoute.getProxyHost() != null)
        {
          localHttpHost = paramHttpRoute.getProxyHost();
          InetSocketAddress localInetSocketAddress = paramHttpRoute.getLocalSocketAddress();
          paramHttpRoute = this.configData.getSocketConfig(localHttpHost);
          paramHttpClientConnection = paramHttpRoute;
          if (paramHttpRoute == null) {
            paramHttpClientConnection = this.configData.getDefaultSocketConfig();
          }
          paramHttpRoute = paramHttpClientConnection;
          if (paramHttpClientConnection == null) {
            paramHttpRoute = SocketConfig.DEFAULT;
          }
          this.connectionOperator.connect(localManagedHttpClientConnection, localHttpHost, localInetSocketAddress, paramInt, paramHttpRoute, paramHttpContext);
          return;
        }
      }
      finally {}
      HttpHost localHttpHost = paramHttpRoute.getTargetHost();
    }
  }
  
  protected void finalize()
  {
    try
    {
      shutdown();
      return;
    }
    finally
    {
      super.finalize();
    }
  }
  
  public ConnectionConfig getConnectionConfig(HttpHost paramHttpHost)
  {
    return this.configData.getConnectionConfig(paramHttpHost);
  }
  
  public ConnectionConfig getDefaultConnectionConfig()
  {
    return this.configData.getDefaultConnectionConfig();
  }
  
  public int getDefaultMaxPerRoute()
  {
    return this.pool.getDefaultMaxPerRoute();
  }
  
  public SocketConfig getDefaultSocketConfig()
  {
    return this.configData.getDefaultSocketConfig();
  }
  
  public int getMaxPerRoute(HttpRoute paramHttpRoute)
  {
    return this.pool.getMaxPerRoute(paramHttpRoute);
  }
  
  public int getMaxTotal()
  {
    return this.pool.getMaxTotal();
  }
  
  public Set<HttpRoute> getRoutes()
  {
    return this.pool.getRoutes();
  }
  
  public SocketConfig getSocketConfig(HttpHost paramHttpHost)
  {
    return this.configData.getSocketConfig(paramHttpHost);
  }
  
  public PoolStats getStats(HttpRoute paramHttpRoute)
  {
    return this.pool.getStats(paramHttpRoute);
  }
  
  public PoolStats getTotalStats()
  {
    return this.pool.getTotalStats();
  }
  
  public int getValidateAfterInactivity()
  {
    return this.pool.getValidateAfterInactivity();
  }
  
  protected HttpClientConnection leaseConnection(Future<CPoolEntry> paramFuture, long paramLong, TimeUnit paramTimeUnit)
  {
    try
    {
      paramTimeUnit = (CPoolEntry)paramFuture.get(paramLong, paramTimeUnit);
      if ((paramTimeUnit == null) || (paramFuture.isCancelled())) {
        throw new InterruptedException();
      }
    }
    catch (TimeoutException paramFuture)
    {
      throw new ConnectionPoolTimeoutException("Timeout waiting for connection from pool");
    }
    if (paramTimeUnit.getConnection() != null) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Pool entry with no connection");
      if (this.log.isDebugEnabled()) {
        this.log.debug("Connection leased: " + format(paramTimeUnit) + formatStats((HttpRoute)paramTimeUnit.getRoute()));
      }
      paramFuture = CPoolProxy.newProxy(paramTimeUnit);
      return paramFuture;
    }
  }
  
  /* Error */
  public void releaseConnection(HttpClientConnection paramHttpClientConnection, Object paramObject, long paramLong, TimeUnit paramTimeUnit)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: aload_1
    //   4: ldc_w 385
    //   7: invokestatic 108	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   10: pop
    //   11: aload_1
    //   12: monitorenter
    //   13: aload_1
    //   14: invokestatic 388	org/apache/http/impl/conn/CPoolProxy:detach	(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;
    //   17: astore 6
    //   19: aload 6
    //   21: ifnonnull +6 -> 27
    //   24: aload_1
    //   25: monitorexit
    //   26: return
    //   27: aload 6
    //   29: invokevirtual 274	org/apache/http/impl/conn/CPoolEntry:getConnection	()Ljava/lang/Object;
    //   32: checkcast 276	org/apache/http/conn/ManagedHttpClientConnection
    //   35: astore 7
    //   37: aload 7
    //   39: invokeinterface 391 1 0
    //   44: ifeq +115 -> 159
    //   47: aload 5
    //   49: ifnull +207 -> 256
    //   52: aload 6
    //   54: aload_2
    //   55: invokevirtual 394	org/apache/http/impl/conn/CPoolEntry:setState	(Ljava/lang/Object;)V
    //   58: aload 6
    //   60: lload_3
    //   61: aload 5
    //   63: invokevirtual 397	org/apache/http/impl/conn/CPoolEntry:updateExpiry	(JLjava/util/concurrent/TimeUnit;)V
    //   66: aload_0
    //   67: getfield 79	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   70: invokeinterface 246 1 0
    //   75: ifeq +84 -> 159
    //   78: lload_3
    //   79: lconst_0
    //   80: lcmp
    //   81: ifle +183 -> 264
    //   84: new 128	java/lang/StringBuilder
    //   87: dup
    //   88: ldc_w 399
    //   91: invokespecial 251	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   94: aload 5
    //   96: lload_3
    //   97: invokevirtual 403	java/util/concurrent/TimeUnit:toMillis	(J)J
    //   100: l2d
    //   101: ldc2_w 404
    //   104: ddiv
    //   105: invokevirtual 408	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   108: ldc_w 410
    //   111: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: astore_2
    //   118: aload_0
    //   119: getfield 79	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   122: new 128	java/lang/StringBuilder
    //   125: dup
    //   126: ldc_w 412
    //   129: invokespecial 251	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   132: aload_0
    //   133: aload 6
    //   135: invokespecial 374	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:format	(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;
    //   138: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: ldc_w 414
    //   144: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: aload_2
    //   148: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: invokeinterface 238 2 0
    //   159: aload_0
    //   160: getfield 96	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:pool	Lorg/apache/http/impl/conn/CPool;
    //   163: astore_2
    //   164: aload 7
    //   166: invokeinterface 391 1 0
    //   171: ifeq +100 -> 271
    //   174: aload 6
    //   176: invokevirtual 417	org/apache/http/impl/conn/CPoolEntry:isRouteComplete	()Z
    //   179: ifeq +92 -> 271
    //   182: aload_2
    //   183: aload 6
    //   185: iload 8
    //   187: invokevirtual 421	org/apache/http/impl/conn/CPool:release	(Lorg/apache/http/pool/PoolEntry;Z)V
    //   190: aload_0
    //   191: getfield 79	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   194: invokeinterface 246 1 0
    //   199: ifeq +49 -> 248
    //   202: aload_0
    //   203: getfield 79	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   206: new 128	java/lang/StringBuilder
    //   209: dup
    //   210: ldc_w 423
    //   213: invokespecial 251	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   216: aload_0
    //   217: aload 6
    //   219: invokespecial 374	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:format	(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;
    //   222: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: aload_0
    //   226: aload 6
    //   228: invokevirtual 158	org/apache/http/impl/conn/CPoolEntry:getRoute	()Ljava/lang/Object;
    //   231: checkcast 278	org/apache/http/conn/routing/HttpRoute
    //   234: invokespecial 376	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:formatStats	(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;
    //   237: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   243: invokeinterface 238 2 0
    //   248: aload_1
    //   249: monitorexit
    //   250: return
    //   251: astore_2
    //   252: aload_1
    //   253: monitorexit
    //   254: aload_2
    //   255: athrow
    //   256: getstatic 55	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   259: astore 5
    //   261: goto -209 -> 52
    //   264: ldc_w 425
    //   267: astore_2
    //   268: goto -150 -> 118
    //   271: iconst_0
    //   272: istore 8
    //   274: goto -92 -> 182
    //   277: astore_2
    //   278: aload_0
    //   279: getfield 96	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:pool	Lorg/apache/http/impl/conn/CPool;
    //   282: astore 5
    //   284: aload 7
    //   286: invokeinterface 391 1 0
    //   291: ifeq +83 -> 374
    //   294: aload 6
    //   296: invokevirtual 417	org/apache/http/impl/conn/CPoolEntry:isRouteComplete	()Z
    //   299: ifeq +75 -> 374
    //   302: iconst_1
    //   303: istore 8
    //   305: aload 5
    //   307: aload 6
    //   309: iload 8
    //   311: invokevirtual 421	org/apache/http/impl/conn/CPool:release	(Lorg/apache/http/pool/PoolEntry;Z)V
    //   314: aload_0
    //   315: getfield 79	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   318: invokeinterface 246 1 0
    //   323: ifeq +49 -> 372
    //   326: aload_0
    //   327: getfield 79	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   330: new 128	java/lang/StringBuilder
    //   333: dup
    //   334: ldc_w 423
    //   337: invokespecial 251	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   340: aload_0
    //   341: aload 6
    //   343: invokespecial 374	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:format	(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;
    //   346: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   349: aload_0
    //   350: aload 6
    //   352: invokevirtual 158	org/apache/http/impl/conn/CPoolEntry:getRoute	()Ljava/lang/Object;
    //   355: checkcast 278	org/apache/http/conn/routing/HttpRoute
    //   358: invokespecial 376	org/apache/http/impl/conn/PoolingHttpClientConnectionManager:formatStats	(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;
    //   361: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   367: invokeinterface 238 2 0
    //   372: aload_2
    //   373: athrow
    //   374: iconst_0
    //   375: istore 8
    //   377: goto -72 -> 305
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	380	0	this	PoolingHttpClientConnectionManager
    //   0	380	1	paramHttpClientConnection	HttpClientConnection
    //   0	380	2	paramObject	Object
    //   0	380	3	paramLong	long
    //   0	380	5	paramTimeUnit	TimeUnit
    //   17	334	6	localCPoolEntry	CPoolEntry
    //   35	250	7	localManagedHttpClientConnection	ManagedHttpClientConnection
    //   1	375	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   13	19	251	finally
    //   24	26	251	finally
    //   27	37	251	finally
    //   159	182	251	finally
    //   182	248	251	finally
    //   248	250	251	finally
    //   252	254	251	finally
    //   278	302	251	finally
    //   305	372	251	finally
    //   372	374	251	finally
    //   37	47	277	finally
    //   52	78	277	finally
    //   84	118	277	finally
    //   118	159	277	finally
    //   256	261	277	finally
  }
  
  public ConnectionRequest requestConnection(HttpRoute paramHttpRoute, Object paramObject)
  {
    Args.notNull(paramHttpRoute, "HTTP route");
    if (this.log.isDebugEnabled()) {
      this.log.debug("Connection request: " + format(paramHttpRoute, paramObject) + formatStats(paramHttpRoute));
    }
    new ConnectionRequest()
    {
      public boolean cancel()
      {
        return this.val$future.cancel(true);
      }
      
      public HttpClientConnection get(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
      {
        return PoolingHttpClientConnectionManager.this.leaseConnection(this.val$future, paramAnonymousLong, paramAnonymousTimeUnit);
      }
    };
  }
  
  public void routeComplete(HttpClientConnection paramHttpClientConnection, HttpRoute paramHttpRoute, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpClientConnection, "Managed Connection");
    Args.notNull(paramHttpRoute, "HTTP route");
    try
    {
      CPoolProxy.getPoolEntry(paramHttpClientConnection).markRouteComplete();
      return;
    }
    finally {}
  }
  
  public void setConnectionConfig(HttpHost paramHttpHost, ConnectionConfig paramConnectionConfig)
  {
    this.configData.setConnectionConfig(paramHttpHost, paramConnectionConfig);
  }
  
  public void setDefaultConnectionConfig(ConnectionConfig paramConnectionConfig)
  {
    this.configData.setDefaultConnectionConfig(paramConnectionConfig);
  }
  
  public void setDefaultMaxPerRoute(int paramInt)
  {
    this.pool.setDefaultMaxPerRoute(paramInt);
  }
  
  public void setDefaultSocketConfig(SocketConfig paramSocketConfig)
  {
    this.configData.setDefaultSocketConfig(paramSocketConfig);
  }
  
  public void setMaxPerRoute(HttpRoute paramHttpRoute, int paramInt)
  {
    this.pool.setMaxPerRoute(paramHttpRoute, paramInt);
  }
  
  public void setMaxTotal(int paramInt)
  {
    this.pool.setMaxTotal(paramInt);
  }
  
  public void setSocketConfig(HttpHost paramHttpHost, SocketConfig paramSocketConfig)
  {
    this.configData.setSocketConfig(paramHttpHost, paramSocketConfig);
  }
  
  public void setValidateAfterInactivity(int paramInt)
  {
    this.pool.setValidateAfterInactivity(paramInt);
  }
  
  public void shutdown()
  {
    if (this.isShutDown.compareAndSet(false, true)) {
      this.log.debug("Connection manager is shutting down");
    }
    try
    {
      this.pool.shutdown();
      this.log.debug("Connection manager shut down");
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        this.log.debug("I/O exception shutting down connection manager", localIOException);
      }
    }
  }
  
  public void upgrade(HttpClientConnection paramHttpClientConnection, HttpRoute paramHttpRoute, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpClientConnection, "Managed Connection");
    Args.notNull(paramHttpRoute, "HTTP route");
    try
    {
      ManagedHttpClientConnection localManagedHttpClientConnection = (ManagedHttpClientConnection)CPoolProxy.getPoolEntry(paramHttpClientConnection).getConnection();
      this.connectionOperator.upgrade(localManagedHttpClientConnection, paramHttpRoute.getTargetHost(), paramHttpContext);
      return;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\PoolingHttpClientConnectionManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */