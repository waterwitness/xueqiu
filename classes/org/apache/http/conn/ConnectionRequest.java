package org.apache.http.conn;

import java.util.concurrent.TimeUnit;
import org.apache.http.HttpClientConnection;
import org.apache.http.concurrent.Cancellable;

public abstract interface ConnectionRequest
  extends Cancellable
{
  public abstract HttpClientConnection get(long paramLong, TimeUnit paramTimeUnit);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ConnectionRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */