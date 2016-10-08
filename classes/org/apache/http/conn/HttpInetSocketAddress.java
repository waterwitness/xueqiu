package org.apache.http.conn;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import org.apache.http.HttpHost;
import org.apache.http.util.Args;

@Deprecated
public class HttpInetSocketAddress
  extends InetSocketAddress
{
  private static final long serialVersionUID = -6650701828361907957L;
  private final HttpHost httphost;
  
  public HttpInetSocketAddress(HttpHost paramHttpHost, InetAddress paramInetAddress, int paramInt)
  {
    super(paramInetAddress, paramInt);
    Args.notNull(paramHttpHost, "HTTP host");
    this.httphost = paramHttpHost;
  }
  
  public HttpHost getHttpHost()
  {
    return this.httphost;
  }
  
  public String toString()
  {
    return this.httphost.getHostName() + ":" + getPort();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\HttpInetSocketAddress.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */