package org.apache.http.impl.conn;

import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.UnsupportedSchemeException;
import org.apache.http.util.Args;

@Immutable
public class DefaultSchemePortResolver
  implements SchemePortResolver
{
  public static final DefaultSchemePortResolver INSTANCE = new DefaultSchemePortResolver();
  
  public int resolve(HttpHost paramHttpHost)
  {
    Args.notNull(paramHttpHost, "HTTP host");
    int i = paramHttpHost.getPort();
    if (i > 0) {
      return i;
    }
    paramHttpHost = paramHttpHost.getSchemeName();
    if (paramHttpHost.equalsIgnoreCase("http")) {
      return 80;
    }
    if (paramHttpHost.equalsIgnoreCase("https")) {
      return 443;
    }
    throw new UnsupportedSchemeException(paramHttpHost + " protocol is not supported");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\DefaultSchemePortResolver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */