package com.pingan.paphone.extension.http;

import android.util.Log;
import java.lang.reflect.Field;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class MySSLSocketFactory
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  SSLContext sslContext = SSLContext.getInstance("TLS");
  
  public MySSLSocketFactory(KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    Log.e("SSL", "MySSLSocketFactory---1");
    paramKeyStore = new X509TrustManager()
    {
      public void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
      {
        Log.e("SSL", "checkClientTrusted----1");
      }
      
      public void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
      {
        Log.e("SSL", "checkServerTrusted----2");
      }
      
      public X509Certificate[] getAcceptedIssuers()
      {
        Log.e("SSL", "getAcceptedIssuers----3");
        return null;
      }
    };
    Log.e("SSL", "MySSLSocketFactory---2");
    this.sslContext.init(null, new TrustManager[] { paramKeyStore }, null);
    Log.e("SSL", "MySSLSocketFactory---3");
  }
  
  private void injectHostname(Socket paramSocket, String paramString)
  {
    try
    {
      Field localField = InetAddress.class.getDeclaredField("hostName");
      localField.setAccessible(true);
      localField.set(paramSocket.getInetAddress(), paramString);
      return;
    }
    catch (Exception paramSocket) {}
  }
  
  public Socket createSocket()
  {
    return this.sslContext.getSocketFactory().createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    injectHostname(paramSocket, paramString);
    return this.sslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\extension\http\MySSLSocketFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */