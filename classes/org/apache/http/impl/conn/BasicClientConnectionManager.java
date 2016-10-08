package org.apache.http.impl.conn;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpClientConnection;
import org.apache.http.annotation.GuardedBy;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
@ThreadSafe
public class BasicClientConnectionManager
  implements ClientConnectionManager
{
  private static final AtomicLong COUNTER = new AtomicLong();
  public static final String MISUSE_MESSAGE = "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.";
  @GuardedBy("this")
  private ManagedClientConnectionImpl conn;
  private final ClientConnectionOperator connOperator;
  private final Log log = LogFactory.getLog(getClass());
  @GuardedBy("this")
  private HttpPoolEntry poolEntry;
  private final SchemeRegistry schemeRegistry;
  @GuardedBy("this")
  private volatile boolean shutdown;
  
  public BasicClientConnectionManager()
  {
    this(SchemeRegistryFactory.createDefault());
  }
  
  public BasicClientConnectionManager(SchemeRegistry paramSchemeRegistry)
  {
    Args.notNull(paramSchemeRegistry, "Scheme registry");
    this.schemeRegistry = paramSchemeRegistry;
    this.connOperator = createConnectionOperator(paramSchemeRegistry);
  }
  
  private void assertNotShutdown()
  {
    if (!this.shutdown) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Connection manager has been shut down");
      return;
    }
  }
  
  private void shutdownConnection(HttpClientConnection paramHttpClientConnection)
  {
    try
    {
      paramHttpClientConnection.shutdown();
      return;
    }
    catch (IOException paramHttpClientConnection)
    {
      while (!this.log.isDebugEnabled()) {}
      this.log.debug("I/O exception shutting down connection", paramHttpClientConnection);
    }
  }
  
  public void closeExpiredConnections()
  {
    try
    {
      assertNotShutdown();
      long l = System.currentTimeMillis();
      if ((this.poolEntry != null) && (this.poolEntry.isExpired(l)))
      {
        this.poolEntry.close();
        this.poolEntry.getTracker().reset();
      }
      return;
    }
    finally {}
  }
  
  public void closeIdleConnections(long paramLong, TimeUnit paramTimeUnit)
  {
    long l = 0L;
    Args.notNull(paramTimeUnit, "Time unit");
    for (;;)
    {
      try
      {
        assertNotShutdown();
        paramLong = paramTimeUnit.toMillis(paramLong);
        if (paramLong < 0L)
        {
          paramLong = l;
          l = System.currentTimeMillis();
          if ((this.poolEntry != null) && (this.poolEntry.getUpdated() <= l - paramLong))
          {
            this.poolEntry.close();
            this.poolEntry.getTracker().reset();
          }
          return;
        }
      }
      finally {}
    }
  }
  
  protected ClientConnectionOperator createConnectionOperator(SchemeRegistry paramSchemeRegistry)
  {
    return new DefaultClientConnectionOperator(paramSchemeRegistry);
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
  
  ManagedClientConnection getConnection(HttpRoute paramHttpRoute, Object paramObject)
  {
    Args.notNull(paramHttpRoute, "Route");
    for (;;)
    {
      try
      {
        assertNotShutdown();
        if (this.log.isDebugEnabled()) {
          this.log.debug("Get connection for route " + paramHttpRoute);
        }
        if (this.conn == null)
        {
          bool = true;
          Asserts.check(bool, "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.");
          if ((this.poolEntry != null) && (!this.poolEntry.getPlannedRoute().equals(paramHttpRoute)))
          {
            this.poolEntry.close();
            this.poolEntry = null;
          }
          if (this.poolEntry == null)
          {
            paramObject = Long.toString(COUNTER.getAndIncrement());
            OperatedClientConnection localOperatedClientConnection = this.connOperator.createConnection();
            this.poolEntry = new HttpPoolEntry(this.log, (String)paramObject, paramHttpRoute, localOperatedClientConnection, 0L, TimeUnit.MILLISECONDS);
          }
          long l = System.currentTimeMillis();
          if (this.poolEntry.isExpired(l))
          {
            this.poolEntry.close();
            this.poolEntry.getTracker().reset();
          }
          this.conn = new ManagedClientConnectionImpl(this, this.connOperator, this.poolEntry);
          paramHttpRoute = this.conn;
          return paramHttpRoute;
        }
      }
      finally {}
      boolean bool = false;
    }
  }
  
  public SchemeRegistry getSchemeRegistry()
  {
    return this.schemeRegistry;
  }
  
  /* Error */
  public void releaseConnection(ManagedClientConnection paramManagedClientConnection, long paramLong, TimeUnit paramTimeUnit)
  {
    // Byte code:
    //   0: aload_1
    //   1: instanceof 216
    //   4: ldc -32
    //   6: invokestatic 225	org/apache/http/util/Args:check	(ZLjava/lang/String;)V
    //   9: aload_1
    //   10: checkcast 216	org/apache/http/impl/conn/ManagedClientConnectionImpl
    //   13: astore 5
    //   15: aload 5
    //   17: monitorenter
    //   18: aload_0
    //   19: getfield 63	org/apache/http/impl/conn/BasicClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   22: invokeinterface 104 1 0
    //   27: ifeq +28 -> 55
    //   30: aload_0
    //   31: getfield 63	org/apache/http/impl/conn/BasicClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   34: new 165	java/lang/StringBuilder
    //   37: dup
    //   38: ldc -29
    //   40: invokespecial 170	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: aload_1
    //   44: invokevirtual 174	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokeinterface 181 2 0
    //   55: aload 5
    //   57: invokevirtual 231	org/apache/http/impl/conn/ManagedClientConnectionImpl:getPoolEntry	()Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   60: ifnonnull +7 -> 67
    //   63: aload 5
    //   65: monitorexit
    //   66: return
    //   67: aload 5
    //   69: invokevirtual 235	org/apache/http/impl/conn/ManagedClientConnectionImpl:getManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   72: aload_0
    //   73: if_acmpne +40 -> 113
    //   76: iconst_1
    //   77: istore 7
    //   79: iload 7
    //   81: ldc -19
    //   83: invokestatic 90	org/apache/http/util/Asserts:check	(ZLjava/lang/String;)V
    //   86: aload_0
    //   87: monitorenter
    //   88: aload_0
    //   89: getfield 82	org/apache/http/impl/conn/BasicClientConnectionManager:shutdown	Z
    //   92: ifeq +27 -> 119
    //   95: aload_0
    //   96: aload 5
    //   98: invokespecial 239	org/apache/http/impl/conn/BasicClientConnectionManager:shutdownConnection	(Lorg/apache/http/HttpClientConnection;)V
    //   101: aload_0
    //   102: monitorexit
    //   103: aload 5
    //   105: monitorexit
    //   106: return
    //   107: astore_1
    //   108: aload 5
    //   110: monitorexit
    //   111: aload_1
    //   112: athrow
    //   113: iconst_0
    //   114: istore 7
    //   116: goto -37 -> 79
    //   119: aload 5
    //   121: invokevirtual 242	org/apache/http/impl/conn/ManagedClientConnectionImpl:isOpen	()Z
    //   124: ifeq +17 -> 141
    //   127: aload 5
    //   129: invokevirtual 245	org/apache/http/impl/conn/ManagedClientConnectionImpl:isMarkedReusable	()Z
    //   132: ifne +9 -> 141
    //   135: aload_0
    //   136: aload 5
    //   138: invokespecial 239	org/apache/http/impl/conn/BasicClientConnectionManager:shutdownConnection	(Lorg/apache/http/HttpClientConnection;)V
    //   141: aload 5
    //   143: invokevirtual 245	org/apache/http/impl/conn/ManagedClientConnectionImpl:isMarkedReusable	()Z
    //   146: ifeq +95 -> 241
    //   149: aload_0
    //   150: getfield 121	org/apache/http/impl/conn/BasicClientConnectionManager:poolEntry	Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   153: astore 6
    //   155: aload 4
    //   157: ifnull +116 -> 273
    //   160: aload 4
    //   162: astore_1
    //   163: aload 6
    //   165: lload_2
    //   166: aload_1
    //   167: invokevirtual 248	org/apache/http/impl/conn/HttpPoolEntry:updateExpiry	(JLjava/util/concurrent/TimeUnit;)V
    //   170: aload_0
    //   171: getfield 63	org/apache/http/impl/conn/BasicClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   174: invokeinterface 104 1 0
    //   179: ifeq +62 -> 241
    //   182: lload_2
    //   183: lconst_0
    //   184: lcmp
    //   185: ifle +95 -> 280
    //   188: new 165	java/lang/StringBuilder
    //   191: dup
    //   192: ldc -6
    //   194: invokespecial 170	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   197: lload_2
    //   198: invokevirtual 253	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   201: ldc -1
    //   203: invokevirtual 258	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: aload 4
    //   208: invokevirtual 174	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   211: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   214: astore_1
    //   215: aload_0
    //   216: getfield 63	org/apache/http/impl/conn/BasicClientConnectionManager:log	Lorg/apache/commons/logging/Log;
    //   219: new 165	java/lang/StringBuilder
    //   222: dup
    //   223: ldc_w 260
    //   226: invokespecial 170	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   229: aload_1
    //   230: invokevirtual 258	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   236: invokeinterface 181 2 0
    //   241: aload 5
    //   243: invokevirtual 263	org/apache/http/impl/conn/ManagedClientConnectionImpl:detach	()Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   246: pop
    //   247: aload_0
    //   248: aconst_null
    //   249: putfield 183	org/apache/http/impl/conn/BasicClientConnectionManager:conn	Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;
    //   252: aload_0
    //   253: getfield 121	org/apache/http/impl/conn/BasicClientConnectionManager:poolEntry	Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   256: invokevirtual 266	org/apache/http/impl/conn/HttpPoolEntry:isClosed	()Z
    //   259: ifeq +8 -> 267
    //   262: aload_0
    //   263: aconst_null
    //   264: putfield 121	org/apache/http/impl/conn/BasicClientConnectionManager:poolEntry	Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   267: aload_0
    //   268: monitorexit
    //   269: aload 5
    //   271: monitorexit
    //   272: return
    //   273: getstatic 211	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   276: astore_1
    //   277: goto -114 -> 163
    //   280: ldc_w 268
    //   283: astore_1
    //   284: goto -69 -> 215
    //   287: astore_1
    //   288: aload 5
    //   290: invokevirtual 263	org/apache/http/impl/conn/ManagedClientConnectionImpl:detach	()Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   293: pop
    //   294: aload_0
    //   295: aconst_null
    //   296: putfield 183	org/apache/http/impl/conn/BasicClientConnectionManager:conn	Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;
    //   299: aload_0
    //   300: getfield 121	org/apache/http/impl/conn/BasicClientConnectionManager:poolEntry	Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   303: invokevirtual 266	org/apache/http/impl/conn/HttpPoolEntry:isClosed	()Z
    //   306: ifeq +8 -> 314
    //   309: aload_0
    //   310: aconst_null
    //   311: putfield 121	org/apache/http/impl/conn/BasicClientConnectionManager:poolEntry	Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   314: aload_1
    //   315: athrow
    //   316: astore_1
    //   317: aload_0
    //   318: monitorexit
    //   319: aload_1
    //   320: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	321	0	this	BasicClientConnectionManager
    //   0	321	1	paramManagedClientConnection	ManagedClientConnection
    //   0	321	2	paramLong	long
    //   0	321	4	paramTimeUnit	TimeUnit
    //   13	276	5	localManagedClientConnectionImpl	ManagedClientConnectionImpl
    //   153	11	6	localHttpPoolEntry	HttpPoolEntry
    //   77	38	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   18	55	107	finally
    //   55	66	107	finally
    //   67	76	107	finally
    //   79	88	107	finally
    //   103	106	107	finally
    //   108	111	107	finally
    //   269	272	107	finally
    //   319	321	107	finally
    //   119	141	287	finally
    //   141	155	287	finally
    //   163	182	287	finally
    //   188	215	287	finally
    //   215	241	287	finally
    //   273	277	287	finally
    //   88	103	316	finally
    //   241	267	316	finally
    //   267	269	316	finally
    //   288	314	316	finally
    //   314	316	316	finally
    //   317	319	316	finally
  }
  
  public final ClientConnectionRequest requestConnection(final HttpRoute paramHttpRoute, final Object paramObject)
  {
    new ClientConnectionRequest()
    {
      public void abortRequest() {}
      
      public ManagedClientConnection getConnection(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
      {
        return BasicClientConnectionManager.this.getConnection(paramHttpRoute, paramObject);
      }
    };
  }
  
  /* Error */
  public void shutdown()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 82	org/apache/http/impl/conn/BasicClientConnectionManager:shutdown	Z
    //   7: aload_0
    //   8: getfield 121	org/apache/http/impl/conn/BasicClientConnectionManager:poolEntry	Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   11: ifnull +10 -> 21
    //   14: aload_0
    //   15: getfield 121	org/apache/http/impl/conn/BasicClientConnectionManager:poolEntry	Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   18: invokevirtual 130	org/apache/http/impl/conn/HttpPoolEntry:close	()V
    //   21: aload_0
    //   22: aconst_null
    //   23: putfield 121	org/apache/http/impl/conn/BasicClientConnectionManager:poolEntry	Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   26: aload_0
    //   27: aconst_null
    //   28: putfield 183	org/apache/http/impl/conn/BasicClientConnectionManager:conn	Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: astore_1
    //   35: aload_0
    //   36: aconst_null
    //   37: putfield 121	org/apache/http/impl/conn/BasicClientConnectionManager:poolEntry	Lorg/apache/http/impl/conn/HttpPoolEntry;
    //   40: aload_0
    //   41: aconst_null
    //   42: putfield 183	org/apache/http/impl/conn/BasicClientConnectionManager:conn	Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;
    //   45: aload_1
    //   46: athrow
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	BasicClientConnectionManager
    //   34	12	1	localObject1	Object
    //   47	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   7	21	34	finally
    //   2	7	47	finally
    //   21	33	47	finally
    //   35	47	47	finally
    //   48	50	47	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\BasicClientConnectionManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */