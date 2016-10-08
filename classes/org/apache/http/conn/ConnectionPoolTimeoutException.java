package org.apache.http.conn;

import org.apache.http.annotation.Immutable;

@Immutable
public class ConnectionPoolTimeoutException
  extends ConnectTimeoutException
{
  private static final long serialVersionUID = -7898874842020245128L;
  
  public ConnectionPoolTimeoutException() {}
  
  public ConnectionPoolTimeoutException(String paramString)
  {
    super(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ConnectionPoolTimeoutException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */