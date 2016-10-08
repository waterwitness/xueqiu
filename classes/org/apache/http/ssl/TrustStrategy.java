package org.apache.http.ssl;

import java.security.cert.X509Certificate;

public abstract interface TrustStrategy
{
  public abstract boolean isTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\ssl\TrustStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */