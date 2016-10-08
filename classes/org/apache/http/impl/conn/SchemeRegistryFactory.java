package org.apache.http.impl.conn;

import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;

@Deprecated
@ThreadSafe
public final class SchemeRegistryFactory
{
  public static SchemeRegistry createDefault()
  {
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", 80, PlainSocketFactory.getSocketFactory()));
    localSchemeRegistry.register(new Scheme("https", 443, SSLSocketFactory.getSocketFactory()));
    return localSchemeRegistry;
  }
  
  public static SchemeRegistry createSystemDefault()
  {
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", 80, PlainSocketFactory.getSocketFactory()));
    localSchemeRegistry.register(new Scheme("https", 443, SSLSocketFactory.getSystemSocketFactory()));
    return localSchemeRegistry;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\SchemeRegistryFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */