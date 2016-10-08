package org.apache.http.impl.conn;

import java.util.concurrent.TimeUnit;

class IdleConnectionHandler$TimeValues
{
  private final long timeAdded;
  private final long timeExpires;
  
  IdleConnectionHandler$TimeValues(long paramLong1, long paramLong2, TimeUnit paramTimeUnit)
  {
    this.timeAdded = paramLong1;
    if (paramLong2 > 0L)
    {
      this.timeExpires = (paramTimeUnit.toMillis(paramLong2) + paramLong1);
      return;
    }
    this.timeExpires = Long.MAX_VALUE;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\IdleConnectionHandler$TimeValues.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */