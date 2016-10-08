package org.apache.http.impl.conn;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.logging.Log;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.AbstractConnPool;

@Deprecated
class HttpConnPool
  extends AbstractConnPool<HttpRoute, OperatedClientConnection, HttpPoolEntry>
{
  private static final AtomicLong COUNTER = new AtomicLong();
  private final Log log;
  private final long timeToLive;
  private final TimeUnit tunit;
  
  public HttpConnPool(Log paramLog, ClientConnectionOperator paramClientConnectionOperator, int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit)
  {
    super(new HttpConnPool.InternalConnFactory(paramClientConnectionOperator), paramInt1, paramInt2);
    this.log = paramLog;
    this.timeToLive = paramLong;
    this.tunit = paramTimeUnit;
  }
  
  protected HttpPoolEntry createEntry(HttpRoute paramHttpRoute, OperatedClientConnection paramOperatedClientConnection)
  {
    String str = Long.toString(COUNTER.getAndIncrement());
    return new HttpPoolEntry(this.log, str, paramHttpRoute, paramOperatedClientConnection, this.timeToLive, this.tunit);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\HttpConnPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */