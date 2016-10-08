package org.apache.http.impl.client;

import java.net.ConnectException;
import java.net.SocketTimeoutException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ConnectionBackoffStrategy;

public class DefaultBackoffStrategy
  implements ConnectionBackoffStrategy
{
  public boolean shouldBackoff(Throwable paramThrowable)
  {
    return ((paramThrowable instanceof SocketTimeoutException)) || ((paramThrowable instanceof ConnectException));
  }
  
  public boolean shouldBackoff(HttpResponse paramHttpResponse)
  {
    return paramHttpResponse.getStatusLine().getStatusCode() == 503;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\DefaultBackoffStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */