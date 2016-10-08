package org.apache.http.impl.conn;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpConnection;

@Deprecated
public class IdleConnectionHandler
{
  private final Map<HttpConnection, IdleConnectionHandler.TimeValues> connectionToTimes = new HashMap();
  private final Log log = LogFactory.getLog(getClass());
  
  public void add(HttpConnection paramHttpConnection, long paramLong, TimeUnit paramTimeUnit)
  {
    long l = System.currentTimeMillis();
    if (this.log.isDebugEnabled()) {
      this.log.debug("Adding connection at: " + l);
    }
    this.connectionToTimes.put(paramHttpConnection, new IdleConnectionHandler.TimeValues(l, paramLong, paramTimeUnit));
  }
  
  public void closeExpiredConnections()
  {
    long l = System.currentTimeMillis();
    if (this.log.isDebugEnabled()) {
      this.log.debug("Checking for expired connections, now: " + l);
    }
    Iterator localIterator = this.connectionToTimes.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      HttpConnection localHttpConnection = (HttpConnection)((Map.Entry)localObject).getKey();
      localObject = (IdleConnectionHandler.TimeValues)((Map.Entry)localObject).getValue();
      if (IdleConnectionHandler.TimeValues.access$000((IdleConnectionHandler.TimeValues)localObject) <= l)
      {
        if (this.log.isDebugEnabled()) {
          this.log.debug("Closing connection, expired @: " + IdleConnectionHandler.TimeValues.access$000((IdleConnectionHandler.TimeValues)localObject));
        }
        try
        {
          localHttpConnection.close();
        }
        catch (IOException localIOException)
        {
          this.log.debug("I/O error closing connection", localIOException);
        }
      }
    }
  }
  
  public void closeIdleConnections(long paramLong)
  {
    paramLong = System.currentTimeMillis() - paramLong;
    if (this.log.isDebugEnabled()) {
      this.log.debug("Checking for connections, idle timeout: " + paramLong);
    }
    Iterator localIterator = this.connectionToTimes.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      HttpConnection localHttpConnection = (HttpConnection)localEntry.getKey();
      long l = IdleConnectionHandler.TimeValues.access$100((IdleConnectionHandler.TimeValues)localEntry.getValue());
      if (l <= paramLong)
      {
        if (this.log.isDebugEnabled()) {
          this.log.debug("Closing idle connection, connection time: " + l);
        }
        try
        {
          localHttpConnection.close();
        }
        catch (IOException localIOException)
        {
          this.log.debug("I/O error closing connection", localIOException);
        }
      }
    }
  }
  
  public boolean remove(HttpConnection paramHttpConnection)
  {
    paramHttpConnection = (IdleConnectionHandler.TimeValues)this.connectionToTimes.remove(paramHttpConnection);
    if (paramHttpConnection == null)
    {
      this.log.warn("Removing a connection that never existed!");
      return true;
    }
    return System.currentTimeMillis() <= IdleConnectionHandler.TimeValues.access$000(paramHttpConnection);
  }
  
  public void removeAll()
  {
    this.connectionToTimes.clear();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\IdleConnectionHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */