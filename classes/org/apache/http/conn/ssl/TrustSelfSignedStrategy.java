package org.apache.http.conn.ssl;

import java.security.cert.X509Certificate;

public class TrustSelfSignedStrategy
  implements TrustStrategy
{
  public static final TrustSelfSignedStrategy INSTANCE = new TrustSelfSignedStrategy();
  
  public boolean isTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    return paramArrayOfX509Certificate.length == 1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ssl\TrustSelfSignedStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */