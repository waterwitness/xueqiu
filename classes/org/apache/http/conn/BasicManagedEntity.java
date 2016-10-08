package org.apache.http.conn;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketException;
import org.apache.http.HttpEntity;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.util.Args;

@Deprecated
@NotThreadSafe
public class BasicManagedEntity
  extends HttpEntityWrapper
  implements ConnectionReleaseTrigger, EofSensorWatcher
{
  protected final boolean attemptReuse;
  protected ManagedClientConnection managedConn;
  
  public BasicManagedEntity(HttpEntity paramHttpEntity, ManagedClientConnection paramManagedClientConnection, boolean paramBoolean)
  {
    super(paramHttpEntity);
    Args.notNull(paramManagedClientConnection, "Connection");
    this.managedConn = paramManagedClientConnection;
    this.attemptReuse = paramBoolean;
  }
  
  /* Error */
  private void ensureConsumed()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 29	org/apache/http/conn/BasicManagedEntity:managedConn	Lorg/apache/http/conn/ManagedClientConnection;
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: getfield 31	org/apache/http/conn/BasicManagedEntity:attemptReuse	Z
    //   12: ifeq +24 -> 36
    //   15: aload_0
    //   16: getfield 38	org/apache/http/conn/BasicManagedEntity:wrappedEntity	Lorg/apache/http/HttpEntity;
    //   19: invokestatic 43	org/apache/http/util/EntityUtils:consume	(Lorg/apache/http/HttpEntity;)V
    //   22: aload_0
    //   23: getfield 29	org/apache/http/conn/BasicManagedEntity:managedConn	Lorg/apache/http/conn/ManagedClientConnection;
    //   26: invokeinterface 48 1 0
    //   31: aload_0
    //   32: invokevirtual 51	org/apache/http/conn/BasicManagedEntity:releaseManagedConnection	()V
    //   35: return
    //   36: aload_0
    //   37: getfield 29	org/apache/http/conn/BasicManagedEntity:managedConn	Lorg/apache/http/conn/ManagedClientConnection;
    //   40: invokeinterface 54 1 0
    //   45: goto -14 -> 31
    //   48: astore_1
    //   49: aload_0
    //   50: invokevirtual 51	org/apache/http/conn/BasicManagedEntity:releaseManagedConnection	()V
    //   53: aload_1
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	BasicManagedEntity
    //   48	6	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   8	31	48	finally
    //   36	45	48	finally
  }
  
  public void abortConnection()
  {
    if (this.managedConn != null) {}
    try
    {
      this.managedConn.abortConnection();
      return;
    }
    finally
    {
      this.managedConn = null;
    }
  }
  
  @Deprecated
  public void consumeContent()
  {
    ensureConsumed();
  }
  
  /* Error */
  public boolean eofDetected(InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 29	org/apache/http/conn/BasicManagedEntity:managedConn	Lorg/apache/http/conn/ManagedClientConnection;
    //   4: ifnull +23 -> 27
    //   7: aload_0
    //   8: getfield 31	org/apache/http/conn/BasicManagedEntity:attemptReuse	Z
    //   11: ifeq +22 -> 33
    //   14: aload_1
    //   15: invokevirtual 68	java/io/InputStream:close	()V
    //   18: aload_0
    //   19: getfield 29	org/apache/http/conn/BasicManagedEntity:managedConn	Lorg/apache/http/conn/ManagedClientConnection;
    //   22: invokeinterface 48 1 0
    //   27: aload_0
    //   28: invokevirtual 51	org/apache/http/conn/BasicManagedEntity:releaseManagedConnection	()V
    //   31: iconst_0
    //   32: ireturn
    //   33: aload_0
    //   34: getfield 29	org/apache/http/conn/BasicManagedEntity:managedConn	Lorg/apache/http/conn/ManagedClientConnection;
    //   37: invokeinterface 54 1 0
    //   42: goto -15 -> 27
    //   45: astore_1
    //   46: aload_0
    //   47: invokevirtual 51	org/apache/http/conn/BasicManagedEntity:releaseManagedConnection	()V
    //   50: aload_1
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	BasicManagedEntity
    //   0	52	1	paramInputStream	InputStream
    // Exception table:
    //   from	to	target	type
    //   0	27	45	finally
    //   33	42	45	finally
  }
  
  public InputStream getContent()
  {
    return new EofSensorInputStream(this.wrappedEntity.getContent(), this);
  }
  
  public boolean isRepeatable()
  {
    return false;
  }
  
  public void releaseConnection()
  {
    ensureConsumed();
  }
  
  protected void releaseManagedConnection()
  {
    if (this.managedConn != null) {}
    try
    {
      this.managedConn.releaseConnection();
      return;
    }
    finally
    {
      this.managedConn = null;
    }
  }
  
  public boolean streamAbort(InputStream paramInputStream)
  {
    if (this.managedConn != null) {
      this.managedConn.abortConnection();
    }
    return false;
  }
  
  public boolean streamClosed(InputStream paramInputStream)
  {
    for (;;)
    {
      try
      {
        boolean bool;
        if (this.managedConn != null)
        {
          if (this.attemptReuse) {
            bool = this.managedConn.isOpen();
          }
        }
        else {
          try
          {
            paramInputStream.close();
            this.managedConn.markReusable();
            return false;
          }
          catch (SocketException paramInputStream)
          {
            if (!bool) {
              continue;
            }
            throw paramInputStream;
          }
        }
        this.managedConn.unmarkReusable();
      }
      finally
      {
        releaseManagedConnection();
      }
    }
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    super.writeTo(paramOutputStream);
    ensureConsumed();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\BasicManagedEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */