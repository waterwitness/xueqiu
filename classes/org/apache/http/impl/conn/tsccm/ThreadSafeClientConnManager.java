package org.apache.http.impl.conn.tsccm;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.conn.DefaultClientConnectionOperator;
import org.apache.http.impl.conn.SchemeRegistryFactory;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
@ThreadSafe
public class ThreadSafeClientConnManager
  implements ClientConnectionManager
{
  protected final ClientConnectionOperator connOperator;
  protected final ConnPerRouteBean connPerRoute;
  protected final AbstractConnPool connectionPool;
  private final Log log;
  protected final ConnPoolByRoute pool;
  protected final SchemeRegistry schemeRegistry;
  
  public ThreadSafeClientConnManager()
  {
    this(SchemeRegistryFactory.createDefault());
  }
  
  public ThreadSafeClientConnManager(SchemeRegistry paramSchemeRegistry)
  {
    this(paramSchemeRegistry, -1L, TimeUnit.MILLISECONDS);
  }
  
  public ThreadSafeClientConnManager(SchemeRegistry paramSchemeRegistry, long paramLong, TimeUnit paramTimeUnit)
  {
    this(paramSchemeRegistry, paramLong, paramTimeUnit, new ConnPerRouteBean());
  }
  
  public ThreadSafeClientConnManager(SchemeRegistry paramSchemeRegistry, long paramLong, TimeUnit paramTimeUnit, ConnPerRouteBean paramConnPerRouteBean)
  {
    Args.notNull(paramSchemeRegistry, "Scheme registry");
    this.log = LogFactory.getLog(getClass());
    this.schemeRegistry = paramSchemeRegistry;
    this.connPerRoute = paramConnPerRouteBean;
    this.connOperator = createConnectionOperator(paramSchemeRegistry);
    this.pool = createConnectionPool(paramLong, paramTimeUnit);
    this.connectionPool = this.pool;
  }
  
  @Deprecated
  public ThreadSafeClientConnManager(HttpParams paramHttpParams, SchemeRegistry paramSchemeRegistry)
  {
    Args.notNull(paramSchemeRegistry, "Scheme registry");
    this.log = LogFactory.getLog(getClass());
    this.schemeRegistry = paramSchemeRegistry;
    this.connPerRoute = new ConnPerRouteBean();
    this.connOperator = createConnectionOperator(paramSchemeRegistry);
    this.pool = ((ConnPoolByRoute)createConnectionPool(paramHttpParams));
    this.connectionPool = this.pool;
  }
  
  public void closeExpiredConnections()
  {
    this.log.debug("Closing expired connections");
    this.pool.closeExpiredConnections();
  }
  
  public void closeIdleConnections(long paramLong, TimeUnit paramTimeUnit)
  {
    if (this.log.isDebugEnabled()) {
      this.log.debug("Closing connections idle longer than " + paramLong + " " + paramTimeUnit);
    }
    this.pool.closeIdleConnections(paramLong, paramTimeUnit);
  }
  
  protected ClientConnectionOperator createConnectionOperator(SchemeRegistry paramSchemeRegistry)
  {
    return new DefaultClientConnectionOperator(paramSchemeRegistry);
  }
  
  @Deprecated
  protected AbstractConnPool createConnectionPool(HttpParams paramHttpParams)
  {
    return new ConnPoolByRoute(this.connOperator, paramHttpParams);
  }
  
  protected ConnPoolByRoute createConnectionPool(long paramLong, TimeUnit paramTimeUnit)
  {
    return new ConnPoolByRoute(this.connOperator, this.connPerRoute, 20, paramLong, paramTimeUnit);
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
  
  public int getConnectionsInPool()
  {
    return this.pool.getConnectionsInPool();
  }
  
  public int getConnectionsInPool(HttpRoute paramHttpRoute)
  {
    return this.pool.getConnectionsInPool(paramHttpRoute);
  }
  
  public int getDefaultMaxPerRoute()
  {
    return this.connPerRoute.getDefaultMaxPerRoute();
  }
  
  public int getMaxForRoute(HttpRoute paramHttpRoute)
  {
    return this.connPerRoute.getMaxForRoute(paramHttpRoute);
  }
  
  public int getMaxTotal()
  {
    return this.pool.getMaxTotalConnections();
  }
  
  public SchemeRegistry getSchemeRegistry()
  {
    return this.schemeRegistry;
  }
  
  public void releaseConnection(ManagedClientConnection paramManagedClientConnection, long paramLong, TimeUnit paramTimeUnit)
  {
    Args.check(paramManagedClientConnection instanceof BasicPooledConnAdapter, "Connection class mismatch, connection not obtained from this manager");
    paramManagedClientConnection = (BasicPooledConnAdapter)paramManagedClientConnection;
    boolean bool;
    if (paramManagedClientConnection.getPoolEntry() != null)
    {
      if (paramManagedClientConnection.getManager() != this) {
        break label58;
      }
      bool = true;
      Asserts.check(bool, "Connection not obtained from this manager");
    }
    BasicPoolEntry localBasicPoolEntry;
    for (;;)
    {
      try
      {
        localBasicPoolEntry = (BasicPoolEntry)paramManagedClientConnection.getPoolEntry();
        if (localBasicPoolEntry == null)
        {
          return;
          label58:
          bool = false;
          break;
        }
      }
      finally {}
      try
      {
        if ((paramManagedClientConnection.isOpen()) && (!paramManagedClientConnection.isMarkedReusable())) {
          paramManagedClientConnection.shutdown();
        }
        bool = paramManagedClientConnection.isMarkedReusable();
        if (this.log.isDebugEnabled())
        {
          if (!bool) {
            break label144;
          }
          this.log.debug("Released connection is reusable.");
        }
        paramManagedClientConnection.detach();
        this.pool.freeEntry(localBasicPoolEntry, bool, paramLong, paramTimeUnit);
      }
      catch (IOException localIOException)
      {
        label144:
        if (!this.log.isDebugEnabled()) {
          break label185;
        }
        this.log.debug("Exception shutting down released connection.", localIOException);
        bool = paramManagedClientConnection.isMarkedReusable();
        if (!this.log.isDebugEnabled()) {
          break label219;
        }
        if (!bool) {
          break label240;
        }
        this.log.debug("Released connection is reusable.");
        for (;;)
        {
          paramManagedClientConnection.detach();
          this.pool.freeEntry(localBasicPoolEntry, bool, paramLong, paramTimeUnit);
          break;
          this.log.debug("Released connection is not reusable.");
        }
      }
      finally
      {
        bool = paramManagedClientConnection.isMarkedReusable();
        if (!this.log.isDebugEnabled()) {
          break label290;
        }
        if (!bool) {
          break label311;
        }
        this.log.debug("Released connection is reusable.");
      }
      return;
      this.log.debug("Released connection is not reusable.");
    }
    for (;;)
    {
      label185:
      label219:
      label240:
      label290:
      paramManagedClientConnection.detach();
      this.pool.freeEntry(localBasicPoolEntry, bool, paramLong, paramTimeUnit);
      throw ((Throwable)localObject);
      label311:
      this.log.debug("Released connection is not reusable.");
    }
  }
  
  public ClientConnectionRequest requestConnection(final HttpRoute paramHttpRoute, Object paramObject)
  {
    new ClientConnectionRequest()
    {
      public void abortRequest()
      {
        this.val$poolRequest.abortRequest();
      }
      
      public ManagedClientConnection getConnection(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
      {
        Args.notNull(paramHttpRoute, "Route");
        if (ThreadSafeClientConnManager.this.log.isDebugEnabled()) {
          ThreadSafeClientConnManager.this.log.debug("Get connection: " + paramHttpRoute + ", timeout = " + paramAnonymousLong);
        }
        paramAnonymousTimeUnit = this.val$poolRequest.getPoolEntry(paramAnonymousLong, paramAnonymousTimeUnit);
        return new BasicPooledConnAdapter(ThreadSafeClientConnManager.this, paramAnonymousTimeUnit);
      }
    };
  }
  
  public void setDefaultMaxPerRoute(int paramInt)
  {
    this.connPerRoute.setDefaultMaxPerRoute(paramInt);
  }
  
  public void setMaxForRoute(HttpRoute paramHttpRoute, int paramInt)
  {
    this.connPerRoute.setMaxForRoute(paramHttpRoute, paramInt);
  }
  
  public void setMaxTotal(int paramInt)
  {
    this.pool.setMaxTotalConnections(paramInt);
  }
  
  public void shutdown()
  {
    this.log.debug("Shutting down");
    this.pool.shutdown();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\tsccm\ThreadSafeClientConnManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */