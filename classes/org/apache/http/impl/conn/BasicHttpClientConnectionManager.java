package org.apache.http.impl.conn;

import java.io.Closeable;
import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpClientConnection;
import org.apache.http.annotation.GuardedBy;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.Lookup;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.config.SocketConfig;
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
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@ThreadSafe
public class BasicHttpClientConnectionManager
  implements Closeable, HttpClientConnectionManager
{
  @GuardedBy("this")
  private ManagedHttpClientConnection conn;
  @GuardedBy("this")
  private ConnectionConfig connConfig;
  private final HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> connFactory;
  private final HttpClientConnectionOperator connectionOperator;
  @GuardedBy("this")
  private long expiry;
  private final AtomicBoolean isShutdown;
  @GuardedBy("this")
  private boolean leased;
  private final Log log = LogFactory.getLog(getClass());
  @GuardedBy("this")
  private HttpRoute route;
  @GuardedBy("this")
  private SocketConfig socketConfig;
  @GuardedBy("this")
  private Object state;
  @GuardedBy("this")
  private long updated;
  
  public BasicHttpClientConnectionManager()
  {
    this(getDefaultRegistry(), null, null, null);
  }
  
  public BasicHttpClientConnectionManager(Lookup<ConnectionSocketFactory> paramLookup)
  {
    this(paramLookup, null, null, null);
  }
  
  public BasicHttpClientConnectionManager(Lookup<ConnectionSocketFactory> paramLookup, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> paramHttpConnectionFactory)
  {
    this(paramLookup, paramHttpConnectionFactory, null, null);
  }
  
  public BasicHttpClientConnectionManager(Lookup<ConnectionSocketFactory> paramLookup, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> paramHttpConnectionFactory, SchemePortResolver paramSchemePortResolver, DnsResolver paramDnsResolver)
  {
    this(new DefaultHttpClientConnectionOperator(paramLookup, paramSchemePortResolver, paramDnsResolver), paramHttpConnectionFactory);
  }
  
  public BasicHttpClientConnectionManager(HttpClientConnectionOperator paramHttpClientConnectionOperator, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> paramHttpConnectionFactory)
  {
    this.connectionOperator = ((HttpClientConnectionOperator)Args.notNull(paramHttpClientConnectionOperator, "Connection operator"));
    if (paramHttpConnectionFactory != null) {}
    for (;;)
    {
      this.connFactory = paramHttpConnectionFactory;
      this.expiry = Long.MAX_VALUE;
      this.socketConfig = SocketConfig.DEFAULT;
      this.connConfig = ConnectionConfig.DEFAULT;
      this.isShutdown = new AtomicBoolean(false);
      return;
      paramHttpConnectionFactory = ManagedHttpClientConnectionFactory.INSTANCE;
    }
  }
  
  private void checkExpiry()
  {
    if ((this.conn != null) && (System.currentTimeMillis() >= this.expiry))
    {
      if (this.log.isDebugEnabled()) {
        this.log.debug("Connection expired @ " + new Date(this.expiry));
      }
      closeConnection();
    }
  }
  
  private void closeConnection()
  {
    if (this.conn != null) {
      this.log.debug("Closing connection");
    }
    try
    {
      this.conn.close();
      this.conn = null;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        if (this.log.isDebugEnabled()) {
          this.log.debug("I/O exception closing connection", localIOException);
        }
      }
    }
  }
  
  private static Registry<ConnectionSocketFactory> getDefaultRegistry()
  {
    return RegistryBuilder.create().register("http", PlainConnectionSocketFactory.getSocketFactory()).register("https", SSLConnectionSocketFactory.getSocketFactory()).build();
  }
  
  private void shutdownConnection()
  {
    if (this.conn != null) {
      this.log.debug("Shutting down connection");
    }
    try
    {
      this.conn.shutdown();
      this.conn = null;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        if (this.log.isDebugEnabled()) {
          this.log.debug("I/O exception shutting down connection", localIOException);
        }
      }
    }
  }
  
  public void close()
  {
    shutdown();
  }
  
  /* Error */
  public void closeExpiredConnections()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 114	org/apache/http/impl/conn/BasicHttpClientConnectionManager:isShutdown	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   6: invokevirtual 219	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   9: istore_2
    //   10: iload_2
    //   11: ifeq +6 -> 17
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: getfield 221	org/apache/http/impl/conn/BasicHttpClientConnectionManager:leased	Z
    //   21: ifne -7 -> 14
    //   24: aload_0
    //   25: invokespecial 223	org/apache/http/impl/conn/BasicHttpClientConnectionManager:checkExpiry	()V
    //   28: goto -14 -> 14
    //   31: astore_1
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	BasicHttpClientConnectionManager
    //   31	4	1	localObject	Object
    //   9	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	10	31	finally
    //   17	28	31	finally
  }
  
  public void closeIdleConnections(long paramLong, TimeUnit paramTimeUnit)
  {
    long l = 0L;
    try
    {
      Args.notNull(paramTimeUnit, "Time unit");
      boolean bool = this.isShutdown.get();
      if (bool) {}
      while (this.leased) {
        return;
      }
      paramLong = paramTimeUnit.toMillis(paramLong);
      if (paramLong < 0L) {
        paramLong = l;
      }
      for (;;)
      {
        l = System.currentTimeMillis();
        if (this.updated > l - paramLong) {
          break;
        }
        closeConnection();
        break;
      }
    }
    finally {}
  }
  
  public void connect(HttpClientConnection paramHttpClientConnection, HttpRoute paramHttpRoute, int paramInt, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpClientConnection, "Connection");
    Args.notNull(paramHttpRoute, "HTTP route");
    boolean bool;
    if (paramHttpClientConnection == this.conn)
    {
      bool = true;
      Asserts.check(bool, "Connection not obtained from this manager");
      if (paramHttpRoute.getProxyHost() == null) {
        break label78;
      }
    }
    label78:
    for (paramHttpClientConnection = paramHttpRoute.getProxyHost();; paramHttpClientConnection = paramHttpRoute.getTargetHost())
    {
      paramHttpRoute = paramHttpRoute.getLocalSocketAddress();
      this.connectionOperator.connect(this.conn, paramHttpClientConnection, paramHttpRoute, paramInt, this.socketConfig, paramHttpContext);
      return;
      bool = false;
      break;
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
  
  /* Error */
  HttpClientConnection getConnection(HttpRoute paramHttpRoute, Object paramObject)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: getfield 114	org/apache/http/impl/conn/BasicHttpClientConnectionManager:isShutdown	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   9: invokevirtual 219	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   12: ifne +149 -> 161
    //   15: iconst_1
    //   16: istore_3
    //   17: iload_3
    //   18: ldc_w 272
    //   21: invokestatic 249	org/apache/http/util/Asserts:check	(ZLjava/lang/String;)V
    //   24: aload_0
    //   25: getfield 76	org/apache/http/impl/conn/BasicHttpClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   28: invokeinterface 136 1 0
    //   33: ifeq +29 -> 62
    //   36: aload_0
    //   37: getfield 76	org/apache/http/impl/conn/BasicHttpClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   40: new 138	java/lang/StringBuilder
    //   43: dup
    //   44: ldc_w 274
    //   47: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   50: aload_1
    //   51: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokeinterface 160 2 0
    //   62: aload_0
    //   63: getfield 221	org/apache/http/impl/conn/BasicHttpClientConnectionManager:leased	Z
    //   66: ifne +100 -> 166
    //   69: iload 4
    //   71: istore_3
    //   72: iload_3
    //   73: ldc_w 276
    //   76: invokestatic 249	org/apache/http/util/Asserts:check	(ZLjava/lang/String;)V
    //   79: aload_0
    //   80: getfield 278	org/apache/http/impl/conn/BasicHttpClientConnectionManager:route	Lorg/apache/http/conn/routing/HttpRoute;
    //   83: aload_1
    //   84: invokestatic 284	org/apache/http/util/LangUtils:equals	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   87: ifeq +14 -> 101
    //   90: aload_0
    //   91: getfield 286	org/apache/http/impl/conn/BasicHttpClientConnectionManager:state	Ljava/lang/Object;
    //   94: aload_2
    //   95: invokestatic 284	org/apache/http/util/LangUtils:equals	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   98: ifne +7 -> 105
    //   101: aload_0
    //   102: invokespecial 163	org/apache/http/impl/conn/BasicHttpClientConnectionManager:closeConnection	()V
    //   105: aload_0
    //   106: aload_1
    //   107: putfield 278	org/apache/http/impl/conn/BasicHttpClientConnectionManager:route	Lorg/apache/http/conn/routing/HttpRoute;
    //   110: aload_0
    //   111: aload_2
    //   112: putfield 286	org/apache/http/impl/conn/BasicHttpClientConnectionManager:state	Ljava/lang/Object;
    //   115: aload_0
    //   116: invokespecial 223	org/apache/http/impl/conn/BasicHttpClientConnectionManager:checkExpiry	()V
    //   119: aload_0
    //   120: getfield 124	org/apache/http/impl/conn/BasicHttpClientConnectionManager:conn	Lorg/apache/http/conn/ManagedHttpClientConnection;
    //   123: ifnonnull +24 -> 147
    //   126: aload_0
    //   127: aload_0
    //   128: getfield 90	org/apache/http/impl/conn/BasicHttpClientConnectionManager:connFactory	Lorg/apache/http/conn/HttpConnectionFactory;
    //   131: aload_1
    //   132: aload_0
    //   133: getfield 107	org/apache/http/impl/conn/BasicHttpClientConnectionManager:connConfig	Lorg/apache/http/config/ConnectionConfig;
    //   136: invokeinterface 291 3 0
    //   141: checkcast 169	org/apache/http/conn/ManagedHttpClientConnection
    //   144: putfield 124	org/apache/http/impl/conn/BasicHttpClientConnectionManager:conn	Lorg/apache/http/conn/ManagedHttpClientConnection;
    //   147: aload_0
    //   148: iconst_1
    //   149: putfield 221	org/apache/http/impl/conn/BasicHttpClientConnectionManager:leased	Z
    //   152: aload_0
    //   153: getfield 124	org/apache/http/impl/conn/BasicHttpClientConnectionManager:conn	Lorg/apache/http/conn/ManagedHttpClientConnection;
    //   156: astore_1
    //   157: aload_0
    //   158: monitorexit
    //   159: aload_1
    //   160: areturn
    //   161: iconst_0
    //   162: istore_3
    //   163: goto -146 -> 17
    //   166: iconst_0
    //   167: istore_3
    //   168: goto -96 -> 72
    //   171: astore_1
    //   172: aload_0
    //   173: monitorexit
    //   174: aload_1
    //   175: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	176	0	this	BasicHttpClientConnectionManager
    //   0	176	1	paramHttpRoute	HttpRoute
    //   0	176	2	paramObject	Object
    //   16	152	3	bool1	boolean
    //   1	69	4	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   5	15	171	finally
    //   17	62	171	finally
    //   62	69	171	finally
    //   72	101	171	finally
    //   101	105	171	finally
    //   105	147	171	finally
    //   147	157	171	finally
  }
  
  public ConnectionConfig getConnectionConfig()
  {
    try
    {
      ConnectionConfig localConnectionConfig = this.connConfig;
      return localConnectionConfig;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  HttpRoute getRoute()
  {
    return this.route;
  }
  
  public SocketConfig getSocketConfig()
  {
    try
    {
      SocketConfig localSocketConfig = this.socketConfig;
      return localSocketConfig;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  Object getState()
  {
    return this.state;
  }
  
  /* Error */
  public void releaseConnection(HttpClientConnection paramHttpClientConnection, Object paramObject, long paramLong, TimeUnit paramTimeUnit)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_1
    //   6: ldc -17
    //   8: invokestatic 84	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   11: pop
    //   12: aload_1
    //   13: aload_0
    //   14: getfield 124	org/apache/http/impl/conn/BasicHttpClientConnectionManager:conn	Lorg/apache/http/conn/ManagedHttpClientConnection;
    //   17: if_acmpne +6 -> 23
    //   20: iconst_1
    //   21: istore 6
    //   23: iload 6
    //   25: ldc -13
    //   27: invokestatic 249	org/apache/http/util/Asserts:check	(ZLjava/lang/String;)V
    //   30: aload_0
    //   31: getfield 76	org/apache/http/impl/conn/BasicHttpClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   34: invokeinterface 136 1 0
    //   39: ifeq +29 -> 68
    //   42: aload_0
    //   43: getfield 76	org/apache/http/impl/conn/BasicHttpClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   46: new 138	java/lang/StringBuilder
    //   49: dup
    //   50: ldc_w 303
    //   53: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   56: aload_1
    //   57: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokeinterface 160 2 0
    //   68: aload_0
    //   69: getfield 114	org/apache/http/impl/conn/BasicHttpClientConnectionManager:isShutdown	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   72: invokevirtual 219	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   75: istore 6
    //   77: iload 6
    //   79: ifeq +6 -> 85
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: aload_0
    //   86: invokestatic 130	java/lang/System:currentTimeMillis	()J
    //   89: putfield 235	org/apache/http/impl/conn/BasicHttpClientConnectionManager:updated	J
    //   92: aload_0
    //   93: getfield 124	org/apache/http/impl/conn/BasicHttpClientConnectionManager:conn	Lorg/apache/http/conn/ManagedHttpClientConnection;
    //   96: invokeinterface 306 1 0
    //   101: ifne +38 -> 139
    //   104: aload_0
    //   105: aconst_null
    //   106: putfield 124	org/apache/http/impl/conn/BasicHttpClientConnectionManager:conn	Lorg/apache/http/conn/ManagedHttpClientConnection;
    //   109: aload_0
    //   110: aconst_null
    //   111: putfield 278	org/apache/http/impl/conn/BasicHttpClientConnectionManager:route	Lorg/apache/http/conn/routing/HttpRoute;
    //   114: aload_0
    //   115: aconst_null
    //   116: putfield 124	org/apache/http/impl/conn/BasicHttpClientConnectionManager:conn	Lorg/apache/http/conn/ManagedHttpClientConnection;
    //   119: aload_0
    //   120: ldc2_w 91
    //   123: putfield 94	org/apache/http/impl/conn/BasicHttpClientConnectionManager:expiry	J
    //   126: aload_0
    //   127: iconst_0
    //   128: putfield 221	org/apache/http/impl/conn/BasicHttpClientConnectionManager:leased	Z
    //   131: goto -49 -> 82
    //   134: astore_1
    //   135: aload_0
    //   136: monitorexit
    //   137: aload_1
    //   138: athrow
    //   139: aload_0
    //   140: aload_2
    //   141: putfield 286	org/apache/http/impl/conn/BasicHttpClientConnectionManager:state	Ljava/lang/Object;
    //   144: aload_0
    //   145: getfield 76	org/apache/http/impl/conn/BasicHttpClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   148: invokeinterface 136 1 0
    //   153: ifeq +64 -> 217
    //   156: lload_3
    //   157: lconst_0
    //   158: lcmp
    //   159: ifle +90 -> 249
    //   162: new 138	java/lang/StringBuilder
    //   165: dup
    //   166: ldc_w 308
    //   169: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   172: lload_3
    //   173: invokevirtual 311	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   176: ldc_w 313
    //   179: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: aload 5
    //   184: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   187: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: astore_1
    //   191: aload_0
    //   192: getfield 76	org/apache/http/impl/conn/BasicHttpClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   195: new 138	java/lang/StringBuilder
    //   198: dup
    //   199: ldc_w 318
    //   202: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   205: aload_1
    //   206: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   212: invokeinterface 160 2 0
    //   217: lload_3
    //   218: lconst_0
    //   219: lcmp
    //   220: ifle +36 -> 256
    //   223: aload_0
    //   224: aload_0
    //   225: getfield 235	org/apache/http/impl/conn/BasicHttpClientConnectionManager:updated	J
    //   228: aload 5
    //   230: lload_3
    //   231: invokevirtual 233	java/util/concurrent/TimeUnit:toMillis	(J)J
    //   234: ladd
    //   235: putfield 94	org/apache/http/impl/conn/BasicHttpClientConnectionManager:expiry	J
    //   238: goto -112 -> 126
    //   241: astore_1
    //   242: aload_0
    //   243: iconst_0
    //   244: putfield 221	org/apache/http/impl/conn/BasicHttpClientConnectionManager:leased	Z
    //   247: aload_1
    //   248: athrow
    //   249: ldc_w 320
    //   252: astore_1
    //   253: goto -62 -> 191
    //   256: aload_0
    //   257: ldc2_w 91
    //   260: putfield 94	org/apache/http/impl/conn/BasicHttpClientConnectionManager:expiry	J
    //   263: goto -137 -> 126
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	266	0	this	BasicHttpClientConnectionManager
    //   0	266	1	paramHttpClientConnection	HttpClientConnection
    //   0	266	2	paramObject	Object
    //   0	266	3	paramLong	long
    //   0	266	5	paramTimeUnit	TimeUnit
    //   1	77	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   5	12	134	finally
    //   12	20	134	finally
    //   23	68	134	finally
    //   68	77	134	finally
    //   126	131	134	finally
    //   242	249	134	finally
    //   85	126	241	finally
    //   139	156	241	finally
    //   162	191	241	finally
    //   191	217	241	finally
    //   223	238	241	finally
    //   256	263	241	finally
  }
  
  public final ConnectionRequest requestConnection(final HttpRoute paramHttpRoute, final Object paramObject)
  {
    Args.notNull(paramHttpRoute, "Route");
    new ConnectionRequest()
    {
      public boolean cancel()
      {
        return false;
      }
      
      public HttpClientConnection get(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
      {
        return BasicHttpClientConnectionManager.this.getConnection(paramHttpRoute, paramObject);
      }
    };
  }
  
  public void routeComplete(HttpClientConnection paramHttpClientConnection, HttpRoute paramHttpRoute, HttpContext paramHttpContext) {}
  
  public void setConnectionConfig(ConnectionConfig paramConnectionConfig)
  {
    if (paramConnectionConfig != null) {}
    for (;;)
    {
      try
      {
        this.connConfig = paramConnectionConfig;
        return;
      }
      finally {}
      paramConnectionConfig = ConnectionConfig.DEFAULT;
    }
  }
  
  public void setSocketConfig(SocketConfig paramSocketConfig)
  {
    if (paramSocketConfig != null) {}
    for (;;)
    {
      try
      {
        this.socketConfig = paramSocketConfig;
        return;
      }
      finally {}
      paramSocketConfig = SocketConfig.DEFAULT;
    }
  }
  
  public void shutdown()
  {
    try
    {
      if (this.isShutdown.compareAndSet(false, true)) {
        shutdownConnection();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void upgrade(HttpClientConnection paramHttpClientConnection, HttpRoute paramHttpRoute, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpClientConnection, "Connection");
    Args.notNull(paramHttpRoute, "HTTP route");
    if (paramHttpClientConnection == this.conn) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Connection not obtained from this manager");
      this.connectionOperator.upgrade(this.conn, paramHttpRoute.getTargetHost(), paramHttpContext);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\BasicHttpClientConnectionManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */