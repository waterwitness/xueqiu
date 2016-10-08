package com.loopj.android.http;

import java.net.Socket;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.HttpVersion;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public class MySSLSocketFactory
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  SSLContext sslContext = SSLContext.getInstance("TLS");
  
  public MySSLSocketFactory(KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    paramKeyStore = new X509TrustManager()
    {
      public void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString) {}
      
      public void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString) {}
      
      public X509Certificate[] getAcceptedIssuers()
      {
        return null;
      }
    };
    this.sslContext.init(null, new TrustManager[] { paramKeyStore }, null);
  }
  
  public static org.apache.http.conn.ssl.SSLSocketFactory getFixedSocketFactory()
  {
    try
    {
      MySSLSocketFactory localMySSLSocketFactory = new MySSLSocketFactory(getKeystore());
      localMySSLSocketFactory.setHostnameVerifier(org.apache.http.conn.ssl.SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      return localMySSLSocketFactory;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return org.apache.http.conn.ssl.SSLSocketFactory.getSocketFactory();
  }
  
  public static KeyStore getKeystore()
  {
    try
    {
      localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
      localThrowable1.printStackTrace();
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        localKeyStore.load(null, null);
        return localKeyStore;
      }
      catch (Throwable localThrowable2)
      {
        KeyStore localKeyStore;
        for (;;) {}
      }
      localThrowable1 = localThrowable1;
      localKeyStore = null;
    }
    return localKeyStore;
  }
  
  /* Error */
  public static KeyStore getKeystoreOfCA(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 79
    //   4: invokestatic 84	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   7: astore_3
    //   8: new 86	java/io/BufferedInputStream
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 89	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   16: astore_1
    //   17: aload_1
    //   18: astore_0
    //   19: aload_3
    //   20: aload_1
    //   21: invokevirtual 93	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   24: astore_2
    //   25: aload_2
    //   26: astore_0
    //   27: aload_1
    //   28: invokevirtual 98	java/io/InputStream:close	()V
    //   31: invokestatic 62	java/security/KeyStore:getDefaultType	()Ljava/lang/String;
    //   34: astore_1
    //   35: aload_1
    //   36: invokestatic 65	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   39: astore_1
    //   40: aload_1
    //   41: aconst_null
    //   42: aconst_null
    //   43: invokevirtual 69	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   46: aload_1
    //   47: ldc 100
    //   49: aload_0
    //   50: invokevirtual 104	java/security/KeyStore:setCertificateEntry	(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    //   53: aload_1
    //   54: areturn
    //   55: astore_1
    //   56: aload_1
    //   57: invokevirtual 105	java/io/IOException:printStackTrace	()V
    //   60: goto -29 -> 31
    //   63: astore_2
    //   64: aconst_null
    //   65: astore_1
    //   66: aload_1
    //   67: astore_0
    //   68: aload_2
    //   69: invokevirtual 106	java/security/cert/CertificateException:printStackTrace	()V
    //   72: aload_1
    //   73: ifnull +7 -> 80
    //   76: aload_1
    //   77: invokevirtual 98	java/io/InputStream:close	()V
    //   80: aconst_null
    //   81: astore_0
    //   82: goto -51 -> 31
    //   85: astore_0
    //   86: aload_0
    //   87: invokevirtual 105	java/io/IOException:printStackTrace	()V
    //   90: aconst_null
    //   91: astore_0
    //   92: goto -61 -> 31
    //   95: astore_0
    //   96: aload_2
    //   97: astore_1
    //   98: aload_1
    //   99: ifnull +7 -> 106
    //   102: aload_1
    //   103: invokevirtual 98	java/io/InputStream:close	()V
    //   106: aload_0
    //   107: athrow
    //   108: astore_1
    //   109: aload_1
    //   110: invokevirtual 105	java/io/IOException:printStackTrace	()V
    //   113: goto -7 -> 106
    //   116: astore_1
    //   117: aconst_null
    //   118: astore_0
    //   119: aload_1
    //   120: invokevirtual 107	java/lang/Exception:printStackTrace	()V
    //   123: aload_0
    //   124: areturn
    //   125: astore_2
    //   126: aload_1
    //   127: astore_0
    //   128: aload_2
    //   129: astore_1
    //   130: goto -11 -> 119
    //   133: astore_2
    //   134: aload_0
    //   135: astore_1
    //   136: aload_2
    //   137: astore_0
    //   138: goto -40 -> 98
    //   141: astore_2
    //   142: goto -76 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	145	0	paramInputStream	java.io.InputStream
    //   16	38	1	localObject1	Object
    //   55	2	1	localIOException1	java.io.IOException
    //   65	38	1	localCertificateException1	java.security.cert.CertificateException
    //   108	2	1	localIOException2	java.io.IOException
    //   116	11	1	localException1	Exception
    //   129	7	1	localObject2	Object
    //   1	25	2	localCertificate	java.security.cert.Certificate
    //   63	34	2	localCertificateException2	java.security.cert.CertificateException
    //   125	4	2	localException2	Exception
    //   133	4	2	localObject3	Object
    //   141	1	2	localCertificateException3	java.security.cert.CertificateException
    //   7	13	3	localCertificateFactory	java.security.cert.CertificateFactory
    // Exception table:
    //   from	to	target	type
    //   27	31	55	java/io/IOException
    //   2	17	63	java/security/cert/CertificateException
    //   76	80	85	java/io/IOException
    //   2	17	95	finally
    //   102	106	108	java/io/IOException
    //   35	40	116	java/lang/Exception
    //   40	53	125	java/lang/Exception
    //   19	25	133	finally
    //   68	72	133	finally
    //   19	25	141	java/security/cert/CertificateException
  }
  
  public static DefaultHttpClient getNewHttpClient(KeyStore paramKeyStore)
  {
    try
    {
      Object localObject = new MySSLSocketFactory(paramKeyStore);
      paramKeyStore = new SchemeRegistry();
      paramKeyStore.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      paramKeyStore.register(new Scheme("https", (SocketFactory)localObject, 443));
      localObject = new BasicHttpParams();
      HttpProtocolParams.setVersion((HttpParams)localObject, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset((HttpParams)localObject, "UTF-8");
      paramKeyStore = new DefaultHttpClient(new ThreadSafeClientConnManager((HttpParams)localObject, paramKeyStore), (HttpParams)localObject);
      return paramKeyStore;
    }
    catch (Exception paramKeyStore) {}
    return new DefaultHttpClient();
  }
  
  public Socket createSocket()
  {
    return this.sslContext.getSocketFactory().createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return this.sslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
  
  public void fixHttpsURLConnection()
  {
    HttpsURLConnection.setDefaultSSLSocketFactory(this.sslContext.getSocketFactory());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\MySSLSocketFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */