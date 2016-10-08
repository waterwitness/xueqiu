package org.apache.http.impl.client;

import java.util.concurrent.ThreadFactory;

class IdleConnectionEvictor$DefaultThreadFactory
  implements ThreadFactory
{
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable, "Connection evictor");
    paramRunnable.setDaemon(true);
    return paramRunnable;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\IdleConnectionEvictor$DefaultThreadFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */