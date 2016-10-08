package org.apache.http.conn.ssl;

import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocket;

@Deprecated
public abstract interface X509HostnameVerifier
  extends HostnameVerifier
{
  public abstract void verify(String paramString, X509Certificate paramX509Certificate);
  
  public abstract void verify(String paramString, SSLSocket paramSSLSocket);
  
  public abstract void verify(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ssl\X509HostnameVerifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */