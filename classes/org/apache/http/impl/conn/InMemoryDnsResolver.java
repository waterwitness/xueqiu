package org.apache.http.impl.conn;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.conn.DnsResolver;
import org.apache.http.util.Args;

public class InMemoryDnsResolver
  implements DnsResolver
{
  private final Map<String, InetAddress[]> dnsMap = new ConcurrentHashMap();
  private final Log log = LogFactory.getLog(InMemoryDnsResolver.class);
  
  public void add(String paramString, InetAddress... paramVarArgs)
  {
    Args.notNull(paramString, "Host name");
    Args.notNull(paramVarArgs, "Array of IP addresses");
    this.dnsMap.put(paramString, paramVarArgs);
  }
  
  public InetAddress[] resolve(String paramString)
  {
    InetAddress[] arrayOfInetAddress = (InetAddress[])this.dnsMap.get(paramString);
    if (this.log.isInfoEnabled()) {
      this.log.info("Resolving " + paramString + " to " + Arrays.deepToString(arrayOfInetAddress));
    }
    if (arrayOfInetAddress == null) {
      throw new UnknownHostException(paramString + " cannot be resolved");
    }
    return arrayOfInetAddress;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\InMemoryDnsResolver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */