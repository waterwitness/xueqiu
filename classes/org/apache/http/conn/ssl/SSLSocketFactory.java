package org.apache.http.conn.ssl;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.KeyStore;
import java.security.SecureRandom;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import org.apache.http.HttpHost;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.HttpInetSocketAddress;
import org.apache.http.conn.scheme.HostNameResolver;
import org.apache.http.conn.scheme.LayeredSchemeSocketFactory;
import org.apache.http.conn.scheme.LayeredSocketFactory;
import org.apache.http.conn.scheme.SchemeLayeredSocketFactory;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.TextUtils;

@Deprecated
@ThreadSafe
public class SSLSocketFactory
  implements LayeredSchemeSocketFactory, LayeredSocketFactory, SchemeLayeredSocketFactory, LayeredConnectionSocketFactory
{
  public static final X509HostnameVerifier ALLOW_ALL_HOSTNAME_VERIFIER = new AllowAllHostnameVerifier();
  public static final X509HostnameVerifier BROWSER_COMPATIBLE_HOSTNAME_VERIFIER = new BrowserCompatHostnameVerifier();
  public static final String SSL = "SSL";
  public static final String SSLV2 = "SSLv2";
  public static final X509HostnameVerifier STRICT_HOSTNAME_VERIFIER = new StrictHostnameVerifier();
  public static final String TLS = "TLS";
  private volatile X509HostnameVerifier hostnameVerifier;
  private final HostNameResolver nameResolver;
  private final javax.net.ssl.SSLSocketFactory socketfactory;
  private final String[] supportedCipherSuites;
  private final String[] supportedProtocols;
  
  public SSLSocketFactory(String paramString1, KeyStore paramKeyStore1, String paramString2, KeyStore paramKeyStore2, SecureRandom paramSecureRandom, HostNameResolver paramHostNameResolver) {}
  
  public SSLSocketFactory(String paramString1, KeyStore paramKeyStore1, String paramString2, KeyStore paramKeyStore2, SecureRandom paramSecureRandom, TrustStrategy paramTrustStrategy, X509HostnameVerifier paramX509HostnameVerifier) {}
  
  public SSLSocketFactory(String paramString1, KeyStore paramKeyStore1, String paramString2, KeyStore paramKeyStore2, SecureRandom paramSecureRandom, X509HostnameVerifier paramX509HostnameVerifier) {}
  
  public SSLSocketFactory(KeyStore paramKeyStore)
  {
    this(SSLContexts.custom().loadTrustMaterial(paramKeyStore).build(), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
  }
  
  public SSLSocketFactory(KeyStore paramKeyStore, String paramString) {}
  
  public SSLSocketFactory(KeyStore paramKeyStore1, String paramString, KeyStore paramKeyStore2) {}
  
  public SSLSocketFactory(SSLContext paramSSLContext)
  {
    this(paramSSLContext, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
  }
  
  public SSLSocketFactory(SSLContext paramSSLContext, HostNameResolver paramHostNameResolver)
  {
    this.socketfactory = paramSSLContext.getSocketFactory();
    this.hostnameVerifier = BROWSER_COMPATIBLE_HOSTNAME_VERIFIER;
    this.nameResolver = paramHostNameResolver;
    this.supportedProtocols = null;
    this.supportedCipherSuites = null;
  }
  
  public SSLSocketFactory(SSLContext paramSSLContext, X509HostnameVerifier paramX509HostnameVerifier)
  {
    this(((SSLContext)Args.notNull(paramSSLContext, "SSL context")).getSocketFactory(), null, null, paramX509HostnameVerifier);
  }
  
  public SSLSocketFactory(SSLContext paramSSLContext, String[] paramArrayOfString1, String[] paramArrayOfString2, X509HostnameVerifier paramX509HostnameVerifier)
  {
    this(((SSLContext)Args.notNull(paramSSLContext, "SSL context")).getSocketFactory(), paramArrayOfString1, paramArrayOfString2, paramX509HostnameVerifier);
  }
  
  public SSLSocketFactory(javax.net.ssl.SSLSocketFactory paramSSLSocketFactory, X509HostnameVerifier paramX509HostnameVerifier)
  {
    this(paramSSLSocketFactory, null, null, paramX509HostnameVerifier);
  }
  
  public SSLSocketFactory(javax.net.ssl.SSLSocketFactory paramSSLSocketFactory, String[] paramArrayOfString1, String[] paramArrayOfString2, X509HostnameVerifier paramX509HostnameVerifier)
  {
    this.socketfactory = ((javax.net.ssl.SSLSocketFactory)Args.notNull(paramSSLSocketFactory, "SSL socket factory"));
    this.supportedProtocols = paramArrayOfString1;
    this.supportedCipherSuites = paramArrayOfString2;
    if (paramX509HostnameVerifier != null) {}
    for (;;)
    {
      this.hostnameVerifier = paramX509HostnameVerifier;
      this.nameResolver = null;
      return;
      paramX509HostnameVerifier = BROWSER_COMPATIBLE_HOSTNAME_VERIFIER;
    }
  }
  
  public SSLSocketFactory(TrustStrategy paramTrustStrategy)
  {
    this(SSLContexts.custom().loadTrustMaterial(null, paramTrustStrategy).build(), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
  }
  
  public SSLSocketFactory(TrustStrategy paramTrustStrategy, X509HostnameVerifier paramX509HostnameVerifier)
  {
    this(SSLContexts.custom().loadTrustMaterial(null, paramTrustStrategy).build(), paramX509HostnameVerifier);
  }
  
  public static SSLSocketFactory getSocketFactory()
  {
    return new SSLSocketFactory(SSLContexts.createDefault(), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
  }
  
  public static SSLSocketFactory getSystemSocketFactory()
  {
    return new SSLSocketFactory((javax.net.ssl.SSLSocketFactory)javax.net.ssl.SSLSocketFactory.getDefault(), split(System.getProperty("https.protocols")), split(System.getProperty("https.cipherSuites")), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
  }
  
  private void internalPrepareSocket(SSLSocket paramSSLSocket)
  {
    if (this.supportedProtocols != null) {
      paramSSLSocket.setEnabledProtocols(this.supportedProtocols);
    }
    if (this.supportedCipherSuites != null) {
      paramSSLSocket.setEnabledCipherSuites(this.supportedCipherSuites);
    }
    prepareSocket(paramSSLSocket);
  }
  
  private static String[] split(String paramString)
  {
    if (TextUtils.isBlank(paramString)) {
      return null;
    }
    return paramString.split(" *, *");
  }
  
  private void verifyHostname(SSLSocket paramSSLSocket, String paramString)
  {
    try
    {
      this.hostnameVerifier.verify(paramString, paramSSLSocket);
      return;
    }
    catch (IOException paramString) {}
    try
    {
      paramSSLSocket.close();
      throw paramString;
    }
    catch (Exception paramSSLSocket)
    {
      for (;;) {}
    }
  }
  
  public Socket connectSocket(int paramInt, Socket paramSocket, HttpHost paramHttpHost, InetSocketAddress paramInetSocketAddress1, InetSocketAddress paramInetSocketAddress2, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpHost, "HTTP host");
    Args.notNull(paramInetSocketAddress1, "Remote address");
    if (paramSocket != null) {}
    for (;;)
    {
      if (paramInetSocketAddress2 != null) {
        paramSocket.bind(paramInetSocketAddress2);
      }
      try
      {
        paramSocket.connect(paramInetSocketAddress1, paramInt);
        if (!(paramSocket instanceof SSLSocket)) {
          break;
        }
        paramInetSocketAddress1 = (SSLSocket)paramSocket;
        paramInetSocketAddress1.startHandshake();
        verifyHostname(paramInetSocketAddress1, paramHttpHost.getHostName());
        return paramSocket;
      }
      catch (IOException paramHttpHost) {}
      paramSocket = createSocket(paramHttpContext);
    }
    try
    {
      paramSocket.close();
      throw paramHttpHost;
      return createLayeredSocket(paramSocket, paramHttpHost.getHostName(), paramInetSocketAddress1.getPort(), paramHttpContext);
    }
    catch (IOException paramSocket)
    {
      for (;;) {}
    }
  }
  
  public Socket connectSocket(Socket paramSocket, String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2, HttpParams paramHttpParams)
  {
    InetAddress localInetAddress;
    InetSocketAddress localInetSocketAddress;
    if (this.nameResolver != null)
    {
      localInetAddress = this.nameResolver.resolve(paramString);
      localInetSocketAddress = null;
      if ((paramInetAddress != null) || (paramInt2 > 0)) {
        if (paramInt2 <= 0) {
          break label88;
        }
      }
    }
    for (;;)
    {
      localInetSocketAddress = new InetSocketAddress(paramInetAddress, paramInt2);
      return connectSocket(paramSocket, new HttpInetSocketAddress(new HttpHost(paramString, paramInt1), localInetAddress, paramInt1), localInetSocketAddress, paramHttpParams);
      localInetAddress = InetAddress.getByName(paramString);
      break;
      label88:
      paramInt2 = 0;
    }
  }
  
  public Socket connectSocket(Socket paramSocket, InetSocketAddress paramInetSocketAddress1, InetSocketAddress paramInetSocketAddress2, HttpParams paramHttpParams)
  {
    Args.notNull(paramInetSocketAddress1, "Remote address");
    Args.notNull(paramHttpParams, "HTTP parameters");
    if ((paramInetSocketAddress1 instanceof HttpInetSocketAddress)) {}
    for (HttpHost localHttpHost = ((HttpInetSocketAddress)paramInetSocketAddress1).getHttpHost();; localHttpHost = new HttpHost(paramInetSocketAddress1.getHostName(), paramInetSocketAddress1.getPort(), "https"))
    {
      int i = HttpConnectionParams.getSoTimeout(paramHttpParams);
      int j = HttpConnectionParams.getConnectionTimeout(paramHttpParams);
      paramSocket.setSoTimeout(i);
      return connectSocket(j, paramSocket, localHttpHost, paramInetSocketAddress1, paramInetSocketAddress2, null);
    }
  }
  
  public Socket createLayeredSocket(Socket paramSocket, String paramString, int paramInt, HttpParams paramHttpParams)
  {
    return createLayeredSocket(paramSocket, paramString, paramInt, null);
  }
  
  public Socket createLayeredSocket(Socket paramSocket, String paramString, int paramInt, HttpContext paramHttpContext)
  {
    paramSocket = (SSLSocket)this.socketfactory.createSocket(paramSocket, paramString, paramInt, true);
    internalPrepareSocket(paramSocket);
    paramSocket.startHandshake();
    verifyHostname(paramSocket, paramString);
    return paramSocket;
  }
  
  public Socket createLayeredSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return createLayeredSocket(paramSocket, paramString, paramInt, null);
  }
  
  public Socket createSocket()
  {
    return createSocket(null);
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return createLayeredSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
  
  public Socket createSocket(HttpParams paramHttpParams)
  {
    return createSocket(null);
  }
  
  public Socket createSocket(HttpContext paramHttpContext)
  {
    paramHttpContext = (SSLSocket)this.socketfactory.createSocket();
    internalPrepareSocket(paramHttpContext);
    return paramHttpContext;
  }
  
  public X509HostnameVerifier getHostnameVerifier()
  {
    return this.hostnameVerifier;
  }
  
  public boolean isSecure(Socket paramSocket)
  {
    Args.notNull(paramSocket, "Socket");
    Asserts.check(paramSocket instanceof SSLSocket, "Socket not created by this factory");
    if (!paramSocket.isClosed()) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Socket is closed");
      return true;
    }
  }
  
  protected void prepareSocket(SSLSocket paramSSLSocket) {}
  
  public void setHostnameVerifier(X509HostnameVerifier paramX509HostnameVerifier)
  {
    Args.notNull(paramX509HostnameVerifier, "Hostname verifier");
    this.hostnameVerifier = paramX509HostnameVerifier;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ssl\SSLSocketFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */