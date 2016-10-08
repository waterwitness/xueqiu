package org.apache.http.impl.conn;

import org.apache.http.conn.OperatedClientConnection;

public class SingleClientConnManager$PoolEntry
  extends AbstractPoolEntry
{
  protected SingleClientConnManager$PoolEntry(SingleClientConnManager paramSingleClientConnManager)
  {
    super(paramSingleClientConnManager.connOperator, null);
  }
  
  protected void close()
  {
    shutdownEntry();
    if (this.connection.isOpen()) {
      this.connection.close();
    }
  }
  
  protected void shutdown()
  {
    shutdownEntry();
    if (this.connection.isOpen()) {
      this.connection.shutdown();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\SingleClientConnManager$PoolEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */