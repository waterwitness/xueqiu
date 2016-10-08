package org.apache.http.conn.ssl;

import java.io.IOException;
import java.io.InputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.security.auth.x500.X500Principal;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.conn.util.PublicSuffixMatcherLoader;
import org.apache.http.protocol.HttpContext;
import org.apache.http.ssl.SSLContexts;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

@ThreadSafe
public class SSLConnectionSocketFactory
  implements LayeredConnectionSocketFactory
{
  @Deprecated
  public static final X509HostnameVerifier ALLOW_ALL_HOSTNAME_VERIFIER = AllowAllHostnameVerifier.INSTANCE;
  @Deprecated
  public static final X509HostnameVerifier BROWSER_COMPATIBLE_HOSTNAME_VERIFIER = BrowserCompatHostnameVerifier.INSTANCE;
  public static final String SSL = "SSL";
  public static final String SSLV2 = "SSLv2";
  @Deprecated
  public static final X509HostnameVerifier STRICT_HOSTNAME_VERIFIER = StrictHostnameVerifier.INSTANCE;
  public static final String TLS = "TLS";
  private final HostnameVerifier hostnameVerifier;
  private final Log log = LogFactory.getLog(getClass());
  private final SSLSocketFactory socketfactory;
  private final String[] supportedCipherSuites;
  private final String[] supportedProtocols;
  
  public SSLConnectionSocketFactory(SSLContext paramSSLContext)
  {
    this(paramSSLContext, getDefaultHostnameVerifier());
  }
  
  public SSLConnectionSocketFactory(SSLContext paramSSLContext, HostnameVerifier paramHostnameVerifier)
  {
    this(((SSLContext)Args.notNull(paramSSLContext, "SSL context")).getSocketFactory(), null, null, paramHostnameVerifier);
  }
  
  @Deprecated
  public SSLConnectionSocketFactory(SSLContext paramSSLContext, X509HostnameVerifier paramX509HostnameVerifier)
  {
    this(((SSLContext)Args.notNull(paramSSLContext, "SSL context")).getSocketFactory(), null, null, paramX509HostnameVerifier);
  }
  
  public SSLConnectionSocketFactory(SSLContext paramSSLContext, String[] paramArrayOfString1, String[] paramArrayOfString2, HostnameVerifier paramHostnameVerifier)
  {
    this(((SSLContext)Args.notNull(paramSSLContext, "SSL context")).getSocketFactory(), paramArrayOfString1, paramArrayOfString2, paramHostnameVerifier);
  }
  
  @Deprecated
  public SSLConnectionSocketFactory(SSLContext paramSSLContext, String[] paramArrayOfString1, String[] paramArrayOfString2, X509HostnameVerifier paramX509HostnameVerifier)
  {
    this(((SSLContext)Args.notNull(paramSSLContext, "SSL context")).getSocketFactory(), paramArrayOfString1, paramArrayOfString2, paramX509HostnameVerifier);
  }
  
  public SSLConnectionSocketFactory(SSLSocketFactory paramSSLSocketFactory, HostnameVerifier paramHostnameVerifier)
  {
    this(paramSSLSocketFactory, null, null, paramHostnameVerifier);
  }
  
  @Deprecated
  public SSLConnectionSocketFactory(SSLSocketFactory paramSSLSocketFactory, X509HostnameVerifier paramX509HostnameVerifier)
  {
    this(paramSSLSocketFactory, null, null, paramX509HostnameVerifier);
  }
  
  public SSLConnectionSocketFactory(SSLSocketFactory paramSSLSocketFactory, String[] paramArrayOfString1, String[] paramArrayOfString2, HostnameVerifier paramHostnameVerifier)
  {
    this.socketfactory = ((SSLSocketFactory)Args.notNull(paramSSLSocketFactory, "SSL socket factory"));
    this.supportedProtocols = paramArrayOfString1;
    this.supportedCipherSuites = paramArrayOfString2;
    if (paramHostnameVerifier != null) {}
    for (;;)
    {
      this.hostnameVerifier = paramHostnameVerifier;
      return;
      paramHostnameVerifier = getDefaultHostnameVerifier();
    }
  }
  
  @Deprecated
  public SSLConnectionSocketFactory(SSLSocketFactory paramSSLSocketFactory, String[] paramArrayOfString1, String[] paramArrayOfString2, X509HostnameVerifier paramX509HostnameVerifier)
  {
    this(paramSSLSocketFactory, paramArrayOfString1, paramArrayOfString2, paramX509HostnameVerifier);
  }
  
  public static HostnameVerifier getDefaultHostnameVerifier()
  {
    return new DefaultHostnameVerifier(PublicSuffixMatcherLoader.getDefault());
  }
  
  public static SSLConnectionSocketFactory getSocketFactory()
  {
    return new SSLConnectionSocketFactory(SSLContexts.createDefault(), getDefaultHostnameVerifier());
  }
  
  public static SSLConnectionSocketFactory getSystemSocketFactory()
  {
    return new SSLConnectionSocketFactory((SSLSocketFactory)SSLSocketFactory.getDefault(), split(System.getProperty("https.protocols")), split(System.getProperty("https.cipherSuites")), getDefaultHostnameVerifier());
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
    for (;;)
    {
      try
      {
        localObject2 = paramSSLSocket.getSession();
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          paramSSLSocket.getInputStream().available();
          localObject2 = paramSSLSocket.getSession();
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            paramSSLSocket.startHandshake();
            localObject1 = paramSSLSocket.getSession();
            if (localObject1 == null) {
              throw new SSLHandshakeException("SSL session not available");
            }
          }
        }
      }
      catch (IOException paramString)
      {
        try
        {
          Object localObject2;
          paramSSLSocket.close();
          throw paramString;
          Object localObject4;
          if (this.log.isDebugEnabled())
          {
            this.log.debug("Secure session established");
            this.log.debug(" negotiated protocol: " + ((SSLSession)localObject1).getProtocol());
            this.log.debug(" negotiated cipher suite: " + ((SSLSession)localObject1).getCipherSuite());
            try
            {
              localObject2 = (X509Certificate)localObject1.getPeerCertificates()[0];
              localObject3 = ((X509Certificate)localObject2).getSubjectX500Principal();
              this.log.debug(" peer principal: " + ((X500Principal)localObject3).toString());
              localObject4 = ((X509Certificate)localObject2).getSubjectAlternativeNames();
              if (localObject4 == null) {
                continue;
              }
              localObject3 = new ArrayList();
              localObject4 = ((Collection)localObject4).iterator();
              if (!((Iterator)localObject4).hasNext()) {
                continue;
              }
              List localList = (List)((Iterator)localObject4).next();
              if (localList.isEmpty()) {
                continue;
              }
              ((List)localObject3).add((String)localList.get(1));
              continue;
              if (this.hostnameVerifier.verify(paramString, (SSLSession)localObject1)) {
                continue;
              }
            }
            catch (Exception localException) {}
          }
          Object localObject1 = ((X509Certificate)localObject1.getPeerCertificates()[0]).getSubjectX500Principal();
          throw new SSLPeerUnverifiedException("Host name '" + paramString + "' does not match the certificate subject provided by the peer (" + ((X500Principal)localObject1).toString() + ")");
          this.log.debug(" peer alternative names: " + localObject3);
          Object localObject3 = localException.getIssuerX500Principal();
          this.log.debug(" issuer principal: " + ((X500Principal)localObject3).toString());
          localObject3 = localException.getIssuerAlternativeNames();
          if (localObject3 == null) {
            continue;
          }
          ArrayList localArrayList = new ArrayList();
          localObject3 = ((Collection)localObject3).iterator();
          if (((Iterator)localObject3).hasNext())
          {
            localObject4 = (List)((Iterator)localObject3).next();
            if (((List)localObject4).isEmpty()) {
              continue;
            }
            localArrayList.add((String)((List)localObject4).get(1));
            continue;
          }
          this.log.debug(" issuer alternative names: " + localArrayList);
          continue;
        }
        catch (Exception paramSSLSocket)
        {
          continue;
        }
        return;
      }
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
      if (paramInt > 0) {}
      try
      {
        if (paramSocket.getSoTimeout() == 0) {
          paramSocket.setSoTimeout(paramInt);
        }
        if (this.log.isDebugEnabled()) {
          this.log.debug("Connecting socket to " + paramInetSocketAddress1 + " with timeout " + paramInt);
        }
        paramSocket.connect(paramInetSocketAddress1, paramInt);
        if (!(paramSocket instanceof SSLSocket)) {
          break;
        }
        paramInetSocketAddress1 = (SSLSocket)paramSocket;
        this.log.debug("Starting handshake");
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
  
  public Socket createLayeredSocket(Socket paramSocket, String paramString, int paramInt, HttpContext paramHttpContext)
  {
    paramSocket = (SSLSocket)this.socketfactory.createSocket(paramSocket, paramString, paramInt, true);
    if (this.supportedProtocols != null) {
      paramSocket.setEnabledProtocols(this.supportedProtocols);
    }
    for (;;)
    {
      if (this.supportedCipherSuites != null) {
        paramSocket.setEnabledCipherSuites(this.supportedCipherSuites);
      }
      if (this.log.isDebugEnabled())
      {
        this.log.debug("Enabled protocols: " + Arrays.asList(paramSocket.getEnabledProtocols()));
        this.log.debug("Enabled cipher suites:" + Arrays.asList(paramSocket.getEnabledCipherSuites()));
      }
      prepareSocket(paramSocket);
      this.log.debug("Starting handshake");
      paramSocket.startHandshake();
      verifyHostname(paramSocket, paramString);
      return paramSocket;
      paramHttpContext = paramSocket.getEnabledProtocols();
      ArrayList localArrayList = new ArrayList(paramHttpContext.length);
      int i = paramHttpContext.length;
      paramInt = 0;
      while (paramInt < i)
      {
        Object localObject = paramHttpContext[paramInt];
        if (!((String)localObject).startsWith("SSL")) {
          localArrayList.add(localObject);
        }
        paramInt += 1;
      }
      if (!localArrayList.isEmpty()) {
        paramSocket.setEnabledProtocols((String[])localArrayList.toArray(new String[localArrayList.size()]));
      }
    }
  }
  
  public Socket createSocket(HttpContext paramHttpContext)
  {
    return SocketFactory.getDefault().createSocket();
  }
  
  protected void prepareSocket(SSLSocket paramSSLSocket) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ssl\SSLConnectionSocketFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */