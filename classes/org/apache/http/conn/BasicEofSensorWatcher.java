package org.apache.http.conn;

import java.io.InputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;

@Deprecated
@NotThreadSafe
public class BasicEofSensorWatcher
  implements EofSensorWatcher
{
  protected final boolean attemptReuse;
  protected final ManagedClientConnection managedConn;
  
  public BasicEofSensorWatcher(ManagedClientConnection paramManagedClientConnection, boolean paramBoolean)
  {
    Args.notNull(paramManagedClientConnection, "Connection");
    this.managedConn = paramManagedClientConnection;
    this.attemptReuse = paramBoolean;
  }
  
  public boolean eofDetected(InputStream paramInputStream)
  {
    try
    {
      if (this.attemptReuse)
      {
        paramInputStream.close();
        this.managedConn.markReusable();
      }
      return false;
    }
    finally
    {
      this.managedConn.releaseConnection();
    }
  }
  
  public boolean streamAbort(InputStream paramInputStream)
  {
    this.managedConn.abortConnection();
    return false;
  }
  
  public boolean streamClosed(InputStream paramInputStream)
  {
    try
    {
      if (this.attemptReuse)
      {
        paramInputStream.close();
        this.managedConn.markReusable();
      }
      return false;
    }
    finally
    {
      this.managedConn.releaseConnection();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\BasicEofSensorWatcher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */