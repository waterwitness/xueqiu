package org.apache.http.impl.conn.tsccm;

import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.conn.AbstractPoolEntry;
import org.apache.http.impl.conn.AbstractPooledConnAdapter;

@Deprecated
public class BasicPooledConnAdapter
  extends AbstractPooledConnAdapter
{
  protected BasicPooledConnAdapter(ThreadSafeClientConnManager paramThreadSafeClientConnManager, AbstractPoolEntry paramAbstractPoolEntry)
  {
    super(paramThreadSafeClientConnManager, paramAbstractPoolEntry);
    markReusable();
  }
  
  protected void detach()
  {
    super.detach();
  }
  
  protected ClientConnectionManager getManager()
  {
    return super.getManager();
  }
  
  protected AbstractPoolEntry getPoolEntry()
  {
    return super.getPoolEntry();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\tsccm\BasicPooledConnAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */