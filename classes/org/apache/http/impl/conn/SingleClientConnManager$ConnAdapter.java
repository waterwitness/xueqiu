package org.apache.http.impl.conn;

import org.apache.http.conn.routing.HttpRoute;

public class SingleClientConnManager$ConnAdapter
  extends AbstractPooledConnAdapter
{
  protected SingleClientConnManager$ConnAdapter(SingleClientConnManager paramSingleClientConnManager, SingleClientConnManager.PoolEntry paramPoolEntry, HttpRoute paramHttpRoute)
  {
    super(paramSingleClientConnManager, paramPoolEntry);
    markReusable();
    paramPoolEntry.route = paramHttpRoute;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\SingleClientConnManager$ConnAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */