package org.webrtc.videoengine;

import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.AbortPolicy;
import java.util.concurrent.TimeUnit;

public class VideoCaptureAndroid$ThreadPoolProxy
{
  private ThreadPoolExecutor mPool;
  
  public void execute(Runnable paramRunnable)
  {
    if (paramRunnable == null) {}
    for (;;)
    {
      return;
      try
      {
        if ((this.mPool == null) || (this.mPool.isShutdown())) {
          this.mPool = new ThreadPoolExecutor(1, 1, 5L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
        }
        this.mPool.execute(paramRunnable);
      }
      finally {}
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\webrtc\videoengine\VideoCaptureAndroid$ThreadPoolProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */