package org.apache.http.impl.conn;

import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.pool.ConnPoolControl;
import org.apache.http.pool.PoolStats;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
@ThreadSafe
public class PoolingClientConnectionManager
  implements ClientConnectionManager, ConnPoolControl<HttpRoute>
{
  private final DnsResolver dnsResolver;
  private final Log log = LogFactory.getLog(getClass());
  private final ClientConnectionOperator operator;
  private final HttpConnPool pool;
  private final SchemeRegistry schemeRegistry;
  
  public PoolingClientConnectionManager()
  {
    this(SchemeRegistryFactory.createDefault());
  }
  
  public PoolingClientConnectionManager(SchemeRegistry paramSchemeRegistry)
  {
    this(paramSchemeRegistry, -1L, TimeUnit.MILLISECONDS);
  }
  
  public PoolingClientConnectionManager(SchemeRegistry paramSchemeRegistry, long paramLong, TimeUnit paramTimeUnit)
  {
    this(paramSchemeRegistry, paramLong, paramTimeUnit, new SystemDefaultDnsResolver());
  }
  
  public PoolingClientConnectionManager(SchemeRegistry paramSchemeRegistry, long paramLong, TimeUnit paramTimeUnit, DnsResolver paramDnsResolver)
  {
    Args.notNull(paramSchemeRegistry, "Scheme registry");
    Args.notNull(paramDnsResolver, "DNS resolver");
    this.schemeRegistry = paramSchemeRegistry;
    this.dnsResolver = paramDnsResolver;
    this.operator = createConnectionOperator(paramSchemeRegistry);
    this.pool = new HttpConnPool(this.log, this.operator, 2, 20, paramLong, paramTimeUnit);
  }
  
  public PoolingClientConnectionManager(SchemeRegistry paramSchemeRegistry, DnsResolver paramDnsResolver)
  {
    this(paramSchemeRegistry, -1L, TimeUnit.MILLISECONDS, paramDnsResolver);
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
  
  private String format(HttpPoolEntry paramHttpPoolEntry)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[id: ").append(paramHttpPoolEntry.getId()).append("]");
    localStringBuilder.append("[route: ").append(paramHttpPoolEntry.getRoute()).append("]");
    paramHttpPoolEntry = paramHttpPoolEntry.getState();
    if (paramHttpPoolEntry != null) {
      localStringBuilder.append("[state: ").append(paramHttpPoolEntry).append("]");
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
  
  protected ClientConnectionOperator createConnectionOperator(SchemeRegistry paramSchemeRegistry)
  {
    return new DefaultClientConnectionOperator(paramSchemeRegistry, this.dnsResolver);
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
  
  public int getDefaultMaxPerRoute()
  {
    return this.pool.getDefaultMaxPerRoute();
  }
  
  public int getMaxPerRoute(HttpRoute paramHttpRoute)
  {
    return this.pool.getMaxPerRoute(paramHttpRoute);
  }
  
  public int getMaxTotal()
  {
    return this.pool.getMaxTotal();
  }
  
  public SchemeRegistry getSchemeRegistry()
  {
    return this.schemeRegistry;
  }
  
  public PoolStats getStats(HttpRoute paramHttpRoute)
  {
    return this.pool.getStats(paramHttpRoute);
  }
  
  public PoolStats getTotalStats()
  {
    return this.pool.getTotalStats();
  }
  
  ManagedClientConnection leaseConnection(Future<HttpPoolEntry> paramFuture, long paramLong, TimeUnit paramTimeUnit)
  {
    for (;;)
    {
      try
      {
        paramTimeUnit = (HttpPoolEntry)paramFuture.get(paramLong, paramTimeUnit);
        if ((paramTimeUnit == null) || (paramFuture.isCancelled())) {
          throw new InterruptedException();
        }
      }
      catch (ExecutionException paramFuture)
      {
        paramTimeUnit = paramFuture.getCause();
        if (paramTimeUnit == null)
        {
          this.log.error("Unexpected exception leasing connection from pool", paramFuture);
          throw new InterruptedException();
          if (paramTimeUnit.getConnection() != null)
          {
            bool = true;
            Asserts.check(bool, "Pool entry with no connection");
            if (this.log.isDebugEnabled()) {
              this.log.debug("Connection leased: " + format(paramTimeUnit) + formatStats((HttpRoute)paramTimeUnit.getRoute()));
            }
            paramFuture = new ManagedClientConnectionImpl(this, this.operator, paramTimeUnit);
            return paramFuture;
          }
          boolean bool = false;
          continue;
        }
      }
      catch (TimeoutException paramFuture)
      {
        throw new ConnectionPoolTimeoutException("Timeout waiting for connection from pool");
      }
      paramFuture = paramTimeUnit;
    }
  }
  
  /* Error */
  public void releaseConnection(ManagedClientConnection paramManagedClientConnection, long paramLong, TimeUnit paramTimeUnit)
  {
    // Byte code:
    //   0: aload_1
    //   1: instanceof 273
    //   4: ldc_w 289
    //   7: invokestatic 290	org/apache/http/util/Args:check	(ZLjava/lang/String;)V
    //   10: aload_1
    //   11: checkcast 273	org/apache/http/impl/conn/ManagedClientConnectionImpl
    //   14: astore 5
    //   16: aload 5
    //   18: invokevirtual 294	org/apache/http/impl/conn/ManagedClientConnectionImpl:getManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   21: aload_0
    //   22: if_acmpne +33 -> 55
    //   25: iconst_1
    //   26: istore 7
    //   28: iload 7
    //   30: ldc_w 296
    //   33: invokestatic 265	org/apache/http/util/Asserts:check	(ZLjava/lang/String;)V
    //   36: aload 5
    //   38: monitorenter
    //   39: aload 5
    //   41: invokevirtual 300	org/apache/http/impl/conn/ManagedClientConnectionImpl:detach	()Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   44: astore 6
    //   46: aload 6
    //   48: ifnonnull +13 -> 61
    //   51: aload 5
    //   53: monitorexit
    //   54: return
    //   55: iconst_0
    //   56: istore 7
    //   58: goto -30 -> 28
    //   61: aload 5
    //   63: invokevirtual 303	org/apache/http/impl/conn/ManagedClientConnectionImpl:isOpen	()Z
    //   66: ifeq +20 -> 86
    //   69: aload 5
    //   71: invokevirtual 306	org/apache/http/impl/conn/ManagedClientConnectionImpl:isMarkedReusable	()Z
    //   74: istore 7
    //   76: iload 7
    //   78: ifne +8 -> 86
    //   81: aload 5
    //   83: invokevirtual 307	org/apache/http/impl/conn/ManagedClientConnectionImpl:shutdown	()V
    //   86: aload 5
    //   88: invokevirtual 306	org/apache/http/impl/conn/ManagedClientConnectionImpl:isMarkedReusable	()Z
    //   91: ifeq +105 -> 196
    //   94: aload 4
    //   96: ifnull +228 -> 324
    //   99: aload 4
    //   101: astore_1
    //   102: aload 6
    //   104: lload_2
    //   105: aload_1
    //   106: invokevirtual 310	org/apache/http/impl/conn/HttpPoolEntry:updateExpiry	(JLjava/util/concurrent/TimeUnit;)V
    //   109: aload_0
    //   110: getfield 66	org/apache/http/impl/conn/PoolingClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   113: invokeinterface 184 1 0
    //   118: ifeq +78 -> 196
    //   121: lload_2
    //   122: lconst_0
    //   123: lcmp
    //   124: ifle +207 -> 331
    //   127: new 98	java/lang/StringBuilder
    //   130: dup
    //   131: ldc_w 312
    //   134: invokespecial 189	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   137: lload_2
    //   138: invokevirtual 192	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   141: ldc -62
    //   143: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: aload 4
    //   148: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   151: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: astore_1
    //   155: aload_0
    //   156: getfield 66	org/apache/http/impl/conn/PoolingClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   159: new 98	java/lang/StringBuilder
    //   162: dup
    //   163: ldc_w 314
    //   166: invokespecial 189	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   169: aload_0
    //   170: aload 6
    //   172: invokespecial 269	org/apache/http/impl/conn/PoolingClientConnectionManager:format	(Lorg/apache/http/impl/conn/HttpPoolEntry;)Ljava/lang/String;
    //   175: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: ldc_w 316
    //   181: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: aload_1
    //   185: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: invokeinterface 175 2 0
    //   196: aload_0
    //   197: getfield 93	org/apache/http/impl/conn/PoolingClientConnectionManager:pool	Lorg/apache/http/impl/conn/HttpConnPool;
    //   200: aload 6
    //   202: aload 5
    //   204: invokevirtual 306	org/apache/http/impl/conn/ManagedClientConnectionImpl:isMarkedReusable	()Z
    //   207: invokevirtual 320	org/apache/http/impl/conn/HttpConnPool:release	(Lorg/apache/http/pool/PoolEntry;Z)V
    //   210: aload_0
    //   211: getfield 66	org/apache/http/impl/conn/PoolingClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   214: invokeinterface 184 1 0
    //   219: ifeq +49 -> 268
    //   222: aload_0
    //   223: getfield 66	org/apache/http/impl/conn/PoolingClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   226: new 98	java/lang/StringBuilder
    //   229: dup
    //   230: ldc_w 322
    //   233: invokespecial 189	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   236: aload_0
    //   237: aload 6
    //   239: invokespecial 269	org/apache/http/impl/conn/PoolingClientConnectionManager:format	(Lorg/apache/http/impl/conn/HttpPoolEntry;)Ljava/lang/String;
    //   242: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: aload_0
    //   246: aload 6
    //   248: invokevirtual 128	org/apache/http/impl/conn/HttpPoolEntry:getRoute	()Ljava/lang/Object;
    //   251: checkcast 214	org/apache/http/conn/routing/HttpRoute
    //   254: invokespecial 271	org/apache/http/impl/conn/PoolingClientConnectionManager:formatStats	(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;
    //   257: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   263: invokeinterface 175 2 0
    //   268: aload 5
    //   270: monitorexit
    //   271: return
    //   272: astore_1
    //   273: aload 5
    //   275: monitorexit
    //   276: aload_1
    //   277: athrow
    //   278: astore_1
    //   279: aload_0
    //   280: getfield 66	org/apache/http/impl/conn/PoolingClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   283: invokeinterface 184 1 0
    //   288: ifeq -202 -> 86
    //   291: aload_0
    //   292: getfield 66	org/apache/http/impl/conn/PoolingClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   295: ldc_w 324
    //   298: aload_1
    //   299: invokeinterface 326 3 0
    //   304: goto -218 -> 86
    //   307: astore_1
    //   308: aload_0
    //   309: getfield 93	org/apache/http/impl/conn/PoolingClientConnectionManager:pool	Lorg/apache/http/impl/conn/HttpConnPool;
    //   312: aload 6
    //   314: aload 5
    //   316: invokevirtual 306	org/apache/http/impl/conn/ManagedClientConnectionImpl:isMarkedReusable	()Z
    //   319: invokevirtual 320	org/apache/http/impl/conn/HttpConnPool:release	(Lorg/apache/http/pool/PoolEntry;Z)V
    //   322: aload_1
    //   323: athrow
    //   324: getstatic 43	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   327: astore_1
    //   328: goto -226 -> 102
    //   331: ldc_w 328
    //   334: astore_1
    //   335: goto -180 -> 155
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	338	0	this	PoolingClientConnectionManager
    //   0	338	1	paramManagedClientConnection	ManagedClientConnection
    //   0	338	2	paramLong	long
    //   0	338	4	paramTimeUnit	TimeUnit
    //   14	301	5	localManagedClientConnectionImpl	ManagedClientConnectionImpl
    //   44	269	6	localHttpPoolEntry	HttpPoolEntry
    //   26	51	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   39	46	272	finally
    //   51	54	272	finally
    //   196	268	272	finally
    //   268	271	272	finally
    //   273	276	272	finally
    //   308	324	272	finally
    //   81	86	278	java/io/IOException
    //   61	76	307	finally
    //   81	86	307	finally
    //   86	94	307	finally
    //   102	121	307	finally
    //   127	155	307	finally
    //   155	196	307	finally
    //   279	304	307	finally
    //   324	328	307	finally
  }
  
  public ClientConnectionRequest requestConnection(HttpRoute paramHttpRoute, Object paramObject)
  {
    Args.notNull(paramHttpRoute, "HTTP route");
    if (this.log.isDebugEnabled()) {
      this.log.debug("Connection request: " + format(paramHttpRoute, paramObject) + formatStats(paramHttpRoute));
    }
    new ClientConnectionRequest()
    {
      public void abortRequest()
      {
        this.val$future.cancel(true);
      }
      
      public ManagedClientConnection getConnection(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
      {
        return PoolingClientConnectionManager.this.leaseConnection(this.val$future, paramAnonymousLong, paramAnonymousTimeUnit);
      }
    };
  }
  
  public void setDefaultMaxPerRoute(int paramInt)
  {
    this.pool.setDefaultMaxPerRoute(paramInt);
  }
  
  public void setMaxPerRoute(HttpRoute paramHttpRoute, int paramInt)
  {
    this.pool.setMaxPerRoute(paramHttpRoute, paramInt);
  }
  
  public void setMaxTotal(int paramInt)
  {
    this.pool.setMaxTotal(paramInt);
  }
  
  public void shutdown()
  {
    this.log.debug("Connection manager is shutting down");
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
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\PoolingClientConnectionManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */