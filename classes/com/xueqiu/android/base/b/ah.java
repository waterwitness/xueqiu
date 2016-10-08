package com.xueqiu.android.base.b;

import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

public final class ah
  extends SSLSocketFactory
{
  SSLContext a = SSLContext.getInstance("TLSv1");
  
  ah(KeyStore... paramVarArgs)
  {
    this.a.init(null, new TrustManager[] { new ag(paramVarArgs) }, null);
  }
  
  public final Socket createSocket()
  {
    SSLSocket localSSLSocket = (SSLSocket)this.a.getSocketFactory().createSocket();
    localSSLSocket.setEnabledProtocols(af.a());
    return localSSLSocket;
  }
  
  public final Socket createSocket(String paramString, int paramInt)
  {
    paramString = (SSLSocket)this.a.getSocketFactory().createSocket(paramString, paramInt);
    paramString.setEnabledProtocols(af.a());
    return paramString;
  }
  
  public final Socket createSocket(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
  {
    paramString = (SSLSocket)this.a.getSocketFactory().createSocket(paramString, paramInt1, paramInetAddress, paramInt2);
    paramString.setEnabledProtocols(af.a());
    return paramString;
  }
  
  public final Socket createSocket(InetAddress paramInetAddress, int paramInt)
  {
    paramInetAddress = (SSLSocket)this.a.getSocketFactory().createSocket(paramInetAddress, paramInt);
    paramInetAddress.setEnabledProtocols(af.a());
    return paramInetAddress;
  }
  
  public final Socket createSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
  {
    paramInetAddress1 = (SSLSocket)this.a.getSocketFactory().createSocket(paramInetAddress1, paramInt1, paramInetAddress2, paramInt2);
    paramInetAddress1.setEnabledProtocols(af.a());
    return paramInetAddress1;
  }
  
  public final Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    paramSocket = (SSLSocket)this.a.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
    paramSocket.setEnabledProtocols(af.a());
    return paramSocket;
  }
  
  public final String[] getDefaultCipherSuites()
  {
    return this.a.getSocketFactory().getDefaultCipherSuites();
  }
  
  public final String[] getSupportedCipherSuites()
  {
    return this.a.getSocketFactory().getSupportedCipherSuites();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */