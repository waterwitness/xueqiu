package org.apache.http.conn;

public abstract interface ConnectionReleaseTrigger
{
  public abstract void abortConnection();
  
  public abstract void releaseConnection();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ConnectionReleaseTrigger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */