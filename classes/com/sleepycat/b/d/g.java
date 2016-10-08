package com.sleepycat.b.d;

import com.sleepycat.b.p.d;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

final class g
  implements RejectedExecutionHandler
{
  private final d a;
  
  g(d paramd)
  {
    this.a = paramd;
  }
  
  public final void rejectedExecution(Runnable paramRunnable, ThreadPoolExecutor paramThreadPoolExecutor)
  {
    this.a.g();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\d\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */