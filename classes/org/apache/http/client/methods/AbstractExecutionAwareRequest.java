package org.apache.http.client.methods;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.http.HttpRequest;
import org.apache.http.client.utils.CloneUtils;
import org.apache.http.concurrent.Cancellable;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionReleaseTrigger;
import org.apache.http.message.AbstractHttpMessage;
import org.apache.http.message.HeaderGroup;
import org.apache.http.params.HttpParams;

public abstract class AbstractExecutionAwareRequest
  extends AbstractHttpMessage
  implements Cloneable, HttpRequest, AbortableHttpRequest, HttpExecutionAware
{
  private final AtomicBoolean aborted = new AtomicBoolean(false);
  private final AtomicReference<Cancellable> cancellableRef = new AtomicReference(null);
  
  public void abort()
  {
    if (this.aborted.compareAndSet(false, true))
    {
      Cancellable localCancellable = (Cancellable)this.cancellableRef.getAndSet(null);
      if (localCancellable != null) {
        localCancellable.cancel();
      }
    }
  }
  
  public Object clone()
  {
    AbstractExecutionAwareRequest localAbstractExecutionAwareRequest = (AbstractExecutionAwareRequest)super.clone();
    localAbstractExecutionAwareRequest.headergroup = ((HeaderGroup)CloneUtils.cloneObject(this.headergroup));
    localAbstractExecutionAwareRequest.params = ((HttpParams)CloneUtils.cloneObject(this.params));
    return localAbstractExecutionAwareRequest;
  }
  
  public void completed()
  {
    this.cancellableRef.set(null);
  }
  
  public boolean isAborted()
  {
    return this.aborted.get();
  }
  
  public void reset()
  {
    Cancellable localCancellable = (Cancellable)this.cancellableRef.getAndSet(null);
    if (localCancellable != null) {
      localCancellable.cancel();
    }
    this.aborted.set(false);
  }
  
  public void setCancellable(Cancellable paramCancellable)
  {
    if (!this.aborted.get()) {
      this.cancellableRef.set(paramCancellable);
    }
  }
  
  @Deprecated
  public void setConnectionRequest(final ClientConnectionRequest paramClientConnectionRequest)
  {
    setCancellable(new Cancellable()
    {
      public boolean cancel()
      {
        paramClientConnectionRequest.abortRequest();
        return true;
      }
    });
  }
  
  @Deprecated
  public void setReleaseTrigger(final ConnectionReleaseTrigger paramConnectionReleaseTrigger)
  {
    setCancellable(new Cancellable()
    {
      public boolean cancel()
      {
        try
        {
          paramConnectionReleaseTrigger.abortConnection();
          return true;
        }
        catch (IOException localIOException) {}
        return false;
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\methods\AbstractExecutionAwareRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */