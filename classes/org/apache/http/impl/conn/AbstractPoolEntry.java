package org.apache.http.impl.conn;

import java.io.InterruptedIOException;
import org.apache.http.HttpHost;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
public abstract class AbstractPoolEntry
{
  protected final ClientConnectionOperator connOperator;
  public final OperatedClientConnection connection;
  public volatile HttpRoute route;
  protected volatile Object state;
  protected volatile RouteTracker tracker;
  
  public AbstractPoolEntry(ClientConnectionOperator paramClientConnectionOperator, HttpRoute paramHttpRoute)
  {
    Args.notNull(paramClientConnectionOperator, "Connection operator");
    this.connOperator = paramClientConnectionOperator;
    this.connection = paramClientConnectionOperator.createConnection();
    this.route = paramHttpRoute;
    this.tracker = null;
  }
  
  public Object getState()
  {
    return this.state;
  }
  
  public void layerProtocol(HttpContext paramHttpContext, HttpParams paramHttpParams)
  {
    Args.notNull(paramHttpParams, "HTTP parameters");
    Asserts.notNull(this.tracker, "Route tracker");
    Asserts.check(this.tracker.isConnected(), "Connection not open");
    Asserts.check(this.tracker.isTunnelled(), "Protocol layering without a tunnel not supported");
    if (!this.tracker.isLayered()) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Multiple protocol layering not supported");
      HttpHost localHttpHost = this.tracker.getTargetHost();
      this.connOperator.updateSecureConnection(this.connection, localHttpHost, paramHttpContext, paramHttpParams);
      this.tracker.layerProtocol(this.connection.isSecure());
      return;
    }
  }
  
  public void open(HttpRoute paramHttpRoute, HttpContext paramHttpContext, HttpParams paramHttpParams)
  {
    Args.notNull(paramHttpRoute, "Route");
    Args.notNull(paramHttpParams, "HTTP parameters");
    boolean bool;
    HttpHost localHttpHost2;
    ClientConnectionOperator localClientConnectionOperator;
    OperatedClientConnection localOperatedClientConnection;
    if (this.tracker != null)
    {
      if (!this.tracker.isConnected())
      {
        bool = true;
        Asserts.check(bool, "Connection already open");
      }
    }
    else
    {
      this.tracker = new RouteTracker(paramHttpRoute);
      localHttpHost2 = paramHttpRoute.getProxyHost();
      localClientConnectionOperator = this.connOperator;
      localOperatedClientConnection = this.connection;
      if (localHttpHost2 == null) {
        break label122;
      }
    }
    label122:
    for (HttpHost localHttpHost1 = localHttpHost2;; localHttpHost1 = paramHttpRoute.getTargetHost())
    {
      localClientConnectionOperator.openConnection(localOperatedClientConnection, localHttpHost1, paramHttpRoute.getLocalAddress(), paramHttpContext, paramHttpParams);
      paramHttpRoute = this.tracker;
      if (paramHttpRoute != null) {
        break label131;
      }
      throw new InterruptedIOException("Request aborted");
      bool = false;
      break;
    }
    label131:
    if (localHttpHost2 == null)
    {
      paramHttpRoute.connectTarget(this.connection.isSecure());
      return;
    }
    paramHttpRoute.connectProxy(localHttpHost2, this.connection.isSecure());
  }
  
  public void setState(Object paramObject)
  {
    this.state = paramObject;
  }
  
  public void shutdownEntry()
  {
    this.tracker = null;
    this.state = null;
  }
  
  public void tunnelProxy(HttpHost paramHttpHost, boolean paramBoolean, HttpParams paramHttpParams)
  {
    Args.notNull(paramHttpHost, "Next proxy");
    Args.notNull(paramHttpParams, "Parameters");
    Asserts.notNull(this.tracker, "Route tracker");
    Asserts.check(this.tracker.isConnected(), "Connection not open");
    this.connection.update(null, paramHttpHost, paramBoolean, paramHttpParams);
    this.tracker.tunnelProxy(paramHttpHost, paramBoolean);
  }
  
  public void tunnelTarget(boolean paramBoolean, HttpParams paramHttpParams)
  {
    Args.notNull(paramHttpParams, "HTTP parameters");
    Asserts.notNull(this.tracker, "Route tracker");
    Asserts.check(this.tracker.isConnected(), "Connection not open");
    if (!this.tracker.isTunnelled()) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Connection is already tunnelled");
      this.connection.update(null, this.tracker.getTargetHost(), paramBoolean, paramHttpParams);
      this.tracker.tunnelTarget(paramBoolean);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\AbstractPoolEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */