package org.apache.http.ssl;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URL;
import java.security.KeyStore;
import java.security.SecureRandom;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509ExtendedKeyManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;

@NotThreadSafe
public class SSLContextBuilder
{
  static final String TLS = "TLS";
  private final Set<KeyManager> keymanagers = new LinkedHashSet();
  private String protocol;
  private SecureRandom secureRandom;
  private final Set<TrustManager> trustmanagers = new LinkedHashSet();
  
  public static SSLContextBuilder create()
  {
    return new SSLContextBuilder();
  }
  
  public SSLContext build()
  {
    if (this.protocol != null) {}
    for (Object localObject = this.protocol;; localObject = "TLS")
    {
      localObject = SSLContext.getInstance((String)localObject);
      initSSLContext((SSLContext)localObject, this.keymanagers, this.trustmanagers, this.secureRandom);
      return (SSLContext)localObject;
    }
  }
  
  protected void initSSLContext(SSLContext paramSSLContext, Collection<KeyManager> paramCollection, Collection<TrustManager> paramCollection1, SecureRandom paramSecureRandom)
  {
    if (!paramCollection.isEmpty())
    {
      paramCollection = (KeyManager[])paramCollection.toArray(new KeyManager[paramCollection.size()]);
      if (paramCollection1.isEmpty()) {
        break label70;
      }
    }
    label70:
    for (paramCollection1 = (TrustManager[])paramCollection1.toArray(new TrustManager[paramCollection1.size()]);; paramCollection1 = null)
    {
      paramSSLContext.init(paramCollection, paramCollection1, paramSecureRandom);
      return;
      paramCollection = null;
      break;
    }
  }
  
  public SSLContextBuilder loadKeyMaterial(File paramFile, char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    return loadKeyMaterial(paramFile, paramArrayOfChar1, paramArrayOfChar2, null);
  }
  
  public SSLContextBuilder loadKeyMaterial(File paramFile, char[] paramArrayOfChar1, char[] paramArrayOfChar2, PrivateKeyStrategy paramPrivateKeyStrategy)
  {
    Args.notNull(paramFile, "Keystore file");
    KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
    paramFile = new FileInputStream(paramFile);
    try
    {
      localKeyStore.load(paramFile, paramArrayOfChar1);
      return loadKeyMaterial(localKeyStore, paramArrayOfChar2, paramPrivateKeyStrategy);
    }
    finally
    {
      paramFile.close();
    }
  }
  
  public SSLContextBuilder loadKeyMaterial(URL paramURL, char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    return loadKeyMaterial(paramURL, paramArrayOfChar1, paramArrayOfChar2, null);
  }
  
  public SSLContextBuilder loadKeyMaterial(URL paramURL, char[] paramArrayOfChar1, char[] paramArrayOfChar2, PrivateKeyStrategy paramPrivateKeyStrategy)
  {
    Args.notNull(paramURL, "Keystore URL");
    KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
    paramURL = paramURL.openStream();
    try
    {
      localKeyStore.load(paramURL, paramArrayOfChar1);
      return loadKeyMaterial(localKeyStore, paramArrayOfChar2, paramPrivateKeyStrategy);
    }
    finally
    {
      paramURL.close();
    }
  }
  
  public SSLContextBuilder loadKeyMaterial(KeyStore paramKeyStore, char[] paramArrayOfChar)
  {
    return loadKeyMaterial(paramKeyStore, paramArrayOfChar, null);
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
          if ((paramArrayOfChar instanceof X509ExtendedKeyManager)) {
            paramKeyStore[i] = new SSLContextBuilder.KeyManagerDelegate((X509ExtendedKeyManager)paramArrayOfChar, paramPrivateKeyStrategy);
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
  
  public SSLContextBuilder loadTrustMaterial(File paramFile)
  {
    return loadTrustMaterial(paramFile, null);
  }
  
  public SSLContextBuilder loadTrustMaterial(File paramFile, char[] paramArrayOfChar)
  {
    return loadTrustMaterial(paramFile, paramArrayOfChar, null);
  }
  
  public SSLContextBuilder loadTrustMaterial(File paramFile, char[] paramArrayOfChar, TrustStrategy paramTrustStrategy)
  {
    Args.notNull(paramFile, "Truststore file");
    KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
    paramFile = new FileInputStream(paramFile);
    try
    {
      localKeyStore.load(paramFile, paramArrayOfChar);
      return loadTrustMaterial(localKeyStore, paramTrustStrategy);
    }
    finally
    {
      paramFile.close();
    }
  }
  
  public SSLContextBuilder loadTrustMaterial(URL paramURL, char[] paramArrayOfChar)
  {
    return loadTrustMaterial(paramURL, paramArrayOfChar, null);
  }
  
  public SSLContextBuilder loadTrustMaterial(URL paramURL, char[] paramArrayOfChar, TrustStrategy paramTrustStrategy)
  {
    Args.notNull(paramURL, "Truststore URL");
    KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
    paramURL = paramURL.openStream();
    try
    {
      localKeyStore.load(paramURL, paramArrayOfChar);
      return loadTrustMaterial(localKeyStore, paramTrustStrategy);
    }
    finally
    {
      paramURL.close();
    }
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
  
  public SSLContextBuilder loadTrustMaterial(TrustStrategy paramTrustStrategy)
  {
    return loadTrustMaterial(null, paramTrustStrategy);
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
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\ssl\SSLContextBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */