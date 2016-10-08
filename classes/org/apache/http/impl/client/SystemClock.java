package org.apache.http.impl.client;

class SystemClock
  implements Clock
{
  public long getCurrentTime()
  {
    return System.currentTimeMillis();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\SystemClock.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */