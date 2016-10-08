package org.apache.http.impl.conn.tsccm;

@Deprecated
public class WaitingThreadAborter
{
  private boolean aborted;
  private WaitingThread waitingThread;
  
  public void abort()
  {
    this.aborted = true;
    if (this.waitingThread != null) {
      this.waitingThread.interrupt();
    }
  }
  
  public void setWaitingThread(WaitingThread paramWaitingThread)
  {
    this.waitingThread = paramWaitingThread;
    if (this.aborted) {
      paramWaitingThread.interrupt();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\tsccm\WaitingThreadAborter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */