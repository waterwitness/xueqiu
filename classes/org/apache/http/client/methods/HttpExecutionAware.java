package org.apache.http.client.methods;

import org.apache.http.concurrent.Cancellable;

public abstract interface HttpExecutionAware
{
  public abstract boolean isAborted();
  
  public abstract void setCancellable(Cancellable paramCancellable);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\methods\HttpExecutionAware.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */