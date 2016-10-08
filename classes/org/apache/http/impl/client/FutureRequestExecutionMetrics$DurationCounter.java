package org.apache.http.impl.client;

import java.util.concurrent.atomic.AtomicLong;

class FutureRequestExecutionMetrics$DurationCounter
{
  private final AtomicLong count = new AtomicLong(0L);
  private final AtomicLong cumulativeDuration = new AtomicLong(0L);
  
  public long averageDuration()
  {
    long l1 = 0L;
    long l2 = this.count.get();
    if (l2 > 0L) {
      l1 = this.cumulativeDuration.get() / l2;
    }
    return l1;
  }
  
  public long count()
  {
    return this.count.get();
  }
  
  public void increment(long paramLong)
  {
    this.count.incrementAndGet();
    this.cumulativeDuration.addAndGet(System.currentTimeMillis() - paramLong);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[count=").append(count()).append(", averageDuration=").append(averageDuration()).append("]");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\FutureRequestExecutionMetrics$DurationCounter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */