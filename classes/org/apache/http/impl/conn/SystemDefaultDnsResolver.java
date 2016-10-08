package org.apache.http.impl.conn;

import java.net.InetAddress;
import org.apache.http.conn.DnsResolver;

public class SystemDefaultDnsResolver
  implements DnsResolver
{
  public static final SystemDefaultDnsResolver INSTANCE = new SystemDefaultDnsResolver();
  
  public InetAddress[] resolve(String paramString)
  {
    return InetAddress.getAllByName(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\SystemDefaultDnsResolver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */