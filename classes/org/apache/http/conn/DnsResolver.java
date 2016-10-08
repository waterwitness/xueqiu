package org.apache.http.conn;

import java.net.InetAddress;

public abstract interface DnsResolver
{
  public abstract InetAddress[] resolve(String paramString);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\DnsResolver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */