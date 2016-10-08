package org.apache.http.impl.conn.tsccm;

import java.lang.ref.ReferenceQueue;
import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.conn.AbstractPoolEntry;
import org.apache.http.util.Args;

@Deprecated
public class BasicPoolEntry
  extends AbstractPoolEntry
{
  private final long created;
  private long expiry;
  private long updated;
  private final long validUntil;
  
  public BasicPoolEntry(ClientConnectionOperator paramClientConnectionOperator, HttpRoute paramHttpRoute)
  {
    this(paramClientConnectionOperator, paramHttpRoute, -1L, TimeUnit.MILLISECONDS);
  }
  
  public BasicPoolEntry(ClientConnectionOperator paramClientConnectionOperator, HttpRoute paramHttpRoute, long paramLong, TimeUnit paramTimeUnit)
  {
    super(paramClientConnectionOperator, paramHttpRoute);
    Args.notNull(paramHttpRoute, "HTTP route");
    this.created = System.currentTimeMillis();
    if (paramLong > 0L) {}
    for (this.validUntil = (this.created + paramTimeUnit.toMillis(paramLong));; this.validUntil = Long.MAX_VALUE)
    {
      this.expiry = this.validUntil;
      return;
    }
  }
  
  public BasicPoolEntry(ClientConnectionOperator paramClientConnectionOperator, HttpRoute paramHttpRoute, ReferenceQueue<Object> paramReferenceQueue)
  {
    super(paramClientConnectionOperator, paramHttpRoute);
    Args.notNull(paramHttpRoute, "HTTP route");
    this.created = System.currentTimeMillis();
    this.validUntil = Long.MAX_VALUE;
    this.expiry = this.validUntil;
  }
  
  protected final OperatedClientConnection getConnection()
  {
    return this.connection;
  }
  
  public long getCreated()
  {
    return this.created;
  }
  
  public long getExpiry()
  {
    return this.expiry;
  }
  
  protected final HttpRoute getPlannedRoute()
  {
    return this.route;
  }
  
  public long getUpdated()
  {
    return this.updated;
  }
  
  public long getValidUntil()
  {
    return this.validUntil;
  }
  
  protected final BasicPoolEntryRef getWeakRef()
  {
    return null;
  }
  
  public boolean isExpired(long paramLong)
  {
    return paramLong >= this.expiry;
  }
  
  protected void shutdownEntry()
  {
    super.shutdownEntry();
  }
  
  public void updateExpiry(long paramLong, TimeUnit paramTimeUnit)
  {
    this.updated = System.currentTimeMillis();
    if (paramLong > 0L) {}
    for (paramLong = this.updated + paramTimeUnit.toMillis(paramLong);; paramLong = Long.MAX_VALUE)
    {
      this.expiry = Math.min(this.validUntil, paramLong);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\tsccm\BasicPoolEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */