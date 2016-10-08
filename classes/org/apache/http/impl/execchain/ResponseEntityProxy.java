package org.apache.http.impl.execchain;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.EofSensorInputStream;
import org.apache.http.conn.EofSensorWatcher;
import org.apache.http.entity.HttpEntityWrapper;

@NotThreadSafe
class ResponseEntityProxy
  extends HttpEntityWrapper
  implements EofSensorWatcher
{
  private final ConnectionHolder connHolder;
  
  ResponseEntityProxy(HttpEntity paramHttpEntity, ConnectionHolder paramConnectionHolder)
  {
    super(paramHttpEntity);
    this.connHolder = paramConnectionHolder;
  }
  
  private void cleanup()
  {
    if (this.connHolder != null) {
      this.connHolder.abortConnection();
    }
  }
  
  public static void enchance(HttpResponse paramHttpResponse, ConnectionHolder paramConnectionHolder)
  {
    HttpEntity localHttpEntity = paramHttpResponse.getEntity();
    if ((localHttpEntity != null) && (localHttpEntity.isStreaming()) && (paramConnectionHolder != null)) {
      paramHttpResponse.setEntity(new ResponseEntityProxy(localHttpEntity, paramConnectionHolder));
    }
  }
  
  @Deprecated
  public void consumeContent()
  {
    releaseConnection();
  }
  
  public boolean eofDetected(InputStream paramInputStream)
  {
    try
    {
      paramInputStream.close();
      releaseConnection();
      return false;
    }
    finally
    {
      cleanup();
    }
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
    if (this.connHolder != null) {}
    try
    {
      if (this.connHolder.isReusable()) {
        this.connHolder.releaseConnection();
      }
      return;
    }
    finally
    {
      cleanup();
    }
  }
  
  public boolean streamAbort(InputStream paramInputStream)
  {
    cleanup();
    return false;
  }
  
  /* Error */
  public boolean streamClosed(InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 16	org/apache/http/impl/execchain/ResponseEntityProxy:connHolder	Lorg/apache/http/impl/execchain/ConnectionHolder;
    //   4: ifnull +31 -> 35
    //   7: aload_0
    //   8: getfield 16	org/apache/http/impl/execchain/ResponseEntityProxy:connHolder	Lorg/apache/http/impl/execchain/ConnectionHolder;
    //   11: invokevirtual 83	org/apache/http/impl/execchain/ConnectionHolder:isReleased	()Z
    //   14: istore_3
    //   15: iload_3
    //   16: ifne +19 -> 35
    //   19: iconst_1
    //   20: istore_2
    //   21: aload_1
    //   22: invokevirtual 56	java/io/InputStream:close	()V
    //   25: aload_0
    //   26: invokevirtual 48	org/apache/http/impl/execchain/ResponseEntityProxy:releaseConnection	()V
    //   29: aload_0
    //   30: invokespecial 58	org/apache/http/impl/execchain/ResponseEntityProxy:cleanup	()V
    //   33: iconst_0
    //   34: ireturn
    //   35: iconst_0
    //   36: istore_2
    //   37: goto -16 -> 21
    //   40: astore_1
    //   41: iload_2
    //   42: ifeq -13 -> 29
    //   45: aload_1
    //   46: athrow
    //   47: astore_1
    //   48: aload_0
    //   49: invokespecial 58	org/apache/http/impl/execchain/ResponseEntityProxy:cleanup	()V
    //   52: aload_1
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	ResponseEntityProxy
    //   0	54	1	paramInputStream	InputStream
    //   20	22	2	i	int
    //   14	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   21	29	40	java/net/SocketException
    //   0	15	47	finally
    //   21	29	47	finally
    //   45	47	47	finally
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ResponseEntityProxy{");
    localStringBuilder.append(this.wrappedEntity);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    try
    {
      this.wrappedEntity.writeTo(paramOutputStream);
      releaseConnection();
      return;
    }
    finally
    {
      cleanup();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\execchain\ResponseEntityProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */