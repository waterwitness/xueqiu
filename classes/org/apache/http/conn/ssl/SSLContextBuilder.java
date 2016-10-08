package org.apache.http.conn.ssl;

import java.security.KeyStore;
import java.security.SecureRandom;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.annotation.NotThreadSafe;

@Deprecated
@NotThreadSafe
public class SSLContextBuilder
{
  static final String SSL = "SSL";
  static final String TLS = "TLS";
  private Set<KeyManager> keymanagers = new LinkedHashSet();
  private String protocol;
  private SecureRandom secureRandom;
  private Set<TrustManager> trustmanagers = new LinkedHashSet();
  
  public SSLContext build()
  {
    Object localObject;
    SSLContext localSSLContext;
    if (this.protocol != null)
    {
      localObject = this.protocol;
      localSSLContext = SSLContext.getInstance((String)localObject);
      if (this.keymanagers.isEmpty()) {
        break label109;
      }
      localObject = (KeyManager[])this.keymanagers.toArray(new KeyManager[this.keymanagers.size()]);
      label54:
      if (this.trustmanagers.isEmpty()) {
        break label114;
      }
    }
    label109:
    label114:
    for (TrustManager[] arrayOfTrustManager = (TrustManager[])this.trustmanagers.toArray(new TrustManager[this.trustmanagers.size()]);; arrayOfTrustManager = null)
    {
      localSSLContext.init((KeyManager[])localObject, arrayOfTrustManager, this.secureRandom);
      return localSSLContext;
      localObject = "TLS";
      break;
      localObject = null;
      break label54;
    }
  }
  
  public SSLContextBuilder loadKeyMaterial(KeyStore paramKeyStore, char[] paramArrayOfChar)
  {
    loadKeyMaterial(paramKeyStore, paramArrayOfChar, null);
    return this;
  }
  
  public SSLContextBuilder loadKeyMaterial(KeyStore paramKeyStore, char[] paramArrayOfChar, PrivateKeyStrategy paramPrivateKeyStrategy)
  {
    int j = 0;
    KeyManagerFactory localKeyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
    localKeyManagerFactory.init(paramKeyStore, paramArrayOfChar);
    paramKeyStore = localKeyManagerFactory.getKeyManagers();
    if (paramKeyStore != null)
    {
      if (paramPrivateKeyStrategy != null)
      {
        i = 0;
        while (i < paramKeyStore.length)
        {
          paramArrayOfChar = paramKeyStore[i];
          if ((paramArrayOfChar instanceof X509KeyManager)) {
            paramKeyStore[i] = new SSLContextBuilder.KeyManagerDelegate((X509KeyManager)paramArrayOfChar, paramPrivateKeyStrategy);
          }
          i += 1;
        }
      }
      int k = paramKeyStore.length;
      int i = j;
      while (i < k)
      {
        paramArrayOfChar = paramKeyStore[i];
        this.keymanagers.add(paramArrayOfChar);
        i += 1;
      }
    }
    return this;
  }
  
  public SSLContextBuilder loadTrustMaterial(KeyStore paramKeyStore)
  {
    return loadTrustMaterial(paramKeyStore, null);
  }
  
  public SSLContextBuilder loadTrustMaterial(KeyStore paramKeyStore, TrustStrategy paramTrustStrategy)
  {
    int j = 0;
    TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
    localTrustManagerFactory.init(paramKeyStore);
    paramKeyStore = localTrustManagerFactory.getTrustManagers();
    if (paramKeyStore != null)
    {
      if (paramTrustStrategy != null)
      {
        i = 0;
        while (i < paramKeyStore.length)
        {
          localTrustManagerFactory = paramKeyStore[i];
          if ((localTrustManagerFactory instanceof X509TrustManager)) {
            paramKeyStore[i] = new SSLContextBuilder.TrustManagerDelegate((X509TrustManager)localTrustManagerFactory, paramTrustStrategy);
          }
          i += 1;
        }
      }
      int k = paramKeyStore.length;
      int i = j;
      while (i < k)
      {
        paramTrustStrategy = paramKeyStore[i];
        this.trustmanagers.add(paramTrustStrategy);
        i += 1;
      }
    }
    return this;
  }
  
  public SSLContextBuilder setSecureRandom(SecureRandom paramSecureRandom)
  {
    this.secureRandom = paramSecureRandom;
    return this;
  }
  
  public SSLContextBuilder useProtocol(String paramString)
  {
    this.protocol = paramString;
    return this;
  }
  
  public SSLContextBuilder useSSL()
  {
    this.protocol = "SSL";
    return this;
  }
  
  public SSLContextBuilder useTLS()
  {
    this.protocol = "TLS";
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ssl\SSLContextBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */