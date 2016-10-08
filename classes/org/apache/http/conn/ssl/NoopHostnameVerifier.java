package org.apache.http.conn.ssl;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import org.apache.http.annotation.Immutable;

@Immutable
public class NoopHostnameVerifier
  implements HostnameVerifier
{
  public static final NoopHostnameVerifier INSTANCE = new NoopHostnameVerifier();
  
  public final String toString()
  {
    return "NO_OP";
  }
  
  public boolean verify(String paramString, SSLSession paramSSLSession)
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ssl\NoopHostnameVerifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */