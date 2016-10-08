package org.apache.http.client;

import org.apache.http.HttpResponse;

public abstract interface ConnectionBackoffStrategy
{
  public abstract boolean shouldBackoff(Throwable paramThrowable);
  
  public abstract boolean shouldBackoff(HttpResponse paramHttpResponse);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\ConnectionBackoffStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */