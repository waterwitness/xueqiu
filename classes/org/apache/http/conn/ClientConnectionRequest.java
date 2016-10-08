package org.apache.http.conn;

import java.util.concurrent.TimeUnit;

@Deprecated
public abstract interface ClientConnectionRequest
{
  public abstract void abortRequest();
  
  public abstract ManagedClientConnection getConnection(long paramLong, TimeUnit paramTimeUnit);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ClientConnectionRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */