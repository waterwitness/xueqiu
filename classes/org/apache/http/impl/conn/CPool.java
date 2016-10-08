package org.apache.http.impl.conn;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.AbstractConnPool;
import org.apache.http.pool.ConnFactory;

@ThreadSafe
class CPool
  extends AbstractConnPool<HttpRoute, ManagedHttpClientConnection, CPoolEntry>
{
  private static final AtomicLong COUNTER = new AtomicLong();
  private final Log log = LogFactory.getLog(CPool.class);
  private final long timeToLive;
  private final TimeUnit tunit;
  
  public CPool(ConnFactory<HttpRoute, ManagedHttpClientConnection> paramConnFactory, int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit)
  {
    super(paramConnFactory, paramInt1, paramInt2);
    this.timeToLive = paramLong;
    this.tunit = paramTimeUnit;
  }
  
  protected CPoolEntry createEntry(HttpRoute paramHttpRoute, ManagedHttpClientConnection paramManagedHttpClientConnection)
  {
    String str = Long.toString(COUNTER.getAndIncrement());
    return new CPoolEntry(this.log, str, paramHttpRoute, paramManagedHttpClientConnection, this.timeToLive, this.tunit);
  }
  
  protected boolean validate(CPoolEntry paramCPoolEntry)
  {
    return !((ManagedHttpClientConnection)paramCPoolEntry.getConnection()).isStale();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\CPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */