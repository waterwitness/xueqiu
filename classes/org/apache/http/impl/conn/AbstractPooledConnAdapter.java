package org.apache.http.impl.conn;

import org.apache.http.HttpHost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

@Deprecated
public abstract class AbstractPooledConnAdapter
  extends AbstractClientConnAdapter
{
  protected volatile AbstractPoolEntry poolEntry;
  
  public AbstractPooledConnAdapter(ClientConnectionManager paramClientConnectionManager, AbstractPoolEntry paramAbstractPoolEntry)
  {
    super(paramClientConnectionManager, paramAbstractPoolEntry.connection);
    this.poolEntry = paramAbstractPoolEntry;
  }
  
  @Deprecated
  protected final void assertAttached()
  {
    if (this.poolEntry == null) {
      throw new ConnectionShutdownException();
    }
  }
  
  protected void assertValid(AbstractPoolEntry paramAbstractPoolEntry)
  {
    if ((isReleased()) || (paramAbstractPoolEntry == null)) {
      throw new ConnectionShutdownException();
    }
  }
  
  public void close()
  {
    Object localObject = getPoolEntry();
    if (localObject != null) {
      ((AbstractPoolEntry)localObject).shutdownEntry();
    }
    localObject = getWrappedConnection();
    if (localObject != null) {
      ((OperatedClientConnection)localObject).close();
    }
  }
  
  public void detach()
  {
    try
    {
      this.poolEntry = null;
      super.detach();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String getId()
  {
    return null;
  }
  
  @Deprecated
  public AbstractPoolEntry getPoolEntry()
  {
    return this.poolEntry;
  }
  
  public HttpRoute getRoute()
  {
    AbstractPoolEntry localAbstractPoolEntry = getPoolEntry();
    assertValid(localAbstractPoolEntry);
    if (localAbstractPoolEntry.tracker == null) {
      return null;
    }
    return localAbstractPoolEntry.tracker.toRoute();
  }
  
  public Object getState()
  {
    AbstractPoolEntry localAbstractPoolEntry = getPoolEntry();
    assertValid(localAbstractPoolEntry);
    return localAbstractPoolEntry.getState();
  }
  
  public void layerProtocol(HttpContext paramHttpContext, HttpParams paramHttpParams)
  {
    AbstractPoolEntry localAbstractPoolEntry = getPoolEntry();
    assertValid(localAbstractPoolEntry);
    localAbstractPoolEntry.layerProtocol(paramHttpContext, paramHttpParams);
  }
  
  public void open(HttpRoute paramHttpRoute, HttpContext paramHttpContext, HttpParams paramHttpParams)
  {
    AbstractPoolEntry localAbstractPoolEntry = getPoolEntry();
    assertValid(localAbstractPoolEntry);
    localAbstractPoolEntry.open(paramHttpRoute, paramHttpContext, paramHttpParams);
  }
  
  public void setState(Object paramObject)
  {
    AbstractPoolEntry localAbstractPoolEntry = getPoolEntry();
    assertValid(localAbstractPoolEntry);
    localAbstractPoolEntry.setState(paramObject);
  }
  
  public void shutdown()
  {
    Object localObject = getPoolEntry();
    if (localObject != null) {
      ((AbstractPoolEntry)localObject).shutdownEntry();
    }
    localObject = getWrappedConnection();
    if (localObject != null) {
      ((OperatedClientConnection)localObject).shutdown();
    }
  }
  
  public void tunnelProxy(HttpHost paramHttpHost, boolean paramBoolean, HttpParams paramHttpParams)
  {
    AbstractPoolEntry localAbstractPoolEntry = getPoolEntry();
    assertValid(localAbstractPoolEntry);
    localAbstractPoolEntry.tunnelProxy(paramHttpHost, paramBoolean, paramHttpParams);
  }
  
  public void tunnelTarget(boolean paramBoolean, HttpParams paramHttpParams)
  {
    AbstractPoolEntry localAbstractPoolEntry = getPoolEntry();
    assertValid(localAbstractPoolEntry);
    localAbstractPoolEntry.tunnelTarget(paramBoolean, paramHttpParams);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\AbstractPooledConnAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */