package org.apache.http.client;

import org.apache.http.conn.routing.HttpRoute;

public abstract interface BackoffManager
{
  public abstract void backOff(HttpRoute paramHttpRoute);
  
  public abstract void probe(HttpRoute paramHttpRoute);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\BackoffManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */