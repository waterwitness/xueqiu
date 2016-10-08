package com.tencent.open;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.SecureRandom;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.scheme.HostNameResolver;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class MySSLSocketFactory
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  private final SSLContext a = SSLContext.getInstance("TLS");
  private final javax.net.ssl.SSLSocketFactory b;
  private final HostNameResolver c;
  
  public MySSLSocketFactory()
  {
    super("TLS", null, null, null, null, null);
    SSLContext localSSLContext = this.a;
    q localq = new q(this);
    SecureRandom localSecureRandom = new SecureRandom();
    localSSLContext.init(null, new TrustManager[] { localq }, localSecureRandom);
    this.b = this.a.getSocketFactory();
    this.c = null;
  }
  
  public Socket connectSocket(Socket paramSocket, String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2, HttpParams paramHttpParams)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Target host may not be null.");
    }
    if (paramHttpParams == null) {
      throw new IllegalArgumentException("Parameters may not be null.");
    }
    SSLSocket localSSLSocket;
    int i;
    if (paramSocket != null)
    {
      localSSLSocket = (SSLSocket)paramSocket;
      if ((paramInetAddress != null) || (paramInt2 > 0))
      {
        i = paramInt2;
        if (paramInt2 < 0) {
          i = 0;
        }
        localSSLSocket.bind(new InetSocketAddress(paramInetAddress, i));
      }
      paramInt2 = HttpConnectionParams.getConnectionTimeout(paramHttpParams);
      i = HttpConnectionParams.getSoTimeout(paramHttpParams);
      if (this.c == null) {
        break label146;
      }
    }
    label146:
    for (paramSocket = new InetSocketAddress(this.c.resolve(paramString), paramInt1);; paramSocket = new InetSocketAddress(paramString, paramInt1))
    {
      localSSLSocket.connect(paramSocket, paramInt2);
      localSSLSocket.setSoTimeout(i);
      return localSSLSocket;
      paramSocket = createSocket();
      break;
    }
  }
  
  public Socket createSocket()
  {
    return (SSLSocket)this.b.createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    if (paramInt == -1) {
      return (SSLSocket)this.b.createSocket(paramSocket, paramString, 443, paramBoolean);
    }
    return (SSLSocket)this.b.createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\MySSLSocketFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */