package org.apache.http.impl.conn;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
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
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
@ThreadSafe
public class SingleClientConnManager
  implements ClientConnectionManager
{
  public static final String MISUSE_MESSAGE = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.";
  protected final boolean alwaysShutDown;
  protected final ClientConnectionOperator connOperator;
  @GuardedBy("this")
  protected volatile long connectionExpiresTime;
  protected volatile boolean isShutDown;
  @GuardedBy("this")
  protected volatile long lastReleaseTime;
  private final Log log = LogFactory.getLog(getClass());
  @GuardedBy("this")
  protected volatile SingleClientConnManager.ConnAdapter managedConn;
  protected final SchemeRegistry schemeRegistry;
  @GuardedBy("this")
  protected volatile SingleClientConnManager.PoolEntry uniquePoolEntry;
  
  public SingleClientConnManager()
  {
    this(SchemeRegistryFactory.createDefault());
  }
  
  public SingleClientConnManager(SchemeRegistry paramSchemeRegistry)
  {
    Args.notNull(paramSchemeRegistry, "Scheme registry");
    this.schemeRegistry = paramSchemeRegistry;
    this.connOperator = createConnectionOperator(paramSchemeRegistry);
    this.uniquePoolEntry = new SingleClientConnManager.PoolEntry(this);
    this.managedConn = null;
    this.lastReleaseTime = -1L;
    this.alwaysShutDown = false;
    this.isShutDown = false;
  }
  
  @Deprecated
  public SingleClientConnManager(HttpParams paramHttpParams, SchemeRegistry paramSchemeRegistry)
  {
    this(paramSchemeRegistry);
  }
  
  protected final void assertStillUp()
  {
    if (!this.isShutDown) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Manager is shut down");
      return;
    }
  }
  
  public void closeExpiredConnections()
  {
    long l = this.connectionExpiresTime;
    if (System.currentTimeMillis() >= l) {
      closeIdleConnections(0L, TimeUnit.MILLISECONDS);
    }
  }
  
  /* Error */
  public void closeIdleConnections(long paramLong, TimeUnit paramTimeUnit)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 126	org/apache/http/impl/conn/SingleClientConnManager:assertStillUp	()V
    //   4: aload_3
    //   5: ldc -128
    //   7: invokestatic 67	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   10: pop
    //   11: aload_0
    //   12: monitorenter
    //   13: aload_0
    //   14: getfield 84	org/apache/http/impl/conn/SingleClientConnManager:managedConn	Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    //   17: ifnonnull +52 -> 69
    //   20: aload_0
    //   21: getfield 82	org/apache/http/impl/conn/SingleClientConnManager:uniquePoolEntry	Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    //   24: getfield 132	org/apache/http/impl/conn/SingleClientConnManager$PoolEntry:connection	Lorg/apache/http/conn/OperatedClientConnection;
    //   27: invokeinterface 138 1 0
    //   32: ifeq +37 -> 69
    //   35: invokestatic 112	java/lang/System:currentTimeMillis	()J
    //   38: lstore 4
    //   40: aload_3
    //   41: lload_1
    //   42: invokevirtual 142	java/util/concurrent/TimeUnit:toMillis	(J)J
    //   45: lstore_1
    //   46: aload_0
    //   47: getfield 88	org/apache/http/impl/conn/SingleClientConnManager:lastReleaseTime	J
    //   50: lstore 6
    //   52: lload 6
    //   54: lload 4
    //   56: lload_1
    //   57: lsub
    //   58: lcmp
    //   59: ifgt +10 -> 69
    //   62: aload_0
    //   63: getfield 82	org/apache/http/impl/conn/SingleClientConnManager:uniquePoolEntry	Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    //   66: invokevirtual 145	org/apache/http/impl/conn/SingleClientConnManager$PoolEntry:close	()V
    //   69: aload_0
    //   70: monitorexit
    //   71: return
    //   72: astore_3
    //   73: aload_0
    //   74: getfield 59	org/apache/http/impl/conn/SingleClientConnManager:log	Lorg/apache/commons/logging/Log;
    //   77: ldc -109
    //   79: aload_3
    //   80: invokeinterface 153 3 0
    //   85: goto -16 -> 69
    //   88: astore_3
    //   89: aload_0
    //   90: monitorexit
    //   91: aload_3
    //   92: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	SingleClientConnManager
    //   0	93	1	paramLong	long
    //   0	93	3	paramTimeUnit	TimeUnit
    //   38	17	4	l1	long
    //   50	3	6	l2	long
    // Exception table:
    //   from	to	target	type
    //   62	69	72	java/io/IOException
    //   13	52	88	finally
    //   62	69	88	finally
    //   69	71	88	finally
    //   73	85	88	finally
    //   89	91	88	finally
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
  
  public ManagedClientConnection getConnection(HttpRoute paramHttpRoute, Object paramObject)
  {
    int k = 1;
    int j = 0;
    Args.notNull(paramHttpRoute, "Route");
    assertStillUp();
    if (this.log.isDebugEnabled()) {
      this.log.debug("Get connection for route " + paramHttpRoute);
    }
    for (;;)
    {
      try
      {
        if (this.managedConn != null) {
          break label214;
        }
        bool = true;
        Asserts.check(bool, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.");
        closeExpiredConnections();
        if (!this.uniquePoolEntry.connection.isOpen()) {
          break label225;
        }
        paramObject = this.uniquePoolEntry.tracker;
        if (paramObject != null)
        {
          bool = ((RouteTracker)paramObject).toRoute().equals(paramHttpRoute);
          if (bool) {
            break label220;
          }
        }
        i = 1;
        int m = 0;
        j = i;
        i = m;
        if (j != 0)
        {
          try
          {
            this.uniquePoolEntry.shutdown();
            i = k;
          }
          catch (IOException paramObject)
          {
            this.log.debug("Problem shutting down connection.", (Throwable)paramObject);
            i = k;
            continue;
          }
          if (i != 0) {
            this.uniquePoolEntry = new SingleClientConnManager.PoolEntry(this);
          }
          this.managedConn = new SingleClientConnManager.ConnAdapter(this, this.uniquePoolEntry, paramHttpRoute);
          paramHttpRoute = this.managedConn;
          return paramHttpRoute;
        }
      }
      finally {}
      continue;
      label214:
      boolean bool = false;
      continue;
      label220:
      int i = 0;
      continue;
      label225:
      i = 1;
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
    //   1: instanceof 208
    //   4: ldc -38
    //   6: invokestatic 219	org/apache/http/util/Args:check	(ZLjava/lang/String;)V
    //   9: aload_0
    //   10: invokevirtual 126	org/apache/http/impl/conn/SingleClientConnManager:assertStillUp	()V
    //   13: aload_0
    //   14: getfield 59	org/apache/http/impl/conn/SingleClientConnManager:log	Lorg/apache/commons/logging/Log;
    //   17: invokeinterface 169 1 0
    //   22: ifeq +28 -> 50
    //   25: aload_0
    //   26: getfield 59	org/apache/http/impl/conn/SingleClientConnManager:log	Lorg/apache/commons/logging/Log;
    //   29: new 171	java/lang/StringBuilder
    //   32: dup
    //   33: ldc -35
    //   35: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   38: aload_1
    //   39: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 184	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokeinterface 187 2 0
    //   50: aload_1
    //   51: checkcast 208	org/apache/http/impl/conn/SingleClientConnManager$ConnAdapter
    //   54: astore_1
    //   55: aload_1
    //   56: monitorenter
    //   57: aload_1
    //   58: getfield 225	org/apache/http/impl/conn/SingleClientConnManager$ConnAdapter:poolEntry	Lorg/apache/http/impl/conn/AbstractPoolEntry;
    //   61: ifnonnull +6 -> 67
    //   64: aload_1
    //   65: monitorexit
    //   66: return
    //   67: aload_1
    //   68: invokevirtual 229	org/apache/http/impl/conn/SingleClientConnManager$ConnAdapter:getManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   71: aload_0
    //   72: if_acmpne +112 -> 184
    //   75: iconst_1
    //   76: istore 6
    //   78: iload 6
    //   80: ldc -25
    //   82: invokestatic 103	org/apache/http/util/Asserts:check	(ZLjava/lang/String;)V
    //   85: aload_1
    //   86: invokevirtual 232	org/apache/http/impl/conn/SingleClientConnManager$ConnAdapter:isOpen	()Z
    //   89: ifeq +44 -> 133
    //   92: aload_0
    //   93: getfield 90	org/apache/http/impl/conn/SingleClientConnManager:alwaysShutDown	Z
    //   96: ifne +10 -> 106
    //   99: aload_1
    //   100: invokevirtual 235	org/apache/http/impl/conn/SingleClientConnManager$ConnAdapter:isMarkedReusable	()Z
    //   103: ifne +30 -> 133
    //   106: aload_0
    //   107: getfield 59	org/apache/http/impl/conn/SingleClientConnManager:log	Lorg/apache/commons/logging/Log;
    //   110: invokeinterface 169 1 0
    //   115: ifeq +14 -> 129
    //   118: aload_0
    //   119: getfield 59	org/apache/http/impl/conn/SingleClientConnManager:log	Lorg/apache/commons/logging/Log;
    //   122: ldc -19
    //   124: invokeinterface 187 2 0
    //   129: aload_1
    //   130: invokevirtual 238	org/apache/http/impl/conn/SingleClientConnManager$ConnAdapter:shutdown	()V
    //   133: aload_1
    //   134: invokevirtual 241	org/apache/http/impl/conn/SingleClientConnManager$ConnAdapter:detach	()V
    //   137: aload_0
    //   138: monitorenter
    //   139: aload_0
    //   140: aconst_null
    //   141: putfield 84	org/apache/http/impl/conn/SingleClientConnManager:managedConn	Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    //   144: aload_0
    //   145: invokestatic 112	java/lang/System:currentTimeMillis	()J
    //   148: putfield 88	org/apache/http/impl/conn/SingleClientConnManager:lastReleaseTime	J
    //   151: lload_2
    //   152: lconst_0
    //   153: lcmp
    //   154: ifle +36 -> 190
    //   157: aload_0
    //   158: aload 4
    //   160: lload_2
    //   161: invokevirtual 142	java/util/concurrent/TimeUnit:toMillis	(J)J
    //   164: aload_0
    //   165: getfield 88	org/apache/http/impl/conn/SingleClientConnManager:lastReleaseTime	J
    //   168: ladd
    //   169: putfield 106	org/apache/http/impl/conn/SingleClientConnManager:connectionExpiresTime	J
    //   172: aload_0
    //   173: monitorexit
    //   174: aload_1
    //   175: monitorexit
    //   176: return
    //   177: astore 4
    //   179: aload_1
    //   180: monitorexit
    //   181: aload 4
    //   183: athrow
    //   184: iconst_0
    //   185: istore 6
    //   187: goto -109 -> 78
    //   190: aload_0
    //   191: ldc2_w 242
    //   194: putfield 106	org/apache/http/impl/conn/SingleClientConnManager:connectionExpiresTime	J
    //   197: goto -25 -> 172
    //   200: astore 4
    //   202: aload_0
    //   203: monitorexit
    //   204: aload 4
    //   206: athrow
    //   207: astore 5
    //   209: aload_0
    //   210: getfield 59	org/apache/http/impl/conn/SingleClientConnManager:log	Lorg/apache/commons/logging/Log;
    //   213: invokeinterface 169 1 0
    //   218: ifeq +16 -> 234
    //   221: aload_0
    //   222: getfield 59	org/apache/http/impl/conn/SingleClientConnManager:log	Lorg/apache/commons/logging/Log;
    //   225: ldc -11
    //   227: aload 5
    //   229: invokeinterface 153 3 0
    //   234: aload_1
    //   235: invokevirtual 241	org/apache/http/impl/conn/SingleClientConnManager$ConnAdapter:detach	()V
    //   238: aload_0
    //   239: monitorenter
    //   240: aload_0
    //   241: aconst_null
    //   242: putfield 84	org/apache/http/impl/conn/SingleClientConnManager:managedConn	Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    //   245: aload_0
    //   246: invokestatic 112	java/lang/System:currentTimeMillis	()J
    //   249: putfield 88	org/apache/http/impl/conn/SingleClientConnManager:lastReleaseTime	J
    //   252: lload_2
    //   253: lconst_0
    //   254: lcmp
    //   255: ifle +30 -> 285
    //   258: aload_0
    //   259: aload 4
    //   261: lload_2
    //   262: invokevirtual 142	java/util/concurrent/TimeUnit:toMillis	(J)J
    //   265: aload_0
    //   266: getfield 88	org/apache/http/impl/conn/SingleClientConnManager:lastReleaseTime	J
    //   269: ladd
    //   270: putfield 106	org/apache/http/impl/conn/SingleClientConnManager:connectionExpiresTime	J
    //   273: aload_0
    //   274: monitorexit
    //   275: goto -101 -> 174
    //   278: astore 4
    //   280: aload_0
    //   281: monitorexit
    //   282: aload 4
    //   284: athrow
    //   285: aload_0
    //   286: ldc2_w 242
    //   289: putfield 106	org/apache/http/impl/conn/SingleClientConnManager:connectionExpiresTime	J
    //   292: goto -19 -> 273
    //   295: astore 5
    //   297: aload_1
    //   298: invokevirtual 241	org/apache/http/impl/conn/SingleClientConnManager$ConnAdapter:detach	()V
    //   301: aload_0
    //   302: monitorenter
    //   303: aload_0
    //   304: aconst_null
    //   305: putfield 84	org/apache/http/impl/conn/SingleClientConnManager:managedConn	Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    //   308: aload_0
    //   309: invokestatic 112	java/lang/System:currentTimeMillis	()J
    //   312: putfield 88	org/apache/http/impl/conn/SingleClientConnManager:lastReleaseTime	J
    //   315: lload_2
    //   316: lconst_0
    //   317: lcmp
    //   318: ifle +23 -> 341
    //   321: aload_0
    //   322: aload 4
    //   324: lload_2
    //   325: invokevirtual 142	java/util/concurrent/TimeUnit:toMillis	(J)J
    //   328: aload_0
    //   329: getfield 88	org/apache/http/impl/conn/SingleClientConnManager:lastReleaseTime	J
    //   332: ladd
    //   333: putfield 106	org/apache/http/impl/conn/SingleClientConnManager:connectionExpiresTime	J
    //   336: aload_0
    //   337: monitorexit
    //   338: aload 5
    //   340: athrow
    //   341: aload_0
    //   342: ldc2_w 242
    //   345: putfield 106	org/apache/http/impl/conn/SingleClientConnManager:connectionExpiresTime	J
    //   348: goto -12 -> 336
    //   351: astore 4
    //   353: aload_0
    //   354: monitorexit
    //   355: aload 4
    //   357: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	358	0	this	SingleClientConnManager
    //   0	358	1	paramManagedClientConnection	ManagedClientConnection
    //   0	358	2	paramLong	long
    //   0	358	4	paramTimeUnit	TimeUnit
    //   207	21	5	localIOException	IOException
    //   295	44	5	localObject	Object
    //   76	110	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   57	66	177	finally
    //   67	75	177	finally
    //   78	85	177	finally
    //   133	139	177	finally
    //   174	176	177	finally
    //   179	181	177	finally
    //   204	207	177	finally
    //   234	240	177	finally
    //   282	285	177	finally
    //   297	303	177	finally
    //   338	341	177	finally
    //   355	358	177	finally
    //   139	151	200	finally
    //   157	172	200	finally
    //   172	174	200	finally
    //   190	197	200	finally
    //   202	204	200	finally
    //   85	106	207	java/io/IOException
    //   106	129	207	java/io/IOException
    //   129	133	207	java/io/IOException
    //   240	252	278	finally
    //   258	273	278	finally
    //   273	275	278	finally
    //   280	282	278	finally
    //   285	292	278	finally
    //   85	106	295	finally
    //   106	129	295	finally
    //   129	133	295	finally
    //   209	234	295	finally
    //   303	315	351	finally
    //   321	336	351	finally
    //   336	338	351	finally
    //   341	348	351	finally
    //   353	355	351	finally
  }
  
  public final ClientConnectionRequest requestConnection(final HttpRoute paramHttpRoute, final Object paramObject)
  {
    new ClientConnectionRequest()
    {
      public void abortRequest() {}
      
      public ManagedClientConnection getConnection(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
      {
        return SingleClientConnManager.this.getConnection(paramHttpRoute, paramObject);
      }
    };
  }
  
  /* Error */
  protected void revokeConnection()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 84	org/apache/http/impl/conn/SingleClientConnManager:managedConn	Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnonnull +4 -> 10
    //   9: return
    //   10: aload_1
    //   11: invokevirtual 241	org/apache/http/impl/conn/SingleClientConnManager$ConnAdapter:detach	()V
    //   14: aload_0
    //   15: monitorenter
    //   16: aload_0
    //   17: getfield 82	org/apache/http/impl/conn/SingleClientConnManager:uniquePoolEntry	Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    //   20: invokevirtual 206	org/apache/http/impl/conn/SingleClientConnManager$PoolEntry:shutdown	()V
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: astore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_1
    //   30: athrow
    //   31: astore_1
    //   32: aload_0
    //   33: getfield 59	org/apache/http/impl/conn/SingleClientConnManager:log	Lorg/apache/commons/logging/Log;
    //   36: ldc -3
    //   38: aload_1
    //   39: invokeinterface 153 3 0
    //   44: goto -21 -> 23
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	SingleClientConnManager
    //   4	7	1	localConnAdapter	SingleClientConnManager.ConnAdapter
    //   26	4	1	localObject	Object
    //   31	8	1	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   16	23	26	finally
    //   23	25	26	finally
    //   27	29	26	finally
    //   32	44	26	finally
    //   16	23	31	java/io/IOException
  }
  
  /* Error */
  public void shutdown()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: putfield 92	org/apache/http/impl/conn/SingleClientConnManager:isShutDown	Z
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 82	org/apache/http/impl/conn/SingleClientConnManager:uniquePoolEntry	Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    //   11: ifnull +10 -> 21
    //   14: aload_0
    //   15: getfield 82	org/apache/http/impl/conn/SingleClientConnManager:uniquePoolEntry	Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    //   18: invokevirtual 206	org/apache/http/impl/conn/SingleClientConnManager$PoolEntry:shutdown	()V
    //   21: aload_0
    //   22: aconst_null
    //   23: putfield 82	org/apache/http/impl/conn/SingleClientConnManager:uniquePoolEntry	Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    //   26: aload_0
    //   27: aconst_null
    //   28: putfield 84	org/apache/http/impl/conn/SingleClientConnManager:managedConn	Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: astore_1
    //   35: aload_0
    //   36: getfield 59	org/apache/http/impl/conn/SingleClientConnManager:log	Lorg/apache/commons/logging/Log;
    //   39: ldc -1
    //   41: aload_1
    //   42: invokeinterface 153 3 0
    //   47: aload_0
    //   48: aconst_null
    //   49: putfield 82	org/apache/http/impl/conn/SingleClientConnManager:uniquePoolEntry	Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    //   52: aload_0
    //   53: aconst_null
    //   54: putfield 84	org/apache/http/impl/conn/SingleClientConnManager:managedConn	Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    //   57: goto -26 -> 31
    //   60: astore_1
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_1
    //   64: athrow
    //   65: astore_1
    //   66: aload_0
    //   67: aconst_null
    //   68: putfield 82	org/apache/http/impl/conn/SingleClientConnManager:uniquePoolEntry	Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    //   71: aload_0
    //   72: aconst_null
    //   73: putfield 84	org/apache/http/impl/conn/SingleClientConnManager:managedConn	Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    //   76: aload_1
    //   77: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	78	0	this	SingleClientConnManager
    //   34	8	1	localIOException	IOException
    //   60	4	1	localObject1	Object
    //   65	12	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   7	21	34	java/io/IOException
    //   21	31	60	finally
    //   31	33	60	finally
    //   47	57	60	finally
    //   61	63	60	finally
    //   66	78	60	finally
    //   7	21	65	finally
    //   35	47	65	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\SingleClientConnManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */