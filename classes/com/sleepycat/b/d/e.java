package com.sleepycat.b.d;

import com.sleepycat.b.p.ag;

public enum e
{
  private e() {}
  
  public final ag a()
  {
    return new ag("nBINsEvicted" + toString(), "Number of BINs evicted from the cache, using the specified eviction source. As a subset of nNodesEvicted, it is an indicator of what eviction is targeting and the activity that is instigating eviction");
  }
  
  public final ag b()
  {
    return new ag("nUpperINsEvicted" + toString(), "Number of upper INs evicted from the cache, using the specified eviction source. As a subset of nNodesEvicted, it is an indicator of what eviction is targeting and the activity that is instigating eviction");
  }
  
  public final ag c()
  {
    return new ag("nBatches" + toString(), "Number of attempts to evict, by type of evictor. Along with average batch size, it serves as an indicator of what part of the system is doing eviction work.");
  }
  
  public final ag d()
  {
    return new ag("avgBatch" + toString(), "Average units of work done by one eviction pass. Along with the number of batch size, it serves as an indicator of what part of the system is doing eviction work.");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\d\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */