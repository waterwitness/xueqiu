package com.tencent.open;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

final class q
  implements X509TrustManager
{
  q(MySSLSocketFactory paramMySSLSocketFactory) {}
  
  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public final X509Certificate[] getAcceptedIssuers()
  {
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */