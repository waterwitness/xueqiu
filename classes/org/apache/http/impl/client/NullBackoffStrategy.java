package org.apache.http.impl.client;

import org.apache.http.HttpResponse;
import org.apache.http.client.ConnectionBackoffStrategy;

public class NullBackoffStrategy
  implements ConnectionBackoffStrategy
{
  public boolean shouldBackoff(Throwable paramThrowable)
  {
    return false;
  }
  
  public boolean shouldBackoff(HttpResponse paramHttpResponse)
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\NullBackoffStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */