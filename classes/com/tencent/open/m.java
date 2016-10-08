package com.tencent.open;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

final class m
  implements X509TrustManager
{
  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    Util.a("", paramString);
  }
  
  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    Util.a("", paramString);
  }
  
  public final X509Certificate[] getAcceptedIssuers()
  {
    Util.a("", "");
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */