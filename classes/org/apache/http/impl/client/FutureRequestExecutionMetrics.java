package org.apache.http.impl.client;

import java.util.concurrent.atomic.AtomicLong;

public final class FutureRequestExecutionMetrics
{
  private final AtomicLong activeConnections = new AtomicLong();
  private final FutureRequestExecutionMetrics.DurationCounter failedConnections = new FutureRequestExecutionMetrics.DurationCounter();
  private final FutureRequestExecutionMetrics.DurationCounter requests = new FutureRequestExecutionMetrics.DurationCounter();
  private final AtomicLong scheduledConnections = new AtomicLong();
  private final FutureRequestExecutionMetrics.DurationCounter successfulConnections = new FutureRequestExecutionMetrics.DurationCounter();
  private final FutureRequestExecutionMetrics.DurationCounter tasks = new FutureRequestExecutionMetrics.DurationCounter();
  
  public final long getActiveConnectionCount()
  {
    return this.activeConnections.get();
  }
  
  final AtomicLong getActiveConnections()
  {
    return this.activeConnections;
  }
  
  public final long getFailedConnectionAverageDuration()
  {
    return this.failedConnections.averageDuration();
  }
  
  public final long getFailedConnectionCount()
  {
    return this.failedConnections.count();
  }
  
  final FutureRequestExecutionMetrics.DurationCounter getFailedConnections()
  {
    return this.failedConnections;
  }
  
  public final long getRequestAverageDuration()
  {
    return this.requests.averageDuration();
  }
  
  public final long getRequestCount()
  {
    return this.requests.count();
  }
  
  final FutureRequestExecutionMetrics.DurationCounter getRequests()
  {
    return this.requests;
  }
  
  public final long getScheduledConnectionCount()
  {
    return this.scheduledConnections.get();
  }
  
  final AtomicLong getScheduledConnections()
  {
    return this.scheduledConnections;
  }
  
  public final long getSuccessfulConnectionAverageDuration()
  {
    return this.successfulConnections.averageDuration();
  }
  
  public final long getSuccessfulConnectionCount()
  {
    return this.successfulConnections.count();
  }
  
  final FutureRequestExecutionMetrics.DurationCounter getSuccessfulConnections()
  {
    return this.successfulConnections;
  }
  
  public final long getTaskAverageDuration()
  {
    return this.tasks.averageDuration();
  }
  
  public final long getTaskCount()
  {
    return this.tasks.count();
  }
  
  final FutureRequestExecutionMetrics.DurationCounter getTasks()
  {
    return this.tasks;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[activeConnections=").append(this.activeConnections).append(", scheduledConnections=").append(this.scheduledConnections).append(", successfulConnections=").append(this.successfulConnections).append(", failedConnections=").append(this.failedConnections).append(", requests=").append(this.requests).append(", tasks=").append(this.tasks).append("]");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\FutureRequestExecutionMetrics.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */