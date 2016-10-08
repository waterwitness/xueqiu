package org.apache.http.impl.bootstrap;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

class ThreadFactoryImpl
  implements ThreadFactory
{
  private final AtomicLong count;
  private final ThreadGroup group;
  private final String namePrefix;
  
  ThreadFactoryImpl(String paramString)
  {
    this(paramString, null);
  }
  
  ThreadFactoryImpl(String paramString, ThreadGroup paramThreadGroup)
  {
    this.namePrefix = paramString;
    this.group = paramThreadGroup;
    this.count = new AtomicLong();
  }
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(this.group, paramRunnable, this.namePrefix + "-" + this.count.incrementAndGet());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\bootstrap\ThreadFactoryImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */