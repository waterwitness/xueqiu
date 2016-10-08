package org.apache.http.impl.execchain;

import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.http.HttpClientConnection;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.concurrent.Cancellable;
import org.apache.http.conn.ConnectionReleaseTrigger;
import org.apache.http.conn.HttpClientConnectionManager;

@ThreadSafe
class ConnectionHolder
  implements Closeable, Cancellable, ConnectionReleaseTrigger
{
  private final Log log;
  private final HttpClientConnection managedConn;
  private final HttpClientConnectionManager manager;
  private volatile boolean released;
  private volatile boolean reusable;
  private volatile Object state;
  private volatile TimeUnit tunit;
  private volatile long validDuration;
  
  public ConnectionHolder(Log paramLog, HttpClientConnectionManager paramHttpClientConnectionManager, HttpClientConnection paramHttpClientConnection)
  {
    this.log = paramLog;
    this.manager = paramHttpClientConnectionManager;
    this.managedConn = paramHttpClientConnection;
  }
  
  public void abortConnection()
  {
    synchronized (this.managedConn)
    {
      if (this.released) {
        return;
      }
      this.released = true;
      try
      {
        this.managedConn.shutdown();
        this.log.debug("Connection discarded");
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          if (this.log.isDebugEnabled()) {
            this.log.debug(localIOException.getMessage(), localIOException);
          }
          this.manager.releaseConnection(this.managedConn, null, 0L, TimeUnit.MILLISECONDS);
        }
      }
      finally
      {
        this.manager.releaseConnection(this.managedConn, null, 0L, TimeUnit.MILLISECONDS);
      }
      return;
    }
  }
  
  public boolean cancel()
  {
    boolean bool = this.released;
    this.log.debug("Cancelling request execution");
    abortConnection();
    return !bool;
  }
  
  public void close()
  {
    abortConnection();
  }
  
  public boolean isReleased()
  {
    return this.released;
  }
  
  public boolean isReusable()
  {
    return this.reusable;
  }
  
  public void markNonReusable()
  {
    this.reusable = false;
  }
  
  public void markReusable()
  {
    this.reusable = true;
  }
  
  public void releaseConnection()
  {
    for (;;)
    {
      synchronized (this.managedConn)
      {
        if (this.released) {
          return;
        }
        this.released = true;
        if (this.reusable)
        {
          this.manager.releaseConnection(this.managedConn, this.state, this.validDuration, this.tunit);
          return;
        }
      }
      try
      {
        this.managedConn.close();
        this.log.debug("Connection discarded");
        this.manager.releaseConnection(this.managedConn, null, 0L, TimeUnit.MILLISECONDS);
      }
      catch (IOException localIOException)
      {
        if (this.log.isDebugEnabled()) {
          this.log.debug(localIOException.getMessage(), localIOException);
        }
        this.manager.releaseConnection(this.managedConn, null, 0L, TimeUnit.MILLISECONDS);
      }
      finally
      {
        this.manager.releaseConnection(this.managedConn, null, 0L, TimeUnit.MILLISECONDS);
      }
    }
  }
  
  public void setState(Object paramObject)
  {
    this.state = paramObject;
  }
  
  public void setValidFor(long paramLong, TimeUnit paramTimeUnit)
  {
    synchronized (this.managedConn)
    {
      this.validDuration = paramLong;
      this.tunit = paramTimeUnit;
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\execchain\ConnectionHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */